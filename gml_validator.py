import re
from qgis.core import *
from PyQt5.QtCore import *
import os
from lxml import etree
import glob
from qgis.PyQt.QtWidgets import QTableWidgetItem

from .gml_validation_dialog import GMLValidationDialog
from .gml_logger_mode import GMLLoggerMode
from .gml_validation_task import GMLValidationTask
from .gml_select_layers_dialog import GMLSelectLayersDialog


class GMLValidator:

    def __init__(self, dockwidget, logger):
        self.dockwidget = dockwidget
        self.logger = logger
        self.root_path = os.path.join(os.path.dirname(__file__), "xsd")
        self.validation_task = GMLValidationTask(dockwidget, self)
        self.validation_task.finished.connect(self.validationTaskFinished)

    def validateGML(self, gml_path, load_task=None):
        if gml_path == "":
            self.logger.logMessage("Walidator GML", "Należy wskazać ścieżkę do pliku GML", Qgis.Warning, GMLLoggerMode.loud)
        else:
            self.validation_task.gml_path = gml_path
            self.validation_task.load_task = load_task
            self.validation_task.start()
            self.validation_task.progress_screen.showProgress('walidacja...')

    def validationTaskFinished(self):
        self.validation_task.progress_screen.hideProgress()
        if self.validation_task.error:
            self.logger.logMessage("Wizualizacja GML",
                                   f"Walidacja pliku zakończona niepowodzeniem: {self.validation_task.error}",
                                   Qgis.Warning,
                                   GMLLoggerMode.loud)
        elif self.validation_task.terminated:
            self.logger.logMessage("Wizualizacja GML",
                                   f"Walidacja pliku przerwana przez użytkownika",
                                   Qgis.Info,
                                   GMLLoggerMode.loud)
        elif len(self.validation_task.validation_errors) > 0:
            self.fillValidationReport(self.validation_task.validation_errors)
        else:
            self.logger.logMessage("Walidator GML", "Walidacja nie wykazała błędów", Qgis.Success, GMLLoggerMode.loud)
        load_task = self.validation_task.load_task
        if load_task:
            select_layers_dialog = GMLSelectLayersDialog()
            load_task.loader.configureSelectLayersDialog(load_task.layers_positions, select_layers_dialog)

    def fillValidationReport(self, errors):
        report_dialog = GMLValidationDialog()
        report_table = report_dialog.report_table
        for error in errors:
            error_line = re.sub('(.*)\\|(.*)', r'\1', error)
            error_message = re.sub('(.*)\\|(.*)', r'\2', error)
            rownum = report_table.rowCount()
            report_table.insertRow(rownum)
            report_table.setItem(rownum, 0, QTableWidgetItem(error_line))
            report_table.setItem(rownum, 1, QTableWidgetItem(error_message))
        report_dialog.exec_()
