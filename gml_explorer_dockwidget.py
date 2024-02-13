# -*- coding: utf-8 -*-
import os

from qgis.PyQt import QtGui, QtWidgets, uic
from qgis.PyQt.QtGui import QTransform, QIcon
from qgis.PyQt.QtWidgets import QApplication, QFileDialog
from qgis.PyQt.QtCore import pyqtSignal
import sys
import glob
import re

sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'ui/gml_explorer_dockwidget_base.ui'), resource_suffix='')

default_legend_name = "Standardowa legenda"
service_criteria_mapping = {'Działki ewidencyjne': ['Działki zabudowane', 'Działki na terenach mieszkaniowych wg MPZP'],
                            'Budynki': [],
                            'MPZP': []}


class GMLExplorerDockWidget(QtWidgets.QDockWidget, FORM_CLASS):

    closingPlugin = pyqtSignal()

    def __init__(self, parent=None):
        """Constructor."""
        super(GMLExplorerDockWidget, self).__init__(parent)
        self.setupUi(self)
        # Validation tab
        self.get_gml_button_2.clicked.connect(lambda: self.getPath(self.gml_path_2, 'open', "Geography Markup Language(*.gml)"))
        # QGIS tab
        self.project_dir_btn.clicked.connect(lambda: self.getPath(self.project_dir, 'open', "", True))
        # Maps tab
        self.change = True
        self.get_map_path_button.clicked.connect(lambda: self.getPath(self.map_path, 'save', "Tiff (*.tiff) ;; JPG (*.jpg) ;; PDF (*.pdf)"))
        self.map_path.textChanged.connect(self.changeExtensionChoice)
        self.tiff_radio_button.toggled.connect(lambda: self.changeFileExtension("tiff"))
        self.jpg_radio_button.toggled.connect(lambda: self.changeFileExtension("jpg"))
        self.pdf_radio_button.toggled.connect(lambda: self.changeFileExtension("pdf"))
        self.dpi_input.textChanged.connect(lambda: self.validateDpi(self.dpi_input))

    def closeEvent(self, event):
        self.closingPlugin.emit()
        event.accept()

    def getPath(self, path_container, operation_type, extension, open_dir=False):
        if operation_type == 'open':
            if open_dir:
                selected_file = QFileDialog.getExistingDirectory(self, "Wskaż katalog do zapisu projektu")
            else:
                selected_file = QFileDialog.getOpenFileName(self, "Wybierz plik GML", "", extension)[0]
        else:
            selected_file = QFileDialog.getSaveFileName(self, "Wskaż miejsce zapisu mapy", "", extension)[0]
        if selected_file != "":
            path_container.setText(selected_file)

    def changeExtensionChoice(self):
        if self.change:
            self.change = False
            map_path = self.map_path.text().replace('/', '\\')
            map_extension = re.sub("(.*)\\.(.*)$", r"\2", map_path)
            if map_extension == "pdf":
                self.pdf_radio_button.setChecked(True)
            elif map_extension == "jpg":
                self.jpg_radio_button.setChecked(True)
            else:
                self.tiff_radio_button.setChecked(True)
            self.change = True

    def changeFileExtension(self, extension):
        if self.change:
            self.change = False
            map_path = self.map_path.text().replace('/', '\\')
            root_catalog = re.sub("(.*)\\\\(.*)\.(.*)$", r"\1", map_path)
            map_name = re.sub("(.*)\\\\(.*)\.(.*)$", r"\2", map_path)
            map_extension = re.sub("(.*)\\\\(.*)\.(.*)$", r"\3", map_path)
            if map_extension in ("tiff", "jpg", "pdf"):
                new_path = root_catalog + "\\" + map_name + "." + extension
                self.map_path.setText(new_path.replace('\\', '/'))
            self.change = True

    def validateDpi(self, line_edit):
        try:
            int(line_edit.text())
            if int(line_edit.text()) >= 900:
                line_edit.setText("900")
        except:
            line_edit.backspace()
