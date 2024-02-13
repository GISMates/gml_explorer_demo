import os
from collections import OrderedDict
import json
from owslib.wms import WebMapService
from urllib.parse import quote
from pathlib import Path
import pyperclip

from qgis.PyQt.QtCore import Qt, QSize, QSettings as qs
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QDialog, QTreeWidgetItem, QPushButton, QWidget, QHBoxLayout, QLabel, QSizePolicy, QInputDialog, QMessageBox
from qgis.PyQt import uic
from qgis.core import *

from ..gml_logger_mode import GMLLoggerMode


SHOW_LAYERS_ICON = QIcon(os.path.join(Path(__file__).parents[1], 'resources', 'show_wms_layers.png'))
REMOVE_ICON = QIcon(os.path.join(Path(__file__).parents[1], 'resources', 'remove.png'))
COPY_ICON = QIcon(os.path.join(Path(__file__).parents[1], 'resources', 'copy.png'))


class ActiveWMSDialog(QDialog):
    def __init__(self, project, logger, parent=None):
        super(ActiveWMSDialog, self).__init__(parent)
        uic.loadUi(os.path.join(Path(__file__).parents[1], "ui", "active_wms_dialog.ui"), self)
        self.project = project
        self.logger = logger
        self.fillWMSTree()
        self.wms_tree.currentItemChanged.connect(self.showWMSMetadata)
        self.metadata_tree.currentItemChanged.connect(self.showMetadataButtons)

    def fillWMSTree(self):
        self.wms_tree.clear()
        self.metadata_label.clear()
        active_wms = qs().value('active_wms')
        active_wms = {} if active_wms is None else active_wms
        for wms_name, wms_url in active_wms.items():
            wms_item = QTreeWidgetItem(self.wms_tree)
            wms_item.setData(0, 100, wms_url)
            container = QWidget()
            layout = QHBoxLayout()
            layout.setContentsMargins(1, 1, 1, 1)
            wms_label = QLabel(wms_name)
            wms_label.setObjectName('wms_label')
            wms_label.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Minimum)
            layout.addWidget(wms_label)
            container.setLayout(layout)
            self.wms_tree.setItemWidget(wms_item, 0, container)
            wms_item.setSizeHint(0, QSize(1, 28))

    def createButton(self, icon, wms_item, signal_function):
        button = QPushButton(icon, '')
        button.clicked.connect(signal_function)
        return button

    def removeItemButtons(self, widget):
        if widget is not None:
            for button in widget.findChildren(QPushButton):
                widget.layout().removeWidget(button)
                button.deleteLater()
                button = None

    def addWMSLayer(self, wms_layer_name, wms_url, all_layers=True):
        wms = WebMapService(wms_url, version='1.3.0')
        layers = ''
        styles = ''
        min_x = []
        min_y = []
        max_x = []
        max_y = []
        crs_options = []
        for name, item in wms.contents.items():
            bbox = item.boundingBoxWGS84
            min_x.append(bbox[0])
            min_y.append(bbox[1])
            max_x.append(bbox[2])
            max_y.append(bbox[3])
            crs_options.append(item.crsOptions)
        if all_layers:
            for name, metadata in wms.contents.items():
                layers += '&layers=%s' % quote(name)
                styles += '&styles'
        else:
            layers = '&layers=%s' % quote(wms_layer_name)
            styles += '&styles'
        urlWithParams = 'url={}&crs={}&format=image/png{}{}'.format(wms_url, self.project.crs().authid(), layers, styles)
        wms_layer = QgsRasterLayer(urlWithParams, wms_layer_name, 'wms')
        extent_rect = QgsRectangle(min(min_x), min(min_y), max(max_x), max(max_y))
        tr = QgsCoordinateTransform(QgsCoordinateReferenceSystem("EPSG:4326"),
                                    QgsCoordinateReferenceSystem(self.project.crs().authid()), self.project)
        extent_geom = QgsGeometry.fromRect(extent_rect)
        extent_geom.transform(tr)
        wms_layer.setExtent(extent_geom.boundingBox())
        self.project.addMapLayer(wms_layer)

    def showWMSMetadata(self, item, prev_item):
        self.metadata_tree.clear()
        if item is not None:
            if prev_item is not None:
                previous_item_widget = self.wms_tree.itemWidget(prev_item, 0)
                self.removeItemButtons(previous_item_widget)
            item_widget = self.wms_tree.itemWidget(item, 0)
            wms_name = item_widget.findChild(QLabel, 'wms_label').text()
            wms_layers_button = self.createButton(SHOW_LAYERS_ICON, item, lambda: self.addWMSLayer(wms_name, item.data(0, 100)))
            remove_service_button = self.createButton(REMOVE_ICON, item, lambda: self.removeWMS(wms_name))
            copy_address_button = self.createButton(COPY_ICON, item, lambda: self.copyWMSAddress(item.data(0, 100)))
            item_widget.layout().addWidget(wms_layers_button)
            item_widget.layout().addWidget(remove_service_button)
            item_widget.layout().addWidget(copy_address_button)
            self.metadata_label.setText('Wybrana usługa: %s' % wms_name)
            try:
                wms_url = item.data(0, 100)
                wms = WebMapService(wms_url, version='1.3.0')
                layers_group_item = QTreeWidgetItem(self.metadata_tree)
                layers_group_item.setText(0, 'Warstwy')
                parents = []
                for name, metadata in wms.contents.items():
                    if len(metadata.children) > 0 and metadata.parent.name not in parents:
                        group_item = QTreeWidgetItem(layers_group_item)
                        self.addMetaItemWidget(wms_url, group_item, metadata, name)
                        self.addChildren(wms_url, metadata, group_item, parents)
                    else:
                        if metadata.parent.name is None:
                            layer_item = QTreeWidgetItem(layers_group_item)
                            self.addMetaItemWidget(wms_url, layer_item, metadata, name)
            except Exception as e:
                error_group_item = QTreeWidgetItem(self.metadata_tree)
                error_group_item.setText(0, 'Próba odczytu WMS zakończona niepowodzeniem')
                error_item = QTreeWidgetItem(error_group_item)
                error_label = QLabel(str(e))
                error_label.setWordWrap(True)
                self.metadata_tree.setItemWidget(error_item, 0, error_label)
            self.expandAndChangeSizeHint(self.metadata_tree.invisibleRootItem())

    def removeWMS(self, wms_name):
        msg = QMessageBox()
        msg.setWindowTitle('Wizualizacja GML')
        msg.setText('Czy usunąć wybraną usługę z listy?')
        msg.setIcon(QMessageBox.Question)
        msg.setStandardButtons(QMessageBox.Yes | QMessageBox.No)
        button = msg.exec()
        if button == QMessageBox.Yes:
            active_wms = qs().value('active_wms')
            del active_wms[wms_name]
            qs().setValue('active_wms', active_wms)
            self.fillWMSTree()

    def copyWMSAddress(self, address):
        pyperclip.copy(address)
        self.logger.logMessage("Wizualizacja GML", f'Adres <b>{address}</b> został skopiowany do schowka', Qgis.Info, GMLLoggerMode.loud)

    def addMetaItemWidget(self, wms_url, item, metadata, name):
        container = QWidget()
        layout = QHBoxLayout()
        layout.setContentsMargins(1, 1, 1, 1)
        label = QLabel(name)
        label.setObjectName('metadata_label')
        label.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Minimum)
        item.setData(0, 100, wms_url)
        item.setData(0, 101, metadata.abstract)
        item.setData(0, 102, metadata.boundingBoxWGS84)
        item.setData(0, 103, metadata.crsOptions)
        layout.addWidget(label)
        container.setLayout(layout)
        self.metadata_tree.setItemWidget(item, 0, container)

    def addChildren(self, wms_url, parent, parent_item, parents):
        if len(parent.children) > 0:
            parents.append(parent.name)
            for child in parent.children:
                layer_item = QTreeWidgetItem(parent_item)
                self.addMetaItemWidget(wms_url, layer_item, child, child.name)
                self.addChildren(wms_url, child, layer_item, parents)

    def expandAndChangeSizeHint(self, root_item):
        for i in range(0, root_item.childCount()):
            group_item = root_item.child(i)
            group_item.setSizeHint(0, QSize(1, 28))
            self.expandAndChangeSizeHint(group_item)

    def showMetadataButtons(self, item, prev_item):
        if item is not None:
            if prev_item is not None:
                previous_item_widget = self.metadata_tree.itemWidget(prev_item, 0)
                self.removeItemButtons(previous_item_widget)
            item_widget = self.metadata_tree.itemWidget(item, 0)
            if item_widget is not None:
                metadata_label = item_widget.findChild(QLabel, 'metadata_label')
                if metadata_label is not None:
                    layer_name = metadata_label.text()
                    load_wms_button = self.createButton(SHOW_LAYERS_ICON, item, lambda: self.addWMSLayer(layer_name, item.data(0, 100), False))
                    item_widget.layout().addWidget(load_wms_button)
