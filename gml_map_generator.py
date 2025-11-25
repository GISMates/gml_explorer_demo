# -*- coding: utf-8 -*-
from qgis.core import *
from qgis.gui import QgsRubberBand
from PyQt5.QtCore import *
from qgis.PyQt.QtGui import QFont, QBrush, QColor
from .gml_logger_mode import GMLLoggerMode
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
		self.rubber_band = QgsRubberBand(self.map_canvas, QgsWkbTypes.PolygonGeometry)
		self.rubber_band.setWidth(2)
		self.rubber_band.setColor(QColor(255, 0, 0))
		self.dockwidget = dockwidget
		self.logger = logger
		self.setMapExtent()
		self.configureRangeSignals()
		self.dockwidget.save_map_button.clicked.connect(self.saveMapView)
		self.dockwidget.tabWidget.currentChanged.connect(self.drawTemporaryRectangle)

	def configureRangeSignals(self):
		self.dockwidget.west.textChanged.connect(lambda: self.validateRangeCoordinate(self.dockwidget.west))
		self.dockwidget.west.textChanged.connect(lambda: self.changeMapRange(False))
		self.dockwidget.south.textChanged.connect(lambda: self.validateRangeCoordinate(self.dockwidget.south))
		self.dockwidget.south.textChanged.connect(lambda: self.changeMapRange(False))
		self.dockwidget.east.textChanged.connect(lambda: self.validateRangeCoordinate(self.dockwidget.east))
		self.dockwidget.north.textChanged.connect(lambda: self.validateRangeCoordinate(self.dockwidget.north))
		self.map_canvas.extentsChanged.connect(lambda: self.changeMapRange(True))
		self.dockwidget.scale_combo.currentIndexChanged.connect(lambda: self.changeMapRange(False))
		self.dockwidget.orientation_combo.currentIndexChanged.connect(lambda: self.changeMapRange(False))
		try:
			self.dockwidget.sheet_width.valueChanged.connect(lambda: self.changeMapRange(False))
			self.dockwidget.sheet_height.valueChanged.connect(lambda: self.changeMapRange(False))
		except AttributeError:
			pass

	def validateRangeCoordinate(self, line_edit):
		try:
			float(line_edit.text())
		except:
			line_edit.backspace()

	def getSheetDimensionsMM(self):
		try:
			w = float(self.dockwidget.sheet_width.value())
			h = float(self.dockwidget.sheet_height.value())
			return w, h
		except AttributeError:
			return 800.0, 500.0

	def getMapDimensionsMeters(self, scale):
		sheet_w_mm, sheet_h_mm = self.getSheetDimensionsMM()
		base_w_m = (sheet_w_mm * scale) / 1000.0
		base_h_m = (sheet_h_mm * scale) / 1000.0

		if self.dockwidget.orientation_combo.currentText() == 'pozioma':
			return base_w_m, base_h_m
		else:
			return base_h_m, base_w_m

	def changeMapRange(self, extent_changed):
		scale = int(self.dockwidget.scale_combo.currentText())
		west_locked = self.dockwidget.lock_west_button.isChecked()
		south_locked = self.dockwidget.lock_south_button.isChecked()

		canvas_extent = self.map_canvas.extent()
		canvas_center_x = (canvas_extent.xMinimum() + canvas_extent.xMaximum()) / 2
		canvas_center_y = (canvas_extent.yMinimum() + canvas_extent.yMaximum()) / 2

		width, height = self.getMapDimensionsMeters(scale)

		if extent_changed:
			if not west_locked:
				x_minimum = round(canvas_center_x - width / 2, 2)
				self.dockwidget.west.setText(str(x_minimum))
				self.dockwidget.east.setText(str(x_minimum + width))
			if not south_locked:
				y_minimum = round(canvas_center_y - height / 2, 2)
				self.dockwidget.south.setText(str(y_minimum))
				self.dockwidget.north.setText(str(y_minimum + height))
		else:
			try:
				x_minimum = float(self.dockwidget.west.text())
				y_minimum = float(self.dockwidget.south.text())
				self.dockwidget.east.setText(str(x_minimum + width))
				self.dockwidget.north.setText(str(y_minimum + height))
			except:
				if not west_locked:
					x_minimum = round(canvas_center_x - width / 2, 2)
					self.dockwidget.west.setText(str(x_minimum))
					self.dockwidget.east.setText(str(x_minimum + width))
				if not south_locked:
					y_minimum = round(canvas_center_y - height / 2, 2)
					self.dockwidget.south.setText(str(y_minimum))
					self.dockwidget.north.setText(str(y_minimum + height))
		self.drawTemporaryRectangle()

	def drawTemporaryRectangle(self):
		scale = int(self.dockwidget.scale_combo.currentText())
		width, height = self.getMapDimensionsMeters(scale)
		self.rubber_band.reset()
		if self.dockwidget.isVisible() and self.dockwidget.tabWidget.tabText(
				self.dockwidget.tabWidget.currentIndex()) == 'Mapy':
			try:
				x_minimum = float(self.dockwidget.west.text())
				y_minimum = float(self.dockwidget.south.text())
				x_maximum = x_minimum + width
				y_maximum = y_minimum + height

				points = [QgsPointXY(x_minimum, y_minimum),
						  QgsPointXY(x_maximum, y_minimum),
						  QgsPointXY(x_maximum, y_maximum),
						  QgsPointXY(x_minimum, y_maximum),
						  QgsPointXY(x_minimum, y_minimum)]
				for point in points:
					self.rubber_band.addPoint(point, False)
				self.rubber_band.show()
			except ValueError:
				pass
		self.map_canvas.refresh()

	def setMapExtent(self):
		scale = int(self.dockwidget.scale_combo.currentText())
		width, height = self.getMapDimensionsMeters(scale)
		if not self.dockwidget.lock_west_button.isChecked():
			x_minimum = round(self.map_canvas.extent().xMinimum(), 2)
			self.dockwidget.west.setText(str(x_minimum))
			self.dockwidget.east.setText(str(x_minimum + width))
		if not self.dockwidget.lock_south_button.isChecked():
			y_minimum = round(self.map_canvas.extent().yMinimum(), 2)
			self.dockwidget.south.setText(str(y_minimum))
			self.dockwidget.north.setText(str(y_minimum + height))

	def saveMapView(self):
		map_path = self.dockwidget.map_path.text()
		if map_path == '':
			self.logger.logMessage("Wizualizacja GML", "Nie podano ścieżki zapisu mapy", Qgis.Info, GMLLoggerMode.loud)
		else:
			layers = self.getItemsForMapContent()
			if len(layers) == 0:
				self.logger.logMessage("Wizualizacja GML", "Żadna warstwa mapy nie jest widoczna", Qgis.Info,
									   GMLLoggerMode.loud)
			else:
				scale = self.dockwidget.scale_combo.currentText()
				layout_manager = self.project.layoutManager()
				layout_name = "generated_map"
				self.clearLastLayout(layout_manager, layout_name)

				layout = QgsPrintLayout(self.project)
				layout.initializeDefaults()
				layout.setName(layout_name)
				layout_manager.addLayout(layout)

				orientation = self.dockwidget.orientation_combo.currentText()
				sheet_w_mm, sheet_h_mm = self.getSheetDimensionsMM()

				if orientation == 'pozioma':
					map_width_mm = sheet_w_mm
					map_height_mm = sheet_h_mm
				else:
					map_width_mm = sheet_h_mm
					map_height_mm = sheet_w_mm

				footer_height_mm = 90
				margin = 10

				layout_total_width = map_width_mm + (2 * margin)
				layout_total_height = map_height_mm + footer_height_mm + (2 * margin)

				page = layout.pageCollection().pages()[0]
				page.setPageSize(QgsLayoutSize(layout_total_width, layout_total_height, QgsUnitTypes.LayoutMillimeters))

				map_item = self.createMapItem(layout, scale, orientation, map_width_mm, map_height_mm)
				map_item.attemptMove(QgsLayoutPoint(margin, margin))

				item_shape = self.createShapeItem(layout, orientation, map_width_mm, map_height_mm)
				item_shape.attemptMove(QgsLayoutPoint(margin, margin + map_height_mm))

				crs_code = map_item.crs().authid()
				if crs_code in self.crs.keys():
					crs_text = self.crs[crs_code]
				else:
					crs_text = crs_code

				center_x = layout_total_width / 2

				footer_start_y = margin + map_height_mm
				title_y = footer_start_y + 15
				scale_y = footer_start_y + 40
				crs_y = footer_start_y + 75

				xmin_pos_y = margin + map_height_mm + 2
				ymin_pos_y = margin + map_height_mm - 2

				xmax_pos_x = margin + map_width_mm - 2
				ymax_pos_x = margin + map_width_mm + 6

				title_label_item = self.createLabelItem(layout, 'Mapa', 'Arial', 48, True, QgsLayoutItem.UpperMiddle,
														center_x, title_y)
				scale_label_item = self.createLabelItem(layout, 'skala 1:%s' % scale, 'Arial', 28, True,
														QgsLayoutItem.UpperMiddle, center_x, scale_y)
				crs_label_item = self.createLabelItem(layout, 'Układ współrzędnych: %s' % crs_text, 'Arial', 28, True,
													  QgsLayoutItem.UpperLeft, margin + 10, crs_y)

				xmin_label_item = self.createLabelItem(layout, 'X: %s' % self.dockwidget.south.text(), 'Arial', 14,
													   False, QgsLayoutItem.UpperLeft, margin + 2, xmin_pos_y)
				ymin_label_item = self.createLabelItem(layout, 'Y: %s' % self.dockwidget.west.text(), 'Arial', 14,
													   False, QgsLayoutItem.UpperLeft, margin - 6, ymin_pos_y, -90)
				xmax_label_item = self.createLabelItem(layout, 'X: %s' % self.dockwidget.north.text(), 'Arial', 14,
													   False, QgsLayoutItem.UpperRight, xmax_pos_x, margin - 6)
				ymax_label_item = self.createLabelItem(layout, 'Y: %s' % self.dockwidget.east.text(), 'Arial', 14,
													   False, QgsLayoutItem.UpperLeft, ymax_pos_x, margin + 2, 90)

				layout.addLayoutItem(item_shape)
				layout.addLayoutItem(map_item)
				layout.addItem(title_label_item)
				layout.addItem(scale_label_item)
				layout.addItem(crs_label_item)
				layout.addItem(xmin_label_item)
				layout.addItem(ymin_label_item)
				layout.addItem(xmax_label_item)
				layout.addItem(ymax_label_item)

				self.exportLayout(layout, map_path)
				self.logger.logMessage("Wizualizacja GML", "Mapa została zapisana w lokalizacji: %s" % map_path,
									   Qgis.Success, GMLLoggerMode.loud)

	def getItemsForMapContent(self):
		layers = []
		for layer in self.project.mapLayers().values():
			if layer.type() == QgsMapLayer.VectorLayer:
				if self.project.layerTreeRoot().findLayer(layer.id()).itemVisibilityChecked():
					layers.append(layer)
		return layers

	def createMapExtent(self):
		x_min = float(self.dockwidget.west.text())
		y_min = float(self.dockwidget.south.text())
		x_max = float(self.dockwidget.east.text())
		y_max = float(self.dockwidget.north.text())
		map_extent = QgsRectangle(x_min, y_min, x_max, y_max)
		return map_extent

	def clearLastLayout(self, layout_manager, layout_name):
		for layout in layout_manager.printLayouts():
			if layout.name() == layout_name:
				layout_manager.removeLayout(layout)

	def createShapeItem(self, layout, orientation, width, height):
		item_shape = QgsLayoutItemShape(layout)
		item_shape.setShapeType(QgsLayoutItemShape.Rectangle)
		item_shape.setSymbol(QgsFillSymbol().createSimple(
			{'color': 'white', 'outline_color': 'black', 'outline_style': 'solid', 'outline_width': '0.3'}))

		item_shape.setRect(0, 0, width, 90)
		return item_shape

	def createMapItem(self, layout, scale, orientation, width, height):
		map_item = QgsLayoutItemMap(layout)
		map_item.setRect(0, 0, width, height)
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

		clean_text = str(text).replace('\n', ' ').replace('\r', '').strip()
		label_item.setText(clean_text)

		font = QFont(font_family, font_size)
		font.setBold(font_bold)
		label_item.setFont(font)

		label_item.setMargin(0.0)
		label_item.adjustSizeToText()

		current_size = label_item.sizeWithUnits()

		if len(clean_text) > 20:
			current_size.setWidth(current_size.width() + 50.0)
		else:
			current_size.setWidth(current_size.width() + 5.0)

		label_item.setFixedSize(current_size)

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