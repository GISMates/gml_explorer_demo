from qgis.PyQt.QtWidgets import QMessageBox, QTableWidgetItem
from qgis.PyQt.QtCore import QThread, pyqtSignal
import qgis
import re

from .func_box import *
from ..progress.progress_screen import ProgressScreen


class FieldReportOldTask(QThread):
    progress_changed = pyqtSignal(object)

    def __init__(self, dockwidget):
        super(FieldReportOldTask, self).__init__()
        self.progress_screen = ProgressScreen(self, dockwidget)

    def run(self):
        self.error = None
        try:
            self.report_data = []
            if self.only_selected:
                field_features_iterator = self.field_layer.getSelectedFeatures()
                operations = len(self.field_layer.selectedFeatures())
            else:
                field_features_iterator = self.field_layer.getFeatures()
                operations = self.field_layer.featureCount()
            for i, field_feature in enumerate(field_features_iterator):
                self.progress_changed.emit(int((i / operations) * 100))
                landuses = []
                ownerships = []
                field_number = ' '
                field_kw = ' '
                district = ' '
                field_id = ' '
                field_area = ' '
                field_id = getFeatureValue(field_feature, 'idDzialki')
                field_geom = field_feature.geometry()
                field_geom_wkt = field_geom.asWkt() if not (field_geom.isNull() or field_geom.isEmpty()) else ''
                field_number = re.sub("(.*)\\.(.*)$", r"\2", field_id)
                field_kw = getFeatureValue(field_feature, 'numerKW')
                field_area = getFeatureValue(field_feature, 'powierzchniaEwidencyjna')
                jrg_ids = getFeatureValue(field_feature, self.field_jrg_relation)
                for jrg_id in jrg_ids.split(', '):
                    jrg_iter = self.jrg_layer.getFeatures("gml_id = '%s'" % jrg_id) if self.jrg_layer else []
                    for jrg_feature in jrg_iter:
                        district_ids = "'%s'" % getFeatureValue(jrg_feature, self.jrg_district_relation).replace(", ", "', '")
                        district_iter = self.district_layer.getFeatures("gml_id IN(%s)" % district_ids) if self.district_layer else []
                        for district_feature in district_iter:
                            district = getFeatureValue(district_feature, 'nazwaWlasna')
                    ownership_iter = self.ownership_layer.getFeatures(self.ownership_jrg_relation + " LIKE '%" + jrg_id + "%'") if self.ownership_layer else []
                    for ownership_feature in ownership_iter:
                        ownership_share = getFeatureValue(ownership_feature, 'licznikUlamkaOkreslajacegoWartoscUdzialu')
                        denominator = getFeatureValue(ownership_feature, 'mianownikUlamkaOkreslajacegoWartoscUdzialu')
                        if denominator != ' ':
                            ownership_share += '/%s' % denominator
                        ownership_single = getFeatureValue(ownership_feature, self.ownership_single_owner_relation)
                        ownership_marriage = getFeatureValue(ownership_feature, self.ownership_marriage_owner_relation)
                        ownership_institution = getFeatureValue(ownership_feature, self.ownership_intitution_owner_relation)
                        ownership_group = getFeatureValue(ownership_feature, self.ownership_group_owner_relation)
                        if ownership_single != ' ':
                            owner_ids = "'%s'" % ownership_single.replace(", ", "', '")
                            owner_single_iter = self.owner_single_layer.getFeatures("gml_id IN(%s)" % owner_ids) if self.owner_single_layer else []
                            for owner_feature in owner_single_iter:
                                owner = getFeatureValue(owner_feature, 'pierwszeImie')
                                surname_first = getFeatureValue(owner_feature, 'pierwszyCzlonNazwiska')
                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                surname_second = getFeatureValue(owner_feature, 'drugiCzlonNazwiska')
                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                address = ' '
                                address_iter = self.address_layer.getFeatures("gml_id = '%s'" % getFeatureValue(owner_feature, self.single_owner_address_relation)) if self.address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc").strip()
                                    street = getFeatureValue(address_feature, "ulica").strip()
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy").strip()
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu").strip()
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy").strip()
                                    address = f'{place}{" " if place != "" else ""}{"ul. " if street != "" else ""}{street}{" " if street != "" else ""}{house_number}{"/" if apartment_number != "" else ""}{apartment_number}{" " if postal_code != "" else ""}{postal_code}'
                                ownerships.append(f'{owner} ({ownership_share}) {address}')
                        elif ownership_marriage != ' ':
                            owner_ids = "'%s'" % ownership_marriage.replace(", ", "', '")
                            owner_marriage_iter = self.owner_marriage_layer.getFeatures("gml_id IN(%s)" % owner_ids) if self.owner_marriage_layer else []
                            for owner_feature in owner_marriage_iter:
                                marriage_ids = "'%s'" % getFeatureValue(owner_feature, self.marriage_owner_single_owner_relation[0])
                                marriage_partner = getFeatureValue(owner_feature, self.marriage_owner_single_owner_relation[1])
                                marriage_ids = "%s, '%s'" % (marriage_ids, marriage_partner) if marriage_ids != ' ' else "'%s'" % marriage_partner
                                owners = ''
                                addresses_ids = []
                                owner_single_iter = self.owner_single_layer.getFeatures("gml_id in (%s)" % marriage_ids) if self.owner_single_layer else []
                                for owner_sub_feature in owner_single_iter:
                                    owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')
                                    surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                    surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                    owners += owner if owners == '' else ",%s" % owner
                                    addresses_ids.append(getFeatureValue(owner_sub_feature, self.single_owner_address_relation))
                                addresses = ' '
                                address_iter = self.address_layer.getFeatures(
                                    'gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if self.address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc").strip()
                                    street = getFeatureValue(address_feature, "ulica").strip()
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy").strip()
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu").strip()
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy").strip()
                                    address = f'{place}{" " if place != "" else ""}{"ul. " if street != "" else ""}{street}{" " if street != "" else ""}{house_number}{"/" if apartment_number != "" else ""}{apartment_number}{" " if postal_code != "" else ""}{postal_code}'
                                    addresses = address if addresses == ' ' or addresses == address else "%s, %s" % (addresses, address)
                                ownerships.append(f'{owners} ({ownership_share}) {addresses}')
                        elif ownership_institution != ' ':
                            owner_ids = "'%s'" % ownership_institution.replace(", ", "', '")
                            owner_institution_iter = self.owner_institution_layer.getFeatures("gml_id IN(%s)" % owner_ids) if self.owner_institution_layer else []
                            for owner_feature in owner_institution_iter:
                                owner = getFeatureValue(owner_feature, 'nazwaPelna')
                                address = ' '
                                address_iter = self.address_layer.getFeatures(
                                    "gml_id = '%s'" % getFeatureValue(owner_feature, self.institution_owner_address_relation)) if self.address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc").strip()
                                    street = getFeatureValue(address_feature, "ulica").strip()
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy").strip()
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu").strip()
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy").strip()
                                    address = f'{place}{" " if place != "" else ""}{"ul. " if street != "" else ""}{street}{" " if street != "" else ""}{house_number}{"/" if apartment_number != "" else ""}{apartment_number}{" " if postal_code != "" else ""}{postal_code}'
                                ownerships.append(f'{owner} ({ownership_share}) {address}')
                        elif ownership_group != ' ':
                            owner_ids = "'%s'" % ownership_group.replace(", ", "', '")
                            owner_group_iter = self.owner_group_layer.getFeatures("gml_id IN(%s)" % owner_ids) if self.owner_group_layer else []
                            for owner_feature in owner_group_iter:
                                group_ids = "'%s'" % getFeatureValue(owner_feature, self.group_owner_single_owner_relation).replace(", ", "', '")
                                owners = []
                                addresses_ids = []
                                owner_single_iter = self.owner_single_layer.getFeatures("gml_id in (%s)" % group_ids) if self.owner_single_layer else []
                                for owner_sub_feature in owner_single_iter:
                                    owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')
                                    surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                    surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                    owners.append(owner)
                                    addresses_ids.append(getFeatureValue(owner_sub_feature, self.single_owner_address_relation))
                                c = 0
                                address_iter = self.address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if self.address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc").strip()
                                    street = getFeatureValue(address_feature, "ulica").strip()
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy").strip()
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu").strip()
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy").strip()
                                    address = f'{place}{" " if place != "" else ""}{"ul. " if street != "" else ""}{street}{" " if street != "" else ""}{house_number}{"/" if apartment_number != "" else ""}{apartment_number}{" " if postal_code != "" else ""}{postal_code}'
                                    ownerships.append(f'{owners[c]} ({ownership_share}) {address}')
                                    c += 1
                landuse_ids = "'%s'" % getFeatureValue(field_feature, self.field_landuses_relation).replace(", ", "', '")
                landuse_iter = self.landuse_layer.getFeatures("gml_id IN(%s)" % landuse_ids) if self.landuse_layer else []
                for landuse_feature in landuse_iter:
                    ofu = getFeatureValue(landuse_feature, 'oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OFU')
                    ozu = getFeatureValue(landuse_feature, 'oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OZU')
                    ozk = getFeatureValue(landuse_feature, 'oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OZK')
                    area = getFeatureValue(landuse_feature, 'powierzchniaEwidencyjnaKlasouzytku')
                    if ozu.strip() != '' or ozk.strip() != '':
                        landuses.append(('%s/%s%s: %s' % (ofu, ozu, ozk, area)))
                    else:
                        if ofu.strip() != '':
                            landuses.append(('%s: %s' % (ofu, area)))
                        elif area.strip() != '':
                            landuses.append(area)
                        else:
                            landuses.append('')
                self.report_data.append((field_feature.id(), district, field_number, field_id, field_kw, field_area, landuses, ownerships, field_geom_wkt))
        except Exception as e:
            self.error = e


def generateFieldReportOld(dockwidget, only_selected):
    missing_layers_message = ''
    field_layer, missing_layers_message = getLayer('EGB_DzialkaEwidencyjna_powierzchnia', missing_layers_message)
    jrg_layer, missing_layers_message = getLayer('EGB_JednostkaRejestrowaGruntow', missing_layers_message)
    ownership_layer, missing_layers_message = getLayer('EGB_UdzialWlasnosci', missing_layers_message)
    district_layer, missing_layers_message = getLayer('EGB_ObrebEwidencyjny_powierzchnia', missing_layers_message)
    land_unit_layer, missing_layers_message = getLayer('EGB_JednostkaEwidencyjna_powierzchnia', missing_layers_message)
    owner_single_layer, missing_layers_message = getLayer('EGB_OsobaFizyczna', missing_layers_message)
    owner_marriage_layer, missing_layers_message = getLayer('EGB_Malzenstwo', missing_layers_message)
    owner_institution_layer, missing_layers_message = getLayer('EGB_Instytucja', missing_layers_message)
    owner_group_layer, missing_layers_message = getLayer('EGB_PodmiotGrupowy', missing_layers_message)
    address_layer, missing_layers_message = getLayer('EGB_Adres', missing_layers_message)
    landuse_layer, missing_layers_message = getLayer('EGB_Klasouzytek', missing_layers_message)
    relations_layer, missing_layers_message = getLayer('relacje', missing_layers_message)
    table_columns = ['Obręb', 'Nr działki', 'Id działki', 'Numer KW', 'Pow. ewidencyjna', 'Klasoużytek',
                     'Właściciel', 'Geometria']
    dialog, table = configureDialog(dockwidget, 'Zestawienie EGiB - działka', table_columns, field_layer)
    if relations_layer or field_layer:
        if missing_layers_message != '':
            showMessage(dialog, 'Zestawienie EGiB - działka',
                        '%s<p>Raport może nie zawierać pełej informacji</p>' % missing_layers_message)
        report_task = FieldReportOldTask(dockwidget)
        report_task.only_selected = only_selected
        report_task.field_layer = field_layer
        report_task.jrg_layer = jrg_layer
        report_task.ownership_layer = ownership_layer
        report_task.district_layer = district_layer
        report_task.land_unit_layer = land_unit_layer
        report_task.owner_single_layer = owner_single_layer
        report_task.owner_marriage_layer = owner_marriage_layer
        report_task.owner_institution_layer = owner_institution_layer
        report_task.owner_group_layer = owner_group_layer
        report_task.address_layer = address_layer
        report_task.landuse_layer = landuse_layer
        report_task.relations_layer = relations_layer
        report_task.district_land_unit_relation = getRelation(relations_layer, 'EGB_ObrebEwidencyjny_powierzchnia', 'EGB_JednostkaEwidencyjna_powierzchnia')
        report_task.field_jrg_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_JednostkaRejestrowaGruntow')
        report_task.field_landuses_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_Klasouzytek')
        report_task.jrg_district_relation = getRelation(relations_layer, 'EGB_JednostkaRejestrowaGruntow', 'EGB_ObrebEwidencyjny_powierzchnia')
        report_task.ownership_jrg_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_JednostkaRejestrowaGruntow')
        report_task.ownership_single_owner_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_OsobaFizyczna')
        report_task.ownership_marriage_owner_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_Malzenstwo')
        report_task.ownership_intitution_owner_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_Instytucja')
        report_task.ownership_group_owner_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_PodmiotGrupowy')
        report_task.single_owner_address_relation = getRelation(relations_layer, 'EGB_OsobaFizyczna', 'EGB_Adres')
        report_task.institution_owner_address_relation = getRelation(relations_layer, 'EGB_Instytucja', 'EGB_Adres')
        report_task.group_owner_single_owner_relation = getRelation(relations_layer, 'EGB_PodmiotGrupowy', 'EGB_OsobaFizyczna')
        report_task.marriage_owner_single_owner_relation = getRelation(relations_layer, 'EGB_Malzenstwo', 'EGB_OsobaFizyczna', True)
        report_task.finished.connect(lambda: reportTaskFinished(report_task, dialog, table))
        report_task.progress_changed.connect(lambda progress: reportProgress(report_task, progress))
        report_task.progress_screen.showProgress('generowanie raportu...', True, False)
        report_task.start()
    else:
        showMessage(dialog, 'Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa relacji lub działek, utworzenie raportu jest niemożliwe')


def reportProgress(report_task, progress):
    report_task.progress_screen.progressBarValue(progress)


def reportTaskFinished(report_task, dialog, table):
    report_task.progress_screen.hideProgress()
    if report_task.error:
        showMessage(dialog, 'Zestawienie EGiB - działka',
                    '<p>Generowanie raportu zakończone niepowodzeniem:</p>'
                    '<p><i>%s</i></p>' % report_task.error)
    else:
        if len(report_task.report_data) > 0:
            for report_data in report_task.report_data:
                rownum = table.rowCount()
                table.insertRow(rownum)
                district_item = QTableWidgetItem(report_data[1])
                district_item.setWhatsThis(str(report_data[0]))
                table.setItem(rownum, 0, district_item)
                table.setItem(rownum, 1, QTableWidgetItem(report_data[2]))
                table.setItem(rownum, 2, QTableWidgetItem(report_data[3]))
                table.setItem(rownum, 3, QTableWidgetItem(report_data[4]))
                table.setItem(rownum, 4, QTableWidgetItem(report_data[5]))
                table.setItem(rownum, 5, QTableWidgetItem(';'.join(report_data[6])))
                table.setItem(rownum, 6, QTableWidgetItem(';'.join(report_data[7])))
                table.setItem(rownum, 7, QTableWidgetItem(report_data[8]))
            iface.addTabifiedDockWidget(Qt.BottomDockWidgetArea, dialog, [], True)
        else:
            showMessage(dialog, 'Zestawienie EGiB - działka', 'Brak obiektów do wyświetlenia')
