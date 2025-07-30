import os
import re

from qgis.PyQt.QtWidgets import QColorDialog
from qgis.PyQt.QtCore import QSettings
from qgis.PyQt.QtGui import QColor
from qgis.core import *

from .gml_logger_mode import GMLLoggerMode

class MapColorManager:

    def __init__(self, dockwidget, project, map_canvas, logger):
        self.dockwidget = dockwidget
        self.project = project
        self.map_canvas = map_canvas
        self.logger = logger
        self.settings = QSettings()
        if self.settings.value('map_composition') == 'standard':
            self.dockwidget.standard_button.setChecked(True)
        if self.settings.value('map_composition') == 'colored':
            self.dockwidget.mono_color_button.setChecked(True)
        map_color = self.settings.value('map_color')
        map_color = '#7d7d7d' if map_color is None else map_color
        self.current_color = QColor(map_color)
        self.dockwidget.standard_button.clicked.connect(self.toggleComposition)
        self.dockwidget.mono_color_button.clicked.connect(self.toggleComposition)
        self.dockwidget.pick_color_button.clicked.connect(self.openColorPicker)
        self.dockwidget.color_map_button.clicked.connect(self.changeLayersColor)
        self.setColor(self.current_color)

    def openColorPicker(self):
        color = QColorDialog.getColor()
        if color.isValid():
            self.current_color = color
            self.setColor(color)

    def setColor(self, color):
        brightness = (color.red() * 0.299 + color.green() * 0.587 + color.blue() * 0.114)
        text_color = "white" if brightness < 128 else "black"
        style = f"""
                    background-color: {color.name()};
                    color: {text_color};
                """
        self.dockwidget.pick_color_button.setStyleSheet(style)
        self.settings.setValue('map_color', color.name())

    def toggleComposition(self):
        if self.dockwidget.standard_button.isChecked():
            self.settings.setValue('map_composition', 'standard')
        else:
            self.settings.setValue('map_composition', 'colored')

    def changeLayersColor(self):
        layers = self.project.mapLayers().values()
        relations_layers = list(filter(lambda l: l.name() == 'relacje', layers))
        if len(relations_layers) == 1:
            relations_layer = relations_layers[0]
            gml_version = None
            for relation_feature in relations_layer.getFeatures("Warstwa = 'gml_version'"):
                gml_version = relation_feature.attribute('Relacja')
            if gml_version is not None:
                standard_composition = self.dockwidget.standard_button.isChecked()
                retrieved_color = self.current_color
                r = retrieved_color.red()
                g = retrieved_color.green()
                b = retrieved_color.blue()
                for layer in layers:
                    self.loadLayerStyle(layer, gml_version)
                    if not layer or not isinstance(layer, QgsVectorLayer) or layer.geometryType() == 4:
                        continue
                    try:
                        uml_path = os.path.join(os.path.dirname(__file__), "styles", gml_version, "%s.qml" % layer.name())
                        if standard_composition:
                            layer.loadNamedStyle(uml_path, True, QgsMapLayer.Symbology | QgsMapLayer.Labeling)
                        else:
                            style_file = open(uml_path, "rt")
                            style_data = style_file.read()
                            style_data = re.sub('"255,255,255,(255|0)', r'"-255,-255,-255,-255', style_data)
                            style_data = re.sub('"\d{0,3},\d{0,3},\d{0,3},(255|0)', r'"%s,%s,%s,255' % (r, g, b), style_data)
                            style_data = re.sub('"-255,-255,-255,-255', r'"255,255,255,255', style_data)
                            style_data = style_data.replace('KolorRGB', 'NoKolorRGB')
                            style_data = style_data.replace('getLayerColorOld', 'NogetLayerColorOld')
                            style_data = style_data.replace('getLayerColorNew', 'NogetLayerColorNew')
                            style_data = style_data.replace("IF( &quot;rodzajUrzadzenia&quot; = 'l', color_rgb(255, 64, 64), color_rgb(255, 0, 0))", "NoIF( &quot;rodzajUrzadzenia&quot; = 'l', color_rgb(255, 64, 64), color_rgb(255, 0, 0))")
                            style_data = style_data.replace("IF( &quot;rodzajUrzadzenia&quot; = 'a', color_rgb(0, 0, 0), color_rgb(255, 0, 0))", "NoIF( &quot;rodzajUrzadzenia&quot; = 'a', color_rgb(0, 0, 0), color_rgb(255, 0, 0))")
                            style_data = style_data.replace("IF(&quot;status&quot; = 'p', getLayerColorNew(&quot;rodzajSieci&quot;), color_rgb(0,0,0))", "NoIF(&quot;status&quot; = 'p', getLayerColorNew(&quot;rodzajSieci&quot;), color_rgb(0,0,0))")
                            style_data = style_data.replace("IF( &quot;rodzajUrzadzenia&quot; = 'w', color_rgb(0, 0, 0), color_rgb(255, 145, 0))", "NoIF( &quot;rodzajUrzadzenia&quot; = 'w', color_rgb(0, 0, 0), color_rgb(255, 145, 0))")
                            style_data = style_data.replace("IF(&quot;status&quot; = 'p', getLayerColorNew(&quot;rodzajSieci&quot;), color_rgb(0,0,0))", "NoIF(&quot;status&quot; = 'p', getLayerColorNew(&quot;rodzajSieci&quot;), color_rgb(0,0,0))")
                            style_data = style_data.replace("IF( &quot;rodzajObiektu&quot; IN('p', 's'), color_rgb(89, 217, 255), color_rgb(0, 0, 0))", "NoIF( &quot;rodzajObiektu&quot; IN('p', 's'), color_rgb(89, 217, 255), color_rgb(0, 0, 0))")
                            style_data = style_data.replace("IF(&quot;status&quot; = 'p', getLayerColorNew(&quot;rodzajSieci&quot;), color_rgb(0,0,0))", "NoIF(&quot;status&quot; = 'p', getLayerColorNew(&quot;rodzajSieci&quot;), color_rgb(0,0,0))")
                            style_data = style_data.replace("IF(&quot;status&quot; = 'p', getLayerColorNew(&quot;rodzajSieci&quot;), color_rgb(0,0,0))", "NoIF(&quot;status&quot; = 'p', getLayerColorNew(&quot;rodzajSieci&quot;), color_rgb(0,0,0))")
                            style_file.close()
                            uml_path_colored = os.path.join(os.path.dirname(__file__), "styles", gml_version, "%s_colored.qml" % layer.name())
                            style_file = open(uml_path_colored, "wt")
                            style_file.write(style_data)
                            style_file.close()
                            layer.loadNamedStyle(uml_path_colored, True, QgsMapLayer.Symbology | QgsMapLayer.Labeling)
                            self.logger.logMessage("Wizualizacja GML",f"Zmodyfikowano styl dla warstwy: {layer.name()}", Qgis.Info, GMLLoggerMode.quiet)
                    except Exception as e:
                        self.logger.logMessage("Wizualizacja GML", f"Błąd podczas modyfikacji stylu dla warstwy {layer.name()}: {e}", Qgis.Warning, GMLLoggerMode.quiet)
                self.map_canvas.refreshAllLayers()
                self.logger.logMessage("Wizualizacja GML", "Zakończono modyfikację stylów", Qgis.Success, GMLLoggerMode.loud)
            else:
                self.logger.logMessage("Wizualizacja GML", "Błąd odczytu wersji GML", Qgis.Critical, GMLLoggerMode.loud)
        else:
            self.logger.logMessage("Wizualizacja GML", "Nie znaleziono warstwy relacji", Qgis.Critical, GMLLoggerMode.loud)

    def loadLayerStyle(self, layer, gml_version):
        style_path = os.path.join(os.path.dirname(__file__), "styles", gml_version, "%s.qml" % layer.name())
        if not os.path.exists(style_path):
            if gml_version == 'old':
                style_path = os.path.join(os.path.dirname(__file__), "styles", 'new', "%s.qml" % layer.name())
            else:
                style_path = os.path.join(os.path.dirname(__file__), "styles", 'old', "%s.qml" % layer.name())
        symbols_path = os.path.join(os.path.dirname(__file__), "symbols").replace("\\", "/")
        if os.path.isfile(style_path):
            style_file = open(style_path, "rt")
            style_data = style_file.read()
            svg_paths = re.findall('"(.[^"]*)(\\\\|/.*\\.svg)"', style_data)
            for svg_path in svg_paths:
                svg_uml_path = '%s%s' % (svg_path[0], svg_path[1])
                svg_final_path = '%s%s' % (svg_path[0], self.removePolishSigns(svg_path[1]))
                style_data = style_data.replace(svg_uml_path, svg_final_path)
            style_data = re.sub('"(.[^"]*)(\\\\|/.*\\.svg)"', r'"%s\2"' % symbols_path, style_data)
            style_file.close()
            style_file = open(style_path, "wt")
            style_file.write(style_data)
            style_file.close()

    def removePolishSigns(self, text):
        text = text.replace('ą', 'a').replace('ć', 'c').replace('ę', 'e').replace('ł', 'l').replace('ń', 'n').replace(
            'ó', 'o').replace('ś', 's').replace('ź', 'z').replace('ż', 'z')
        text = text.replace('Ą', 'A').replace('Ć', 'C').replace('Ę', 'E').replace('Ł', 'L').replace('Ń', 'N').replace(
            'Ó', 'O').replace('Ś', 'S').replace('Ź', 'Z').replace('Ż', 'Z')
        return text
