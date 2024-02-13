from qgis.core import *
from .gml_logger_mode import GMLLoggerMode
from .reports.func_box import getLayer


class GMLReportsManager:

    def __init__(self, iface, project, dockwidget, logger):
        self.iface = iface
        self.project = project
        self.dockwidget = dockwidget
        self.logger = logger

    def generateReport(self):
        relations_layer, message = getLayer('relacje', '')
        if relations_layer:
            gml_version = None
            for rel_feature in relations_layer.getFeatures('Warstwa = \'gml_version\''):
                gml_version = rel_feature.attribute('Relacja')
            if gml_version is not None:
                current_report = self.dockwidget.report_combo.currentText()
                only_selected = self.dockwidget.only_selected_check.checkState() == 2
                if current_report != '':
                    report_generator = None
                    if gml_version == 'old':
                        if current_report == 'Zestawienie EGiB - Działki':
                            from .reports.gml_fields_report_generator_old import generateFieldReportOld
                            generateFieldReportOld(self.dockwidget, only_selected)
                        if current_report == 'Budynki przynależne do działki':
                            from .reports.gml_field_buildings_report_generator_old import generateBuildingReportOld
                            generateBuildingReportOld(self.dockwidget, only_selected)
                        if current_report == 'Informacja z rejestru gruntów':
                            from .reports.gml_land_register_report_generator_old import generateLandRegisterReportOld
                            generateLandRegisterReportOld(self.dockwidget, only_selected)
                    if gml_version == 'new':
                        if current_report == 'Zestawienie EGiB - Działki':
                            from .reports.gml_fields_report_generator import generateFieldReport
                            generateFieldReport(self.dockwidget, only_selected)
                        if current_report == 'Budynki przynależne do działki':
                            from .reports.gml_field_buildings_report_generator import generateBuildingReport
                            generateBuildingReport(self.dockwidget, only_selected)
                        if current_report == 'Informacja z rejestru gruntów':
                            from .reports.gml_land_register_report_generator import generateLandRegisterReport
                            generateLandRegisterReport(self.dockwidget, only_selected)
                else:
                    self.logger.logMessage("Wizualizacja GML",
                                           "Należy wskazać rodzaj zestawienia, które ma zostać wygenerowane",
                                           Qgis.Info,
                                           GMLLoggerMode.loud)
            else:
                self.logger.logMessage("Wizualizacja GML",
                                       "Brak możliwości określenia wersji danych, utworzenie raportu jest niemożliwe",
                                       Qgis.Info,
                                       GMLLoggerMode.loud)
        else:
            self.logger.logMessage("Wizualizacja GML",
                                   "Do projektu nie została wczytana warstwa relacji, utworzenie raportu jest niemożliwe",
                                   Qgis.Info,
                                   GMLLoggerMode.loud)
