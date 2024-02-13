from qgis.PyQt.QtWidgets import QMessageBox, QTableWidgetItem
from qgis.PyQt.QtCore import QThread, pyqtSignal
import qgis

from .func_box import *
from ..progress.progress_screen import ProgressScreen

building_kst_map = {"m": "budynki mieszkalne",
                    "g": "budynki produkcyjne, usługowe i gospodarcze",
                    "t": "budynki transportu i łączności",
                    "k": "budynki oświaty, nauki i kultury oraz budynki sportowe",
                    "z": "budynki szpitali i inne budynki opieki zdrowotnej",
                    "b": "biurowy",
                    "h": "budynki handlowo-usługowe",
                    "p": "przemyslowy",
                    "s": "zbiorniki, silosy i budynki magazynowe",
                    "i": "pozostałe budynki niemieszkalne"}


class BuildingReportTask(QThread):
    progress_changed = pyqtSignal(object)

    def __init__(self, dockwidget):
        super(BuildingReportTask, self).__init__()
        self.progress_screen = ProgressScreen(self, dockwidget)

    def run(self):
        self.error = None
        try:
            self.buildings = []
            if self.only_selected:
                field_features_iterator = self.field_layer.getSelectedFeatures()
                operations = len(self.field_layer.selectedFeatures())
            else:
                field_features_iterator = self.field_layer.getFeatures()
                operations = self.field_layer.featureCount()
            for i, field_feature in enumerate(field_features_iterator):
                self.progress_changed.emit(int((i / operations) * 100))
                field_id = getFeatureValue(field_feature, 'idDzialki')
                building_iter = self.building_layer.getFeatures(f'{self.building_field_relation} LIKE \'%{getFeatureValue(field_feature, "gml_id")}%\'') if self.building_layer else []
                for building_feature in building_iter:
                    building_geom = building_feature.geometry()
                    building_geom_wkt = building_geom.asWkt() if not (building_geom.isNull() or building_geom.isEmpty()) else ''
                    building_id = getFeatureValue(building_feature, 'idBudynku')
                    building_kst = building_kst_map.get(getFeatureValue(building_feature, 'rodzajWgKST'))
                    building_agf = getFeatureValue(building_feature, 'liczbaKondygnacjiNadziemnych')
                    building_uf = getFeatureValue(building_feature, 'liczbaKondygnacjiPodziemnych')
                    building_area = getFeatureValue(building_feature, 'powZabudowy')
                    address_iter = self.property_address_layer.getFeatures("gml_id = '%s'" % getFeatureValue(building_feature, self.building_address_relation)) if self.property_address_layer else []
                    building_address = ' '
                    for address_feature in address_iter:
                        place = getFeatureValue(address_feature, "nazwaMiejscowosci")
                        street = getFeatureValue(address_feature, "nazwaUlicy")
                        house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                        address = street
                        address += ' %s' % house_number if house_number != ' ' else ''
                        address += ', %s' % place if address != ' ' else place
                        building_address = address if building_address == ' ' or building_address == address else "%s\n%s" % (building_address, address)
                    self.buildings.append((field_id,
                                           building_feature.id(),
                                           building_id,
                                           building_kst,
                                           building_agf,
                                           building_uf,
                                           building_area,
                                           building_address,
                                           building_geom_wkt))
        except Exception as e:
            self.error = e


def generateBuildingReport(dockwidget, only_selected):
    missing_layers_message = ''
    address_layer_name = 'EGB_AdresNieruchomosci'
    property_address_layer, missing_layers_message = getLayer(address_layer_name, missing_layers_message)
    if not property_address_layer:
        property_address_layer, missing_layers_message = getLayer('EGB_AdresNieruchomosci_punkt', missing_layers_message)
        address_layer_name = 'EGB_AdresNieruchomosci_punkt'
    building_layer, missing_layers_message = getLayer('EGB_Budynek_powierzchnia', missing_layers_message)
    field_layer, missing_layers_message = getLayer('EGB_DzialkaEwidencyjna_powierzchnia', missing_layers_message)
    relations_layer, missing_layers_message = getLayer('relacje', missing_layers_message)
    table_columns = ['Id działki', 'Id budynku', 'KST', 'Kondygnacje nadziemne', 'Kondygnacje podziemne', 'Pow. zabudowy', 'Adres', 'Geometria']
    dialog, table = configureDialog(dockwidget, 'Budynki przynależne do działki', table_columns, building_layer)
    if relations_layer and building_layer and field_layer:
        if missing_layers_message != '':
            showMessage(dialog, 'Budynki przynależne do działki', '%s<p>Raport może nie zawierać pełej informacji</p>' % missing_layers_message)
        report_task = BuildingReportTask(dockwidget)
        report_task.only_selected = only_selected
        report_task.building_layer = building_layer
        report_task.field_layer = field_layer
        report_task.relations_layer = relations_layer
        report_task.property_address_layer = property_address_layer
        report_task.building_field_relation = getRelation(relations_layer, 'EGB_Budynek_powierzchnia', 'EGB_DzialkaEwidencyjna_powierzchnia')
        report_task.building_address_relation = getRelation(relations_layer, 'EGB_Budynek_powierzchnia', address_layer_name)
        report_task.finished.connect(lambda: reportTaskFinished(report_task, dialog, table))
        report_task.progress_changed.connect(lambda progress: reportProgress(report_task, progress))
        report_task.progress_screen.showProgress('generowanie raportu...', True, False)
        report_task.start()
    else:
        showMessage(dialog, 'Budynki przynależne do działki', 'Do projektu nie została wczytana warstwa relacji, budynków lub działek, utworzenie raportu jest niemożliwe')


def reportProgress(report_task, progress):
    report_task.progress_screen.progressBarValue(progress)


def reportTaskFinished(report_task, dialog, table):
    report_task.progress_screen.hideProgress()
    if report_task.error:
        showMessage(dialog, 'Budynki przynależne do działki',
                    '<p>Generowanie raportu zakończone niepowodzeniem:</p>'
                    '<p><i>%s</i></p>' % report_task.error)
    else:
        if len(report_task.buildings) > 0:
            for building in report_task.buildings:
                rownum = table.rowCount()
                table.insertRow(rownum)
                field_id_item = QTableWidgetItem(building[0])
                field_id_item.setWhatsThis(str(building[1]))
                table.setItem(rownum, 0, field_id_item)
                table.setItem(rownum, 1, QTableWidgetItem(building[2]))
                table.setItem(rownum, 2, QTableWidgetItem(building[3]))
                table.setItem(rownum, 3, QTableWidgetItem(building[4]))
                table.setItem(rownum, 4, QTableWidgetItem(building[5]))
                table.setItem(rownum, 5, QTableWidgetItem(building[6]))
                table.setItem(rownum, 6, QTableWidgetItem(building[7]))
                table.setItem(rownum, 7, QTableWidgetItem(building[8]))
            iface.addTabifiedDockWidget(Qt.BottomDockWidgetArea, dialog, [], True)
        else:
            showMessage(dialog, 'Budynki przynależne do działki', 'Brak obiektów do wyświetlenia')