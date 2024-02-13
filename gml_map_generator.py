# -*- coding: utf-8 -*-
from qgis.core import *
from PyQt5.QtCore import *
from qgis.PyQt.QtGui import QFont
from .gml_logger_mode import GMLLoggerMode
from .gml_map_extent_form import GMLMapExtentForm
import re


class GMLMapGenerator:

    heights = {500: 250,
              1000: 500,
              2000: 1000,
              5000: 2500}
    widths = {500: 400,
               1000: 800,
               2000: 1600,
               5000: 4000}
    grid_intervals = {500: 50,
                      1000: 100,
                      2000: 200,
                      5000: 500}
    crs = {'EPSG:2176': 'PUWG 2000 (strefa V)',
           'EPSG:2177': 'PUWG 2000 (strefa V)',
           'EPSG:2178': 'PUWG 2000 (strefa V)',
           'EPSG:2179': 'PUWG 2000 (strefa V)',
           'EPSG:2180': 'PUWG 1992'}

    def __init__(self, project, iface, dockwidget, logger):
        self.project = project
        self.iface = iface
        self.map_canvas = iface.mapCanvas()
        self.dockwidget = dockwidget
        self.logger = logger
        self.extent_form = GMLMapExtentForm()
        self.setMapExtent(False)
        self.dockwidget.map_extent_button.clicked.connect(lambda: self.setMapExtent(True))
        self.configureRangeSignals()
        self.dockwidget.save_map_button.clicked.connect(self.saveMapView)

    def configureRangeSignals(self):
        self.extent_form.west.textChanged.connect(lambda: self.validateRangeCoordinate(self.extent_form.west))
        self.extent_form.west.textChanged.connect(lambda: self.changeMapRange(False))
        self.extent_form.south.textChanged.connect(lambda: self.validateRangeCoordinate(self.extent_form.south))
        self.extent_form.south.textChanged.connect(lambda: self.changeMapRange(False))
        self.extent_form.east.textChanged.connect(lambda: self.validateRangeCoordinate(self.extent_form.east))
        self.extent_form.north.textChanged.connect(lambda: self.validateRangeCoordinate(self.extent_form.north))
        self.map_canvas.extentsChanged.connect(lambda: self.changeMapRange(True))
        self.dockwidget.scale_combo.currentIndexChanged.connect(lambda: self.changeMapRange(False))

    def validateRangeCoordinate(self, line_edit):
        try:
            float(line_edit.text())
        except:
            line_edit.backspace()

    def changeMapRange(self, extent_changed):
        scale = int(self.dockwidget.scale_combo.currentText())
        west_locked = self.extent_form.lock_west_button.isChecked()
        south_locked = self.extent_form.lock_south_button.isChecked()
        if extent_changed:
            if not west_locked:
                x_minimum = round(self.map_canvas.extent().xMinimum(), 2)
                self.extent_form.west.setText(str(x_minimum))
                self.extent_form.east.setText(str(x_minimum + self.widths[scale]))
            if not south_locked:
                y_minimum = round(self.map_canvas.extent().yMinimum(), 2)
                self.extent_form.south.setText(str(y_minimum))
                self.extent_form.north.setText(str(y_minimum + self.heights[scale]))
        else:
            try:
                x_minimum = float(self.extent_form.west.text())
                self.extent_form.east.setText(str(x_minimum + self.widths[scale]))
                y_minimum = float(self.extent_form.south.text())
                self.extent_form.north.setText(str(y_minimum + self.heights[scale]))
            except:
                if not west_locked:
                    x_minimum = round(self.map_canvas.extent().xMinimum(), 2)
                    self.extent_form.east.setText(str(x_minimum + self.widths[scale]))
                if not south_locked:
                    y_minimum = round(self.map_canvas.extent().yMinimum(), 2)
                    self.extent_form.north.setText(str(y_minimum + self.heights[scale]))

    def setMapExtent(self, show_form):
        scale = int(self.dockwidget.scale_combo.currentText())
        if not self.extent_form.lock_west_button.isChecked():
            x_minimum = round(self.map_canvas.extent().xMinimum(), 2)
            self.extent_form.west.setText(str(x_minimum))
            self.extent_form.east.setText(str(x_minimum + self.widths[scale]))
        if not self.extent_form.lock_south_button.isChecked():
            y_minimum = round(self.map_canvas.extent().yMinimum(), 2)
            self.extent_form.south.setText(str(y_minimum))
            self.extent_form.north.setText(str(y_minimum + self.heights[scale]))
        if show_form:
            self.extent_form.show()

    def saveMapView(self):
        map_path = self.dockwidget.map_path.text()
        if map_path == '':
            self.logger.logMessage("Wizualizacja GML", "Nie podano ścieżki zapisu mapy", Qgis.Info, GMLLoggerMode.loud)
        else:
            layers = self.getItemsForMapContent()
            if len(layers) == 0:
                self.logger.logMessage("Wizualizacja GML", "Żadna warstwa mapy nie jest widoczna", Qgis.Info, GMLLoggerMode.loud)
            else:
                scale = self.dockwidget.scale_combo.currentText()
                layout_manager = self.project.layoutManager()
                layout_name = "generated_map"
                self.clearLastLayout(layout_manager, layout_name)
                layout = QgsPrintLayout(self.project)
                layout.setName(layout_name)
                layout_manager.addLayout(layout)
                '''Create Items'''
                map_item = self.createMapItem(layout, scale)
                item_shape = self.createShapeItem(layout)
                title_label_item = self.createLabelItem(layout, 'Mapa', 'Arial', 48, True, QgsLayoutItem.UpperMiddle, 410, 510)
                scale_label_item = self.createLabelItem(layout, 'skala 1:%s' % scale, 'Arial', 28, True, QgsLayoutItem.UpperMiddle, 410, 535)
                crs_code = map_item.crs().authid()
                if crs_code in self.crs.keys():
                    crs = self.crs[crs_code]
                else:
                    crs = crs_code
                crs_label_item = self.createLabelItem(layout, 'Układ współrzędnych: %s' % crs, 'Arial', 28, True, QgsLayoutItem.UpperLeft, 10, 570)
                xmin_label_item = self.createLabelItem(layout, 'X: %s' % self.extent_form.south.text(), 'Arial', 14, False, QgsLayoutItem.UpperLeft, 2, 502)
                ymin_label_item = self.createLabelItem(layout, 'Y: %s' % self.extent_form.west.text(), 'Arial', 14, False, QgsLayoutItem.UpperLeft, -6, 498, -90)
                xmax_label_item = self.createLabelItem(layout, 'X: %s' % self.extent_form.north.text(), 'Arial', 14, False, QgsLayoutItem.UpperRight, 798, -6)
                ymax_label_item = self.createLabelItem(layout, 'Y: %s' % self.extent_form.east.text(), 'Arial', 14, False, QgsLayoutItem.UpperLeft, 806, 2, 90)
                '''Add items to layout'''
                layout.addLayoutItem(item_shape)
                layout.addLayoutItem(map_item)
                layout.addItem(title_label_item)
                layout.addItem(scale_label_item)
                layout.addItem(crs_label_item)
                layout.addItem(xmin_label_item)
                layout.addItem(ymin_label_item)
                layout.addItem(xmax_label_item)
                layout.addItem(ymax_label_item)
                layout.pageCollection().resizeToContents(QgsMargins(10, 10, 10, 10), QgsUnitTypes.LayoutMillimeters)
                self.exportLayout(layout, map_path)
                self.logger.logMessage("Wizualizacja GML", "Mapa została zapisana w lokalizacji: %s" % map_path, Qgis.Success, GMLLoggerMode.loud)

    def getItemsForMapContent(self):
        layers = []
        for layer in self.project.mapLayers().values():
            if layer.type() == QgsMapLayer.VectorLayer:
                if self.project.layerTreeRoot().findLayer(layer.id()).itemVisibilityChecked():
                    layers.append(layer)
        return layers

    def createMapExtent(self):
        x_min = float(self.extent_form.west.text())
        y_min = float(self.extent_form.south.text())
        x_max = float(self.extent_form.east.text())
        y_max = float(self.extent_form.north.text())
        map_extent = QgsRectangle(x_min, y_min, x_max, y_max)
        return map_extent

    def clearLastLayout(self, layout_manager, layout_name):
        for layout in layout_manager.printLayouts():
            if layout.name() == layout_name:
                layout_manager.removeLayout(layout)

    def createShapeItem(self, layout):
        item_shape = QgsLayoutItemShape(layout)
        item_shape.setShapeType(QgsLayoutItemShape.Rectangle)
        item_shape.setSymbol(QgsFillSymbol().createSimple(
            {'color': 'white', 'outline_color': 'black', 'outline_style': 'solid', 'outline_width': '0.3'}))
        item_shape.setRect(0, 0, 800, 90)
        item_shape.attemptMove(QgsLayoutPoint(0, 500))
        return item_shape

    def createMapItem(self, layout, scale):
        map_item = QgsLayoutItemMap(layout)
        map_item.setRect(0, 0, 800, 500)
        map_item.setFrameEnabled(True)
        map_extent = self.createMapExtent()
        map_item.setExtent(map_extent)
        grid = QgsLayoutItemMapGrid('Grid', map_item)
        map_item.grids().addGrid(grid)
        grid.setStyle(QgsLayoutItemMapGrid.Cross)
        grid.setIntervalX(self.grid_intervals[int(scale)])
        grid.setIntervalY(self.grid_intervals[int(scale)])
        grid.setEnabled(True)
        return map_item

    def createLabelItem(self, layout, text, font_family, font_size, font_bold, reference_point, x, y, rotation=0):
        label_item = QgsLayoutItemLabel(layout)
        label_item.setText(text)
        font = QFont(font_family, font_size)
        font.setBold(font_bold)
        label_item.setFont(font)
        label_item.adjustSizeToText()
        label_item.setReferencePoint(reference_point)
        label_item.attemptMove(QgsLayoutPoint(x, y))
        label_item.rotateItem(rotation, QPointF(x, y))
        return label_item

    def exportLayout(self, layout, map_path):
        exporter = QgsLayoutExporter(layout)
        map_extension = re.sub("(.*)\.(.*)$", r"\2", map_path)
        dpi = self.dockwidget.dpi_input.text()
        save_crs = self.dockwidget.crs_combo.currentText() == "Tak"
        if map_extension == "pdf":
            export_settings = QgsLayoutExporter.PdfExportSettings()
            export_settings.dpi = int(dpi)
            if save_crs:
                export_settings.writeGeoPdf = True
            exporter.exportToPdf(map_path, export_settings)
        if map_extension in ("jpg", "tiff"):
            export_settings = QgsLayoutExporter.ImageExportSettings()
            export_settings.dpi = int(dpi)
            if save_crs:
                export_settings.generateWorldFile = True
            exporter.exportToImage(map_path, export_settings)