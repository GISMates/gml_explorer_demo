from qgis.PyQt.QtWidgets import QMessageBox, QTableWidgetItem
from qgis.PyQt.QtCore import QThread, pyqtSignal
from qgis.core import QgsProject
import qgis

from .func_box import *
from ..progress.progress_screen import ProgressScreen

building_status_map = {"1": "wybudowany",
                       "2": "w budowie",
                       "3": "budynek do rozbiórki",
                       "4": "projektowany"}

building_pkob_map = {"1110": "budynki mieszkalne jednorodzinne",
                     "1121": "budynki o dwóch mieszkaniach",
                     "1122": "budynki o trzech i więcej mieszkaniach",
                     "1130": "budynki zbiorowego zamieszkania",
                     "1211": "budynki hoteli",
                     "1212": "budynki zakwaterowania turystycznego, pozostałe",
                     "1220": "budynki biurowe",
                     "1230": "budynki handlowo-usługowe",
                     "1241": "budynki łączności, dworców i terminali",
                     "1242": "budynki garaży",
                     "1251": "budynki przemysłowe",
                     "1252": "zbiorniki, silosy i budynki magazynowe",
                     "1261": "ogólnodostępne obiekty kulturalne",
                     "1262": "budynki muzeów i bibliotek",
                     "1263": "budynki szkół i instytucji badawczych",
                     "1264": "budynki szpitali i zakładów opieki medycznej",
                     "1265": "budynki kultury fizycznej",
                     "1271": "budynki gospodarstw rolnych",
                     "1272": "budynki przeznaczone do sprawowania kultu religijnego i czynności religijnych",
                     "1273": "obiekty budowlane wpisane do rejestru zabytków i objęte indywidualną ochroną konserwatorską oraz nieruchome, archeologiczne dobra kultury",
                     "1274": "pozostałe budynki niemieszkalne, gdzie indziej nie wymienione"}

building_fsb_map = {"1110.Dj": "budynek jednorodzinny",
                    "1110.Dl": "dom letniskowy",
                    "1110.Ls": "leśniczówka",
                    "1110.In": "inny budynek mieszkalny jednorodzinny",
                    "1121.Db": "budynek o dwóch mieszkaniach",
                    "1122.Dw": "budynek o trzech i więcej mieszkaniach",
                    "1130.Bs": "bursa szkolna",
                    "1130.Db": "dom dla bezdomnych",
                    "1130.Dd": "dom dziecka",
                    "1130.Os": "dom opieki społecznej",
                    "1130.Dp": "dom parafialny",
                    "1130.Ds": "dom studencki",
                    "1130.Dz": "dom zakonny",
                    "1130.Hr": "hotel robotniczy",
                    "1130.t": "internat",
                    "1130.Kl": "klasztor",
                    "1130.Km": "budynek mieszkalny na terenie koszar",
                    "1130.Po": "placówka opiekuńczo-wychowawcza",
                    "1130.Ra": "rezydencja ambasadora",
                    "1130.Rb": "rezydencja biskupia",
                    "1130.Rp": "rezydencja prezydencka",
                    "1130.Zk": "budynki mieszkalne na terenie zakładów karnych i aresztów",
                    "1130.Zp": "budynki mieszkalne na terenie zakładów poprawczych",
                    "1130.In": "inny budynek zbiorowego zamieszkania",
                    "1211.Dw": "dom weselny",
                    "1211.Ht": "hotel",
                    "1211.Mt": "motel",
                    "1211.Pj": "pensjonat",
                    "1211.Rj": "restauracja",
                    "1211.Zj": "zajazd",
                    "1211.In": "inny budynek pełniący funkcję hotelu",
                    "1212.Dk": "domek kempingowy",
                    "1212.Dr": "dom rekolekcyjny z zakwaterowaniem turystycznym",
                    "1212.Dw": "dom wypoczynkowy",
                    "1212.Os": "ośrodek szkoleniowo-wypoczynkowy",
                    "1212.St": "schronisko turystyczne",
                    "1212.In": "inny budynek zakwaterowania turystycznego",
                    "1220.Bk": "bank",
                    "1220.Ck": "centrum konferencyjne",
                    "1220.Km": "kuria metropolitarna",
                    "1220.Mn": "ministerstwo",
                    "1220.Pd": "placówka dyplomatyczna lub konsularna",
                    "1220.Pc": "policja",
                    "1220.Pk": "prokuratura",
                    "1220.Pg": "przejście graniczne",
                    "1220.Sd": "sąd",
                    "1220.Sf": "siedziba firmy lub firm",
                    "1220.Pw": "starostwo powiatowe",
                    "1220.Sg": "straż graniczna",
                    "1220.Sp": "straż pożarna",
                    "1220.Uc": "urząd celny",
                    "1220.Ug": "urząd gminy",
                    "1220.Um": "urząd miasta",
                    "1220.Umg": "urząd miasta i gminy",
                    "1220.Mr": "urząd marszałkowski",
                    "1220.Up": "placówka pocztowa",
                    "1220.Uw": "urząd wojewódzki",
                    "1220.Ap": "inny urząd administracji publicznej",
                    "1230.Ap": "apteka",
                    "1230.Ch": "centrum handlowe",
                    "1230.Dh": "dom towarowy lub handlowy",
                    "1230.Ht": "hala targowa",
                    "1230.Hw": "hala wystawowa",
                    "1230.Hm": "hipermarket lub supermarket",
                    "1230.Ph": "pawilon handlowo-usługowy",
                    "1230.So": "stacja obsługi pojazdów",
                    "1230.Sp": "stacja paliw",
                    "1230.In": "inny budynek handlowo-usługowy",
                    "1241.Kk": "budynek kontroli ruchu kolejowego",
                    "1241.Kp": "budynek kontroli ruchu powietrznego",
                    "1241.Ct": "centrum telekomunikacyjne",
                    "1241.Da": "budynek dworca autobusowego",
                    "1241.Dk": "budynek dworca kolejowego",
                    "1241.Dl": "budynek dworca lotniczego",
                    "1241.Hg": "hangar",
                    "1241.Lm": "latarnia morska",
                    "1241.Lk": "lokomotywownia lub wagonownia",
                    "1241.Kg": "stacja kolejki górskiej lub wyciągu krzesełkowego",
                    "1241.Rt": "stacja nadawcza radia i telewizji",
                    "1241.Tp": "terminal portowy",
                    "1241.Ab": "budynek zajezdni autobusowej",
                    "1241.Tr": "budynek zajezdni tramwajowej",
                    "1241.Tb": "budynek zajezdni trolejbusowej",
                    "1241.In": "inny budynek transportu lub łączności",
                    "1242.Gr": "garaż jednopoziomowy",
                    "1242.Pw": "garaż wielopoziomowy",
                    "1251.El": "budynek elektrociepłowni",
                    "1251.Ek": "budynek elektrowni",
                    "1251.Kt": "budynek kotłowni",
                    "1251.Mn": "młyn",
                    "1251.Pr": "budynek przeznaczony na produkcję",
                    "1251.Rf": "budynek rafinerii",
                    "1251.Ss": "budynek spalarni śmieci",
                    "1251.Wr": "warsztat remontowo-naprawczy",
                    "1251.Wt": "budynek wiatraka",
                    "1251.In": "inny budynek przemysłowy",
                    "1252.Sp": "budynek spedycji",
                    "1252.Ch": "chłodnia",
                    "1252.El": "elewator",
                    "1252.Mg": "magazyn",
                    "1252.Sl": "silos",
                    "1252.Gz": "zbiornik na gaz",
                    "1252.Ci": "zbiornik na ciecz",
                    "1252.In": "inny budynek magazynowy",
                    "1261.Oz": "budynek ogrodu zoologicznego lub botanicznego",
                    "1261.Dk": "dom kultury",
                    "1261.Fh": "filharmonia",
                    "1261.Hw": "hala widowiskowa",
                    "1261.Ks": "kasyno",
                    "1261.Kn": "kino",
                    "1261.Kl": "klub dyskoteka",
                    "1261.Sz": "schronisko dla zwierząt",
                    "1261.Op": "opera",
                    "1261.Tt": "teatr",
                    "1261.In": "inny budynek wykorzystywany na cele kultury",
                    "1262.Ar": "archiwum",
                    "1262.Bl": "biblioteka",
                    "1262.Ci": "centrum informacyjne",
                    "1262.Gs": "galeria sztuki",
                    "1262.Mz": "muzeum",
                    "1262.In": "inny budynek muzealny lub biblioteczny",
                    "1263.Ob": "obserwatorium lub planetarium",
                    "1263.Pb": "placówka badawcza",
                    "1263.Ps": "przedszkole",
                    "1263.Sh": "stacja hydrologiczna",
                    "1263.Sm": "stacja meteorologiczna",
                    "1263.Sp": "szkoła podstawowa",
                    "1263.Sd": "szkoła ponadpodstawowa",
                    "1263.Sw": "szkoła wyższa",
                    "1263.In": "inny budynek o charakterze edukacyjnym",
                    "1264.Hs": "hospicjum",
                    "1264.Iw": "izba wytrzeźwień",
                    "1264.Jr": "jednostka ratownictwa medycznego",
                    "1264.Kw": "klinika weterynaryjna",
                    "1264.Oo": "ośrodek opieki społecznej",
                    "1264.Po": "placówka ochrony zdrowia",
                    "1264.St": "sanatorium",
                    "1264.Sk": "stacja krwiodawstwa",
                    "1264.Ss": "stacja sanitarno-epidemiologiczna",
                    "1264.Sz": "szpital",
                    "1264.Zb": "żłobek",
                    "1264.In": "inny budynek opieki medycznej",
                    "1265.Hs": "hala sportowa",
                    "1265.Ht": "halowy tor gokartowy",
                    "1265.Ks": "klub sportowy",
                    "1265.Kt": "korty tenisowe",
                    "1265.Kr": "kręgielnia",
                    "1265.Pl": "pływalnia",
                    "1265.Sg": "budynek sali gimnastycznej",
                    "1265.St": "strzelnica",
                    "1265.Sl": "sztuczne lodowisko",
                    "1265.Uj": "ujeżdżalnia",
                    "1265.In": "inny budynek kultury fizycznej",
                    "1271.Bg": "budynek składowy w gospodarstwie rolnym",
                    "1271.Bp": "budynek inwentarski w gospodarstwie rolnym",
                    "1271.St": "budynek stadniny koni",
                    "1271.Sz": "szklarnia lub cieplarnia",
                    "1271.In": "inny budynek w gospodarstwie rolnym",
                    "1272.Bc": "budynek cmentarny",
                    "1272.Ck": "cerkiew",
                    "1272.Dp": "dom pogrzebowy",
                    "1272.Dz": "dzwonnica",
                    "1272.Kp": "kaplica",
                    "1272.Ks": "kościół",
                    "1272.Kr": "krematorium",
                    "1272.Mc": "meczet",
                    "1272.Sn": "synagoga",
                    "1272.Ir": "inny budynek kultu religijnego",
                    "1273.Zb": "zabytek bez funkcji użytkowej",
                    "1274.As": "areszt śledczy",
                    "1274.Bc": "bacówka",
                    "1274.Sc": "schronisko dla nieletnich",
                    "1274.Sg": "stacja gazowa",
                    "1274.Sp": "stacja pomp",
                    "1274.St": "stacja transformatorowa",
                    "1274.Tp": "toaleta publiczna",
                    "1274.Zk": "niemieszkalne zabudowania koszarowe",
                    "1274.Zp": "zakład karny lub poprawczy",
                    "1274.In": "budynek nie określony innym atrybutem FSB"}

building_kst_map = {"101": "budynki przemysłowe",
                    "102": "budynki transportu i łączności",
                    "103": "budynki handlowo-usługowe",
                    "104": "zbiorniki, silosy i budynki magazynowe",
                    "105": "budynki biurowe",
                    "106": "budynki szpitali i inne budynki opieki zdrowotnej",
                    "107": "budynki oświaty, nauki i kultury oraz budynki sportowe",
                    "108": "budynki produkcyjne, usługowe i gospodarcze dla rolnictwa",
                    "109": "pozostałe budynki niemieszkalne",
                    "110": "budynki mieszkalne"}

building_walls_map = {"1": "mur",
                      "2": "drewno",
                      "3": "inny"}


class BuildingReportOldTask(QThread):
    progress_changed = pyqtSignal(object)

    def __init__(self, dockwidget):
        super(BuildingReportOldTask, self).__init__()
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
                    building_status = building_status_map.get(getFeatureValue(building_feature, 'statusBudynku'))
                    building_pkob = building_pkob_map.get(getFeatureValue(building_feature, 'klasaWgPKOB'))
                    building_fsb = building_fsb_map.get(getFeatureValue(building_feature, 'glownaFunkcjaBudynku'))
                    building_kst = building_kst_map.get(getFeatureValue(building_feature, 'rodzajWgKST'))
                    building_kw = getFeatureValue(building_feature, 'numerKW')
                    building_walls = building_walls_map.get(getFeatureValue(building_feature, 'materialScianZewn'))
                    building_agf = getFeatureValue(building_feature, 'liczbaKondygnacjiNadziemnych')
                    building_uf = getFeatureValue(building_feature, 'liczbaKondygnacjiPodziemnych')
                    building_area = getFeatureValue(building_feature, 'powZabudowy')
                    building_usage_area = getFeatureValue(building_feature, 'powierzchniaUzytkowaBudynkuZObmiarow')
                    building_completion_year = getFeatureValue(building_feature, 'rokZakonczeniaBudowy')
                    address_iter = self.address_layer.getFeatures("gml_id = '%s'" % getFeatureValue(building_feature, self.building_address_relation)) if self.address_layer else []
                    building_address = ' '
                    for address_feature in address_iter:
                        place = getFeatureValue(address_feature, "miejscowosc")
                        street = getFeatureValue(address_feature, "ulica")
                        house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                        address = street
                        address += ' %s' % house_number if house_number != ' ' else ''
                        address += ', %s' % place if address != ' ' else place
                        building_address = address if building_address == ' ' or building_address == address else "%s\n%s" % (building_address, address)
                    self.buildings.append((field_id,
                                           building_feature.id(),
                                           building_id,
                                           building_status,
                                           building_pkob,
                                           building_fsb,
                                           building_kst,
                                           building_kw,
                                           building_walls,
                                           building_agf,
                                           building_uf,
                                           building_area,
                                           building_usage_area,
                                           building_completion_year,
                                           building_address,
                                           building_geom_wkt))
        except Exception as e:
            self.error = e


def generateBuildingReportOld(dockwidget, only_selected):
    missing_layers_message = ''
    address_layer, missing_layers_message = getLayer('EGB_Adres', missing_layers_message)
    building_layer, missing_layers_message = getLayer('EGB_Budynek_powierzchnia', missing_layers_message)
    field_layer, missing_layers_message = getLayer('EGB_DzialkaEwidencyjna_powierzchnia', missing_layers_message)
    relations_layer, missing_layers_message = getLayer('relacje', missing_layers_message)
    table_columns = columns = ['Id działki', 'Id budynku', 'Status', 'PKOB', 'FSB', 'KST', 'Nr KW', 'Mat. ścian',
                               'Kond. nadz.', 'Kond. podz.', 'P. zab. (m2)', 'P. uż. z obm. (m2)', 'Rok zak. bud.',
                               'Adres', 'Geometria']
    dialog, table = configureDialog(dockwidget, 'Budynki przynależne do działki', table_columns, building_layer)
    if relations_layer and building_layer and field_layer:
        if missing_layers_message != '':
            showMessage(dialog, 'Budynki przynależne do działki', '%s<p>Raport może nie zawierać pełej informacji</p>' % missing_layers_message)
        report_task = BuildingReportOldTask(dockwidget)
        report_task.only_selected = only_selected
        report_task.building_layer = building_layer
        report_task.field_layer = field_layer
        report_task.address_layer = address_layer
        report_task.relations_layer = relations_layer
        report_task.building_field_relation = getRelation(relations_layer, 'EGB_Budynek_powierzchnia', 'EGB_DzialkaEwidencyjna_powierzchnia')
        report_task.building_address_relation = getRelation(relations_layer, 'EGB_Budynek_powierzchnia', 'EGB_Adres')
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
                table.setItem(rownum, 8, QTableWidgetItem(building[9]))
                table.setItem(rownum, 9, QTableWidgetItem(building[10]))
                table.setItem(rownum, 10, QTableWidgetItem(building[11]))
                table.setItem(rownum, 11, QTableWidgetItem(building[12]))
                table.setItem(rownum, 12, QTableWidgetItem(building[13]))
                table.setItem(rownum, 13, QTableWidgetItem(building[14]))
                table.setItem(rownum, 14, QTableWidgetItem(building[15]))
            iface.addTabifiedDockWidget(Qt.BottomDockWidgetArea, dialog, [], True)
        else:
            showMessage(dialog, 'Budynki przynależne do działki', 'Brak obiektów do wyświetlenia')