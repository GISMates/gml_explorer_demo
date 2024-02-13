import os
import glob
import shutil
import re
import requests
from pathlib import Path
import hashlib

from qgis.PyQt.QtCore import Qt, QSettings as qs
from qgis.core import *
from qgis.PyQt.QtWidgets import QTreeWidgetItem

from ..gml_select_layers_dialog import GMLSelectLayersDialog
from ..gml_logger_mode import GMLLoggerMode
from ..gml_to_gpkg_task import GMLToGpkgTask
from .karto_task import KartoTask
from .zip_task import ZipTask
from .active_wms_dialog import ActiveWMSDialog
from .upload_settings_dialog import UploadSettingsDialog


UPLOAD_URL = "https://www.c-geoportal.pl/gismates/gisserveropen/qgis_to_wms?forceOverride=True"
UPLOAD_SIZE_LIMIT_MB = 5
WMS_CRS_TAG = '<WMSCrsList type="QStringList">'
WMS_EXTENT_TAG = '<WMSExtent type="QStringList">'
WMS_SERVICE_TITLE_TAG = '<WMSServiceTitle type="QString">'
WMS_SERVICE_CAPABILITIES_TAG = '<WMSServiceCapabilities type="bool">true</WMSServiceCapabilities>'
CRS_2180 = QgsCoordinateReferenceSystem('EPSG:2180')


class ProjectManager:
    def __init__(self, window, iface, logger):
        self.window = window
        self.iface = iface
        self.map_canvas = iface.mapCanvas()
        self.project = QgsProject.instance()
        self.gpkg_task = GMLToGpkgTask(window)
        self.karto_task = KartoTask(window, self.project)
        self.zip_task = ZipTask(window)
        self.logger = logger
        self.select_layers_dialog = GMLSelectLayersDialog()
        self.select_layers_dialog.load_layers_button.setText('Dalej')
        self.window.upload_settings_button.clicked.connect(self.showSettings)
        self.window.active_wms_button.clicked.connect(self.showWms)
        self.karto_task.finished.connect(self.kartoTaskFinished)
        self.gpkg_task.finished.connect(self.gpkgTaskFinished)
        self.zip_task.finished.connect(self.zipTaskFinished)
        self.loadSettings()
        if not os.path.exists(os.path.join(os.path.dirname(__file__), 'qgis_server')):
            os.mkdir(os.path.join(os.path.dirname(__file__), 'qgis_server'))

    def loadSettings(self):
        settings = qs()
        wms_crs = settings.value('wms_crs')
        if wms_crs is None:
            settings.setValue('wms_crs', ['EPSG:2180'])
        wms_extent = settings.value('wms_extent')
        if wms_extent is None:
            settings.setValue('wms_extent', 'map_extent')
        wms_expose_attributes = settings.value('wms_expose_attributes')
        if wms_expose_attributes is None:
            settings.setValue('wms_expose_attributes', 'hide')

    def addLayerItem(self, layer, layers_tree):
        layer_item = QTreeWidgetItem(layers_tree)
        layer_item.setText(0, layer.name())
        layer_item.setText(1, QgsWkbTypes.geometryDisplayString(layer.geometryType()))
        layer_item.setText(2, str(layer.featureCount()))
        layer_item.setData(0, 100, layer.id())
        layer_item.setCheckState(0, Qt.Checked)

    def prepareProject(self, qgis_server=False):
        self.old_project_path = self.project.fileName()
        if self.old_project_path is not None and os.path.exists(self.old_project_path):
            self.saveProject(self.old_project_path)
        self.qgis_server = qgis_server
        if self.qgis_server:
            self.project_name = self.window.wms_name.text()
            self.project_name = 'projekt' if self.project_name.strip() == '' else self.project_name
            self.project_dir = os.path.join(os.path.dirname(__file__), 'qgis_server', self.project_name)
        else:
            self.project_dir = self.window.project_dir.text()
        if self.project_dir != '':
            if not os.path.exists(self.project_dir):
                os.mkdir(self.project_dir)
            layers_tree = self.select_layers_dialog.layers_tree
            layers_tree.clear()
            self.select_layers_dialog.select_all_box.setCheckState(2)
            for layer in self.project.mapLayers().values():
                if layer.type() == QgsMapLayerType.VectorLayer:
                    self.addLayerItem(layer, layers_tree)
            res = self.select_layers_dialog.exec()
            if res:
                self.removeEmptyGroups(self.project.layerTreeRoot())
                geopackage_file = os.path.join(self.project_dir, 'data.gpkg')
                svg_paths = self.prepareSymbols()
                self.removeUnusedSymbols(svg_paths)
                for gpkg_file in glob.iglob(f'{self.project_dir}/*.gpkg'):
                    try:
                        os.remove(gpkg_file)
                    except:
                        pass
                self.packLayers(geopackage_file)
        else:
            self.logger.logMessage("Wizualizacja GML", "Należy wskazać ścieżkę zapisu projektu", Qgis.Info, GMLLoggerMode.quiet)

    def removeEmptyGroups(self, root_item):
        try:
            for item in root_item.children():
                if item.nodeType() == 0:
                    if len(item.children()) > 0:
                        self.removeEmptyGroups(item)
                    else:
                        root_item.removeChildNode(item)
            if root_item.nodeType() == 0:
                if len(root_item.children()) == 0:
                    self.removeEmptyGroups(project.layerTreeRoot())
        except:
            self.logger.logMessage("Wizualizacja GML", "Usunięto puste grupy warstw", Qgis.Info, GMLLoggerMode.quiet)

    def prepareSymbols(self):
        layers_tree_root = self.select_layers_dialog.layers_tree.invisibleRootItem()
        used_svg_paths = []
        for i in range(layers_tree_root.childCount()):
            tree_layer = layers_tree_root.child(i)
            layer_type = tree_layer.text(1)
            if tree_layer.checkState(0) == Qt.Checked and layer_type != 'No geometry':
                layer_name = tree_layer.text(0)
                layer_id = tree_layer.data(0, 100)
                layer = self.project.mapLayer(layer_id)
                style_path = os.path.join(self.project_dir, '%s.qml' % layer_id)
                layer.saveNamedStyle(style_path)
                style_file = open(style_path, "rt")
                style_data = style_file.read()
                svg_paths = re.findall('"(.[^"]*)(\\\\|/.*\\.svg)"', style_data)
                for svg_path in svg_paths:
                    svg_uml_path = '%s%s' % (svg_path[0], svg_path[1])
                    svg_wms_path = '%s%s' % (self.project_dir, svg_path[1])
                    svg_norm_path = os.path.normpath(svg_uml_path)
                    if svg_wms_path not in used_svg_paths:
                        used_svg_paths.append(svg_wms_path)
                    if os.path.exists(svg_norm_path) and not os.path.samefile(os.path.dirname(svg_norm_path), self.project_dir):
                        shutil.copy(svg_norm_path, self.project_dir)
                    style_data = style_data.replace(svg_uml_path, svg_wms_path)
                style_file.close()
                style_file = open(style_path, "wt")
                style_file.write(style_data)
                style_file.close()
                layer.loadNamedStyle(style_path, True)
                os.remove(style_path)
        return used_svg_paths

    def removeUnusedSymbols(self, used_svg_paths):
        for svg_file in glob.iglob(f'{self.project_dir}/*.svg'):
            svg_normpath = os.path.normpath(svg_file)
            path_unused = True
            for used_svg_path in used_svg_paths:
                if os.path.samefile(svg_normpath, used_svg_path):
                    path_unused = False
            if path_unused:
                os.remove(svg_normpath)

    def packLayers(self, geopackage_file):
        while os.path.exists(geopackage_file):
            try:
                os.remove(geopackage_file)
            except:
                geopackage_file = geopackage_file.replace('.gpkg', 'v.gpkg')
        self.save_geopackage_file = geopackage_file
        selected_layers = []
        karto_layers = []
        layers_tree_root = self.select_layers_dialog.layers_tree.invisibleRootItem()
        for i in range(layers_tree_root.childCount()):
            tree_layer = layers_tree_root.child(i)
            layer = self.project.mapLayer(tree_layer.data(0, 100))
            if tree_layer.checkState(0) == Qt.Checked:
                if layer.name() in ('GES_PunktOOkreslonejWysokosci_punkt', 'GES_Rzedna_punkt', ):
                    karto_layers.append(layer)
                if layer.name() in ('OT_Skarpa_powierzchnia', 'BDZ_BudowlaZiemna_powierzchnia'):
                    karto_layers.append(layer)
                selected_layers.append(layer)
            else:
                self.project.removeMapLayer(layer)
        if self.qgis_server:
            self.karto_task.karto_layers = karto_layers
            self.karto_task.selected_layers = selected_layers
            self.karto_task.progress_screen.showProgress('generowanie KARTO...')
            self.karto_task.start()
        else:
            self.gpkg_task.gml_layers = selected_layers
            self.gpkg_task.geopackage_filepath = self.save_geopackage_file
            self.gpkg_task.progress_screen.showProgress('zapis do GPKG...')
            self.gpkg_task.start()

    def kartoTaskFinished(self):
        self.karto_task.progress_screen.hideProgress()
        if self.karto_task.error:
            self.logger.logMessage("Wizualizacja GML", str(self.karto_task.error), Qgis.Critical, GMLLoggerMode.loud)
        elif self.karto_task.terminated:
            self.logger.logMessage("Wizualizacja GML", "Przerwane przez użytkownika", Qgis.Critical, GMLLoggerMode.loud)
        else:
            for data in self.karto_task.karto_data:
                karto_layer = data[2]
                if karto_layer is not None and karto_layer.featureCount() > 0:
                    layer = data[0]
                    layer_style_suffix = data[1]
                    karto_style_name = data[3]
                    new_gml = data[4]
                    if new_gml:
                        layer_style_file = os.path.join(Path(__file__).parents[1], "styles", "new", "%s_%s.qml" % (layer.name(), layer_style_suffix))
                        karto_style_file = os.path.join(Path(__file__).parents[1], "styles", "new", "%s.qml" % karto_style_name)
                    else:
                        layer_style_file = os.path.join(Path(__file__).parents[1], "styles", "old", "%s_%s.qml" % (layer.name(), layer_style_suffix))
                        karto_style_file = os.path.join(Path(__file__).parents[1], "styles", "old", "%s.qml" % karto_style_name)
                    layer.loadNamedStyle(layer_style_file, True, QgsMapLayer.Symbology | QgsMapLayer.Labeling)
                    layer.triggerRepaint()
                    karto_layer.loadNamedStyle(karto_style_file, False, QgsMapLayer.Symbology)
                    self.iface.setActiveLayer(layer)
                    self.project.addMapLayer(karto_layer)
                    self.karto_task.selected_layers.append(karto_layer)
            self.gpkg_task.gml_layers = self.karto_task.selected_layers
            self.gpkg_task.geopackage_filepath = self.save_geopackage_file
            self.gpkg_task.progress_screen.showProgress('zapis do GPKG...')
            self.gpkg_task.start()

    def gpkgTaskFinished(self):
        self.gpkg_task.progress_screen.hideProgress()
        if self.gpkg_task.error:
            self.logger.logMessage("Wizualizacja GML", str(self.gpkg_task.error), Qgis.Critical, GMLLoggerMode.loud)
        elif self.gpkg_task.terminated:
            self.logger.logMessage("Wizualizacja GML", "Przerwane przez użytkownika", Qgis.Critical, GMLLoggerMode.loud)
        else:
            if self.qgis_server:
                settings = qs()
                wms_crs_setting = settings.value('wms_crs')
                wms_extent_setting = settings.value('wms_extent')
                wms_expose_attributes = settings.value('wms_expose_attributes')
                wms_crs_tag = self.setWMSCrs(wms_crs_setting)
                wms_extent_tag = self.setWMSExtent(wms_extent_setting)
                wms_service_title_tag = '%s%s</WMSServiceTitle>' % (WMS_SERVICE_TITLE_TAG, self.project_name)
                self.changeDataSource(self.gpkg_task.gml_layers)
                qgz_project_file = os.path.join(self.project_dir, 'projekt.qgz')
                qgs_project_file = os.path.join(self.project_dir, 'projekt.qgs')
                self.saveProject(qgs_project_file)
                with open(qgs_project_file, "rt") as project_file:
                    project_data = project_file.read()
                    if wms_expose_attributes == 'hide':
                        project_data = re.sub('(configurationFlags=")([a-zA-Z]*)"', r'\1%s"' % 'HideFromWms',
                                              project_data)
                    else:
                        project_data = re.sub('(configurationFlags=")([a-zA-Z]*)"', r'\1%s"' % 'None', project_data)
                    project_data = self.removeTag('WMSCrsList', project_data)
                    project_data = self.removeTag('WMSExtent', project_data)
                    project_data = self.removeTag('WMSServiceTitle', project_data)
                    project_data = self.removeTag('WMSServiceCapabilities', project_data)
                    project_data = re.sub('(<properties>)', r'\1\n%s' % wms_crs_tag, project_data)
                    project_data = re.sub('(<properties>)', r'\1\n%s' % wms_extent_tag, project_data)
                    project_data = re.sub('(<properties>)', r'\1\n%s' % wms_service_title_tag, project_data)
                    project_data = re.sub('(<properties>)', r'\1\n%s' % WMS_SERVICE_CAPABILITIES_TAG, project_data)
                with open(qgs_project_file, "wt") as project_file:
                    project_file.write(project_data)
                self.project.read(qgs_project_file)
                self.saveProject(qgz_project_file)
                os.remove(qgs_project_file)
                self.zip_task.progress_screen.showProgress('Pakowanie projektu...')
                self.zip_task.project_dir = self.project_dir
                self.zip_task.project_name = self.project_name
                self.zip_task.start()
            else:
                self.changeDataSource(self.gpkg_task.gml_layers)
                self.saveProject(os.path.join(self.project_dir, 'projekt.qgz'))
                self.logger.logMessage("Wizualizacja GML", f"Projekt zapisany w katalogu {self.project_dir}", Qgis.Success, GMLLoggerMode.loud)
            if self.old_project_path is not None and os.path.exists(self.old_project_path):
                self.project.read(self.old_project_path)

    def setWMSCrs(self, wms_crs_setting):
        wms_crs_tag = WMS_CRS_TAG
        for crs in wms_crs_setting:
            wms_crs_tag += '<value>%s</value>' % crs
        wms_crs_tag += '</WMSCrsList>'
        return wms_crs_tag

    def setWMSExtent(self, wms_extent_setting):
        wms_extent_tag = WMS_EXTENT_TAG
        if wms_extent_setting == 'map_extent':
            wms_extent = self.map_canvas.extent()
        elif wms_extent_setting == 'layers_extent':
            layer_extent_geoms = []
            for layer in self.project.mapLayers().values():
                if layer.isSpatial():
                    layer_extent = QgsGeometry.fromRect(layer.extent())
                    tr = QgsCoordinateTransform(layer.sourceCrs(), CRS_2180, self.project)
                    layer_extent.transform(tr)
                    layer_extent_geoms.append(layer_extent)
            wms_extent_geom = QgsGeometry().unaryUnion(layer_extent_geoms)
            wms_extent = wms_extent_geom.boundingBox()
        wms_extent_tag += '<value>%s</value>' % wms_extent.xMinimum()
        wms_extent_tag += '<value>%s</value>' % wms_extent.yMinimum()
        wms_extent_tag += '<value>%s</value>' % wms_extent.xMaximum()
        wms_extent_tag += '<value>%s</value>' % wms_extent.yMaximum()
        wms_extent_tag += '</WMSExtent>'
        return wms_extent_tag

    def removeTag(self, tag_name, project_data):
        return re.sub('(<' + tag_name + '(.|\\n)*?</' + tag_name + '>\\n\\s*)', '', project_data)

    def changeDataSource(self, layers):
        attribute_layers = []
        for layer in layers:
            uri = '%s|layername=%s' % (self.save_geopackage_file, layer.name())
            layer.setDataSource(uri, layer.name(), 'ogr')

    def saveProject(self, project_file):
        self.project.setFileName(project_file)
        self.project.write()

    def zipTaskFinished(self):
        self.zip_task.progress_screen.hideProgress()
        if self.zip_task.error:
            self.logger.logMessage("Wizualizacja GML", str(self.zip_task.error), Qgis.Critical, GMLLoggerMode.loud)
        elif self.zip_task.terminated:
            self.logger.logMessage("Wizualizacja GML", "Przerwane przez użytkownika", Qgis.Critical, GMLLoggerMode.loud)
        else:
            self.sendProjectToServer()

    def sendProjectToServer(self):
        zip_name = f'{self.project_name}.zip'
        payload = {}
        zipped_project_binary = open(f'{self.project_dir}.zip', 'rb')
        files = {'qgis_file': (zip_name, zipped_project_binary, 'application/zip')}
        token = int(hashlib.sha256(self.window.help_label.text().encode('utf-8')).hexdigest(), 16) % 10**8
        headers = {
            'Authorization': 'Bearer %s' % token,
            'x-api-key': '0d7c5c5f-768c-4d98-8900-13aadaa21937'
        }
        response = requests.request("POST", UPLOAD_URL, headers=headers, data=payload, files=files)
        response_json = response.json()
        if response_json.get('status') == 'OK':
            self.logger.logMessage("Wizualizacja GML", response.text, Qgis.Success, GMLLoggerMode.loud)
            wms_url = response_json.get('url')
            active_wms = qs().value('active_wms')
            if active_wms is None:
                active_wms = {self.project_name: wms_url}
            else:
                active_wms[self.project_name] = wms_url
            qs().setValue('active_wms', active_wms)
        else:
            self.logger.logMessage("Wizualizacja GML", response.text, Qgis.Critical, GMLLoggerMode.loud)
        zipped_project_binary.close()

    def getToken(self):
        if qs().value('authentication_method') == 'email':
            url = 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBEqFmRB0WLH6r8R-56piwVe2D9MiYoUJI'
            email = qs().value('email')
            password = qs().value('password')
            payload = {"email": email, "password": password, "returnSecureToken": True}
            response = requests.request("POST", url, data=payload)
            return response.json().get("idToken")

    def showWms(self):
        dialog = ActiveWMSDialog(self.project, self.logger, self.window)
        dialog.show()

    def showSettings(self):
        dialog = UploadSettingsDialog()
        dialog.show()
