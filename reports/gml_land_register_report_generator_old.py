import re
import os
import csv
import datetime

from qgis.PyQt.QtWidgets import QMessageBox, QFileDialog, QTableWidgetItem
from qgis.PyQt.QtCore import QThread, pyqtSignal
from qgis.core import *

from .func_box import *
from ..progress.progress_screen import ProgressScreen
from ..gml_logger_mode import GMLLoggerMode

registration_group_map = {"3": "państwowa osoba prawna",
                          "9": "kościoły i związki wyznaniowe",
                          "10": "wspólnota gruntowa"}

possession_map = {'1': 'użytkowanie wieczyste',
                  '2': 'trwały zarząd',
                  '3': 'zarząd',
                  '4': 'użytkowanie',
                  '5': 'inny rodzaj władania'}

document_type_map = {"1": "Umowa, akt notarialny",
                     "2": "Akt własności ziemi",
                     "3": "Decyzja administracyjna inna niż akt własności ziemi",
                     "4": "Orzeczenie sądu, postanowienie, wyrok",
                     "5": "Wyciąg lub odpis z księgi wieczystej",
                     "6": "Wyciąg lub odpis z księgi hipotecznej",
                     "7": "Odpis z akt KW lub zbioru dokumentów",
                     "8": "Zawiadomienie z wydziału KW sądu rejonowego",
                     "9": "Wniosek (zawiadomienie) w sprawie zmiany",
                     "10": "Wyciąg (wypis) z dokumentacji budowy budynku",
                     "11": "Protokół",
                     "12": "Ustawa",
                     "13": "Rozporządzenie",
                     "14": "Uchwała",
                     "15": "Zarządzenie",
                     "16": "Odpis lub wyciąg z innego rejestru publicznego",
                     "17": "Pełnomocnictwo (upoważnienie)",
                     "18": "Wyciąg z operatu szacunkowego",
                     "19": "Inny dokument",
                     "20": "Dokumentacja architektoniczno-budowlana",
                     "21": "Dokumentacja planistyczna",
                     "22": "Protokół z narady koordynacyjnej",
                     "23": "Umowa dzierżawy"}

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

ownership_law_map = {"1": "własność",
                     "2": "władanie na zasadach samoistnego posiadania",
                     "3": "udział we wspólnocie gruntowej",
                     "4": "nieustalone prawo własności oraz nieustalone władanie na zasadach samoistnego posiadania",
                     "5": "wspólnota gruntowa"}


class LandRegisterReportOldTask(QThread):
    progress_changed = pyqtSignal(object)

    def __init__(self, dockwidget):
        super(LandRegisterReportOldTask, self).__init__()
        self.progress_screen = ProgressScreen(self, dockwidget)

    def run(self):
        self.error = None
        try:
            self.report_excel = []
            self.reports_htmls = []
            self.report_html = f"""
                            <html>
                            <head>
                            <meta charset="UTF-8">
                            </head>
                            <style type="text/css">
                            body {{
                                font-family: "arial";
                                font-size: 12px;
                            }}
                            h1 {{
                                font-size: 20px;
                            }}
                            h2 {{
                            }}
                            h2.main {{
                                text-align: center;
                            }}
                            table {{
                                border-collapse: collapse;
                            }}
                            th {{
                                font-size: 12px;
                                vertical-align: middle;
                            }}
                            th.border {{
                                border: 1px solid black;
                                padding-top: 5px;
                                padding-left: 2px;
                                padding-right: 2px;
                            }}
                            td {{
                                font-size: 11px;
                                vertical-align: middle;
                            }}
                            td.border {{
                                border: 1px solid black;
                                padding-top: 5px;
                                padding-left: 2px;
                                padding-right: 2px;
                            }}
                            .break {{
                                word-wrap: break-word;
                            }}
                            .center {{
                                text-align: center;
                            }}
                            </style>
                            <body>"""
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
                documents = []
                buildings = []
                dicts = {}
                jrg_code = ' '
                land_unit = ' '
                district = ' '
                voivodeship = ' '
                county = ' '
                commune = ' '
                jrg_identity = ' '
                registration_group = ' '
                field_address = ' '
                field_id = getFeatureValue(field_feature, 'idDzialki')
                field_number = re.sub("(.*)\\.(.*)$", r"\2", field_id)
                field_kw = getFeatureValue(field_feature, "numerKW")
                field_area = getFeatureValue(field_feature, 'powierzchniaEwidencyjna')
                addresses_ids = "'%s'" % getFeatureValue(field_feature, self.field_address_relation).replace(", ", "', '")
                address_iter = self.address_layer.getFeatures("gml_id IN(%s)" % addresses_ids) if self.address_layer else []
                for address_feature in address_iter:
                    voivodeship = getFeatureValue(address_feature, "wojewodztwo")
                    county = getFeatureValue(address_feature, "powiat")
                    commune = getFeatureValue(address_feature, "gmina")
                    place = getFeatureValue(address_feature, "miejscowosc")
                    street = getFeatureValue(address_feature, "ulica")
                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                    address = street
                    address += ' %s' % house_number if house_number != ' ' else ''
                    address += ', %s' % place if address != ' ' else place
                    field_address = address if field_address == ' ' or field_address == address else "%s<br> %s" % (field_address, address)
                jrg_ids = getFeatureValue(field_feature, self.field_jrg_relation)
                for jrg_id in jrg_ids.split(', '):
                    jrg_iter = self.jrg_layer.getFeatures("gml_id = '%s'" % jrg_id) if self.jrg_layer else []
                    for jrg_feature in jrg_iter:
                        jrg_identity = getFeatureValue(jrg_feature, 'idJednostkiRejestrowej')
                        jrg_code = re.sub('^(.*)G(.*)$', r'G.\2', jrg_identity)
                        district_ids = "'%s'" % getFeatureValue(jrg_feature, self.jrg_district_relation).replace(", ", "', '")
                        district_iter = self.district_layer.getFeatures("gml_id IN(%s)" % district_ids) if self.district_layer else []
                        for district_feature in district_iter:
                            district = getFeatureValue(district_feature, 'nazwaWlasna')
                            land_unit_ids = "'%s'" % district_feature.attribute(self.district_land_unit_relation).replace(", ", "', '")
                            land_unit_iter = self.land_unit_layer.getFeatures("gml_id IN(%s)" % land_unit_ids) if self.land_unit_layer else []
                            for land_unit_feature in land_unit_iter:
                                land_unit = getFeatureValue(land_unit_feature, "nazwaWlasna")
                    possesion_iter = self.possession_layer.getFeatures(self.possession_jrg_relation + " LIKE '%" + jrg_id + "%'") if self.possession_layer else []
                    for ownership_feature in possesion_iter:
                        possession_law = possession_map.get(getFeatureValue(ownership_feature, 'rodzajWladania'), ' ')
                        ownership_share = getFeatureValue(ownership_feature, 'licznikUlamkaOkreslajacegoWartoscUdzialu')
                        denominator = getFeatureValue(ownership_feature, 'mianownikUlamkaOkreslajacegoWartoscUdzialu')
                        if denominator != ' ':
                            ownership_share += '/%s' % denominator
                        ownership_single = getFeatureValue(ownership_feature, self.possession_single_owner_relation)
                        ownership_marriage = getFeatureValue(ownership_feature, self.possession_marriage_owner_relation)
                        ownership_institution = getFeatureValue(ownership_feature, self.possession_intitution_owner_relation)
                        ownership_group = getFeatureValue(ownership_feature, self.possession_group_owner_relation)
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
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                                ownerships.append((owner, address, possession_law, ownership_share))
                        elif ownership_marriage != ' ':
                            owner_ids = "'%s'" % ownership_marriage.replace(", ", "', '")
                            owner_marriage_iter = self.owner_marriage_layer.getFeatures("gml_id IN(%s)" % owner_ids) if self.owner_marriage_layer else []
                            for owner_feature in owner_marriage_iter:
                                marriage_ids = "'%s'" % getFeatureValue(owner_feature, self.marriage_owner_single_owner_relation[0])
                                marriage_partner = getFeatureValue(owner_feature, self.marriage_owner_single_owner_relation[1])
                                marriage_ids = "%s, '%s'" % (marriage_ids,marriage_partner) if marriage_ids != ' ' else "'%s'" % marriage_partner
                                owners = ''
                                addresses_ids = []
                                owner_single_iter = self.owner_single_layer.getFeatures("gml_id in (%s)" % marriage_ids) if self.owner_single_layer else []
                                for owner_sub_feature in owner_single_iter:
                                    owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')
                                    surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                    surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                    owners += owner if owners == '' else "<br>%s" % owner
                                    addresses_ids.append(getFeatureValue(owner_sub_feature, self.single_owner_address_relation))
                                addresses = ' '
                                address_iter = self.address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if self.address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                                    addresses = address if addresses == ' ' or addresses == address else "%s<br> %s" % (addresses, address)
                                ownerships.append((owners, addresses, possession_law, ownership_share))
                        elif ownership_institution != ' ':
                            owner_ids = "'%s'" % ownership_institution.replace(", ", "', '")
                            owner_institution_iter = self.owner_institution_layer.getFeatures("gml_id IN(%s)" % owner_ids) if self.owner_institution_layer else []
                            for owner_feature in owner_institution_iter:
                                owner = getFeatureValue(owner_feature, 'nazwaPelna')
                                address = ' '
                                address_iter = self.address_layer.getFeatures("gml_id = '%s'" % getFeatureValue(owner_feature, self.institution_owner_address_relation)) if self.address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                                ownerships.append((owner, address, possession_law, ownership_share))
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
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                                    ownerships.append((owners[c], address, possession_law, ownership_share))
                                    c += 1
                    ownership_iter = self.ownership_layer.getFeatures(self.ownership_jrg_relation + " LIKE '%" + jrg_id + "%'") if self.ownership_layer else []
                    for ownership_feature in ownership_iter:
                        registration_group = getFeatureValue(ownership_feature, "grupaRejestrowa")
                        fillDict(dicts, 'Grupa rej.', registration_group, registration_group_map)
                        ownership_law_code = getFeatureValue(ownership_feature, 'rodzajPrawa')
                        ownership_law = ownership_law_map.get(ownership_law_code, " ")
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
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                                ownerships.append((owner, address, ownership_law, ownership_share))
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
                                    owners += owner if owners == '' else "<br>%s" % owner
                                    addresses_ids.append(getFeatureValue(owner_sub_feature, self.single_owner_address_relation))
                                addresses = ' '
                                address_iter = self.address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if self.address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                                    addresses = address if addresses == ' ' or addresses == address else "%s<br> %s" % (addresses, address)
                                ownerships.append((owners, addresses, ownership_law, ownership_share))
                        elif ownership_institution != ' ':
                            owner_ids = "'%s'" % ownership_institution.replace(", ", "', '")
                            owner_institution_iter = self.owner_institution_layer.getFeatures("gml_id IN(%s)" % owner_ids) if self.owner_institution_layer else []
                            for owner_feature in owner_institution_iter:
                                owner = getFeatureValue(owner_feature, 'nazwaPelna')
                                address = ' '
                                address_iter = self.address_layer.getFeatures("gml_id = '%s'" % getFeatureValue(owner_feature, self.institution_owner_address_relation)) if self.address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                                ownerships.append((owner, address, ownership_law, ownership_share))
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
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "nrLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                                    ownerships.append((owners[c], address, ownership_law, ownership_share))
                                    c += 1
                landuse_ids = "'%s'" % getFeatureValue(field_feature, self.field_landuses_relation).replace(", ", "', '")
                landuse_iter = self.landuse_layer.getFeatures("gml_id IN(%s)" % landuse_ids) if self.landuse_layer else []
                for landuse_feature in landuse_iter:
                    ofu = getFeatureValue(landuse_feature, 'oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OFU')
                    ozu = getFeatureValue(landuse_feature, 'oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OZU')
                    ozk = getFeatureValue(landuse_feature, 'oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OZK')
                    area = getFeatureValue(landuse_feature, 'powierzchniaEwidencyjnaKlasouzytku')
                    landuses.append((ofu, ozu, ozk, area))
                changes_ids = "'%s'" % getFeatureValue(field_feature, self.field_changes_relation).replace(", ", "', '")
                changes_iter = self.changes_layer.getFeatures("gml_id IN (%s)" % changes_ids) if self.changes_layer else []
                for changes_feature in changes_iter:
                    report_ids = "'%s'" % getFeatureValue(changes_feature, self.changes_report_relation).replace(", ", "', '")
                    report_iter = self.report_layer.getFeatures("gml_id IN (%s)" % report_ids) if self.report_layer else []
                    for report_feature in report_iter:
                        report_date = getFeatureValue(report_feature, 'dataPrzyjeciaDoPZGIK')
                        report_id = getFeatureValue(report_feature, 'identyfikatorOperatuWgPZGIK')
                        report_author = getFeatureValue(report_feature, 'nazwaTworcy')
                        report_desc = getFeatureValue(report_feature, 'opisOperatu')
                        documents.append(('Operat', 'Operat techniczny', report_date, report_id, report_author, report_desc))
                document_ids = "'%s'" % getFeatureValue(field_feature, self.field_document_relation).replace(", ", "', '")
                document_iter = self.document_layer.getFeatures("gml_id IN (%s)" % document_ids) if self.document_layer else []
                for doc_feature in document_iter:
                    doc_type = getFeatureValue(doc_feature, 'rodzajDokumentu')
                    doc_date = getFeatureValue(doc_feature, 'dataDokumentu')
                    doc_signature = getFeatureValue(doc_feature, 'sygnaturaDokumentu')
                    doc_id = getFeatureValue(doc_feature, 'oznKancelaryjneDokumentu')
                    if doc_id != ' ':
                        doc_signature += '/%s' % doc_id if doc_signature != ' ' else doc_id
                    doc_author = getFeatureValue(doc_feature, 'nazwaTworcyDokumentu')
                    doc_desc = getFeatureValue(doc_feature, 'opisDokumentu')
                    documents.append(('Dokument', document_type_map.get(doc_type, ' '), doc_date, doc_signature, doc_author, doc_desc))
                building_iter = self.building_layer.getFeatures(f'{self.building_field_relation} LIKE \'%{getFeatureValue(field_feature, "gml_id")}%\'') if self.building_layer else []
                for building_feature in building_iter:
                    building_id = getFeatureValue(building_feature, 'idBudynku')
                    building_status = getFeatureValue(building_feature, 'statusBudynku')
                    fillDict(dicts, 'Status', building_status, building_status_map)
                    building_pkob = getFeatureValue(building_feature, 'klasaWgPKOB')
                    fillDict(dicts, 'PKOB', building_pkob, building_pkob_map)
                    building_fsb = getFeatureValue(building_feature, 'glownaFunkcjaBudynku')
                    fillDict(dicts, 'FSB', building_fsb.replace(' ', '.'), building_fsb_map)
                    building_fsb = '-' if building_fsb == ' ' else building_fsb
                    building_kst = getFeatureValue(building_feature, 'rodzajWgKST')
                    building_kst = '-' if building_kst == ' ' else building_kst
                    fillDict(dicts, 'KST', building_kst, building_kst_map)
                    building_kw = getFeatureValue(building_feature, 'numerKW')
                    building_walls = getFeatureValue(building_feature, 'materialScianZewn')
                    fillDict(dicts, 'Mat. ścian', building_walls, building_walls_map)
                    building_agf = getFeatureValue(building_feature, 'liczbaKondygnacjiNadziemnych')
                    building_agf = '-' if building_agf == ' ' else building_agf
                    building_uf = getFeatureValue(building_feature, 'liczbaKondygnacjiPodziemnych')
                    building_uf = '-' if building_uf == ' ' else building_uf
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
                        building_address = address if building_address == ' ' or building_address == address else "%s<br> %s" % (building_address, address)
                    buildings.append((building_id,
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
                                      building_address))

                ownerships_html = ""
                if len(ownerships) > 0:
                    ownerships_html += f"""
                    <table>
                        <tr>
                            <th class="border">Właściciel</th>
                            <th class="border">Adres</th>
                            <th class="border">Rodzaj prawa</th>
                            <th class="border">Udział</th>
                        </tr>"""
                    for ownership in ownerships:
                        ownerships_html += f"""
                        <tr>
                            <td class="border">{ownership[0]}</td>
                            <td class="border">{ownership[1]}</td>
                            <td class="border center">{ownership[2]}</td>
                            <td class="border center">{ownership[3]}</td>
                        </tr>"""
                    ownerships_html += "</table>"

                documents_html = ""
                if len(documents) > 0:
                    documents_html = f"""
                    <br>
                    <h2>DOKUMENTY</h2>
                    <table>
                    <tr>
                        <th class="border">Typ</th>
                        <th class="border">Rodzaj</th>
                        <th class="border">Data dok./przek. do zas.</th>
                        <th class="border">Sygnatura/ozn. kanc.</th>
                        <th class="border">Nazwa twórcy</th>
                        <th class="border">Opis dokumentu</th>
                    </tr>"""
                    for doc in documents:
                        documents_html += f"""
                        <tr>
                            <td class="border center">{doc[0]}</td>
                            <td class="border center">{doc[1]}</td>
                            <td class="border center">{doc[2]}</td>
                            <td class="border break center">{doc[3]}</td>
                            <td class="border center">{doc[4]}</td>
                            <td class="border center">{doc[5]}</td>
                        </tr>"""
                    documents_html += "</table>"

                landuses_html = ""
                if len(landuses) > 0:
                    landuses_html += f"""
                    <br>
                    <h2>KLASOUŻYTKI</h2>
                    <table>
                        <tr>
                            <th class="border" style="width:80px">Sposób<br>zagospod.</th>
                            <th class="border" style="width:80px">Rodzaj<br>użytku</th>
                            <th class="border" style="width:80px">Klasa<br>bonitacyjna</th>
                            <th class="border" style="width:100px">Powierzchnia<br>ewidencyjna</th>
                        </tr>
                    """
                    landuses_area = 0
                    for landuse in landuses:
                        landuses_html += f"""
                        <tr>
                            <td class="border center">{landuse[0]}</td>
                            <td class="border center">{landuse[1]}</td>
                            <td class="border center">{landuse[2]}</td>
                            <td class="border center">{landuse[3]}</td>
                        </tr>"""
                        try:
                            landuse_area = round(float(landuse[3]), 4)
                        except:
                            landuse_area = 0
                        landuses_area += landuse_area
                    landuses_area = round(landuses_area, 4)
                    landuses_html += f"""
                        <tr>
                            <td colspan="3" align="right" style="padding-right: 5px;padding-top: 5px"><i>Suma powierzchni:</i></td>
                            <td class="border center"><b>{landuses_area}</b></td>
                        </tr>
                    </table>"""

                buildings_html = ""
                if len(buildings) > 0:
                    buildings_html = """
                        <br>
                        <h2>BUDYNKI</h2>
                        <table>
                            <tr>
                                <th class="border" style="width: 100px;border: 1px solid black" rowspan="2">Ident.</th>
                                <th class="border" rowspan="2">Status</th>
                                <th class="border" rowspan="2">PKOB</th>
                                <th class="border">FSB</th>
                                <th class="border" style="width: 100px;border: 1px solid black" rowspan="2">Nr KW</th>
                                <th class="border" rowspan="2">Mat. ścian</th>
                                <th class="border">Kond. naz.</th>
                                <th class="border" rowspan="2">P.<br>zab.<br>(m2).</th>
                                <th class="border" rowspan="2">P. uż.<br>z obm.<br>(m2).</th>
                                <th class="border" rowspan="2">Rok<br>zak.<br>bud.</th>
                                <th class="border" style="width: 120px;border: 1px solid black" rowspan="2">Adres budynku<br>Nr rej. zabytków</th>
                            </tr>
                            <tr>
                                <th class="border">KST</th>
                                <th class="border">Kond. podz.</th>
                            </tr>"""
                    for building in buildings:
                        buildings_html += f"""
                        <tr>
                            <td class="border break" rowspan="2">{building[0]}</td>
                            <td class="border center" rowspan="2">{building[1]}</td>
                            <td class="border center" rowspan="2">{building[2]}</td>
                            <td class="border center">{building[3]}</td>
                            <td class="border break" rowspan="2">{building[5]}</td>
                            <td class="border center" rowspan="2">{building[6]}</td>
                            <td class="border center">{building[7]}</td>
                            <td class="border center" rowspan="2">{building[9]}</td>
                            <td class="border center" rowspan="2">{building[10]}</td>
                            <td class="border center" rowspan="2">{building[11]}</td>
                            <td class="border" rowspan="2">{building[12]}</td>
                        </tr>
                        <tr>
                            <td class="border center">{building[4]}</td>
                            <td class="border center">{building[8]}</td>
                        </tr>"""
                    buildings_html += "</table>"
                dicts_html = ""
                if len(dicts) > 0:
                    dicts_html += "<h2>Oznaczenia</h2><ul>"
                    for dict_name, bdict in dicts.items():
                        dicts_html += f"""<li class="main">{dict_name}</li>
                        <ul>"""
                        for k, v in bdict.items():
                            dicts_html += f"<li>{k}: {v}</li>"
                        dicts_html += "</ul>"
                    dicts_html += "</ul>"
                page_html = f"""
                                    <h2 class="main">INFORMACJA Z REJESTRU GRUNTÓW</h2>
                                    <h1 align="right"><u>{jrg_code}</u><br><span style="font-size: 16px">{field_number}<span></h1>
                                    <table>
                                        <tr>
                                            <td><i>Jedn. ew.:</i> {land_unit}</td>
                                            <td style="width: 100px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                            <td><i>Jedn. rej.:</i> {jrg_identity}</td>
                                        </tr>
                                        <tr>
                                            <td><i>Obręb:</i> {district}</td>
                                            <td style="width: 100px"></td>
                                            <td><i>Grupa rej.:</i> {registration_group}</td>
                                        </tr>
                                        <tr>
                                            <td><i>Ident.:</i> {field_id}</td>
                                            <td style="width: 100px"></td>
                                            <td><i>Adres:</i> {field_address}</td>
                                        </tr>
                                        <tr>
                                            <td><i>Pow. ew.:</i> {field_area}</td>
                                        </tr>
                                        <tr>
                                            <td><i>Woj.:</i> {voivodeship}</td>
                                            <td style="width: 100px"></td>
                                            <td><i>Wydruk z dn.:</i> {datetime.date.today()}</td>
                                        </tr>
                                        <tr>
                                            <td><i>Powiat:</i> {county}</td>
                                            <td style="width: 100px"></td>
                                            <td><i>Uwagi:</i> {''}</td>
                                        </tr>
                                        <tr>
                                            <td><i>Gmina:</i> {commune}</td>
                                        </tr>
                                        <tr>
                                            <td><i>Nr KW:</i> {field_kw}</td>
                                        </tr>
                                    </table>
                                    {ownerships_html}
                                    {landuses_html}
                                    {documents_html}
                                    {buildings_html}
                                    {dicts_html}
                                    """
                self.report_html += page_html
                self.reports_htmls.append((field_feature.id(), field_id, f"""<html>
                                                <head>
                                                <meta charset="UTF-8">
                                                </head>
                                                <style type="text/css">
                                                body {{
                                                    font-family: "arial";
                                                    font-size: 12px;
                                                }}
                                                h1 {{
                                                    font-size: 20px;
                                                }}
                                                h2 {{
                                                }}
                                                h2.main {{
                                                    text-align: center;
                                                }}
                                                table {{
                                                    border-collapse: collapse;
                                                }}
                                                th {{
                                                    font-size: 12px;
                                                    vertical-align: middle;
                                                }}
                                                th.border {{
                                                    border: 1px solid black;
                                                    padding-top: 5px;
                                                    padding-left: 2px;
                                                    padding-right: 2px;
                                                }}
                                                td {{
                                                    font-size: 11px;
                                                    vertical-align: middle;
                                                }}
                                                td.border {{
                                                    border: 1px solid black;
                                                    padding-top: 5px;
                                                    padding-left: 2px;
                                                    padding-right: 2px;
                                                    }}
                                                .break {{
                                                    word-wrap: break-word;
                                                }}
                                                .center {{
                                                    text-align: center;
                                                }}
                                                </style>
                                                <body>
                                        <h2 class="main">INFORMACJA Z REJESTRU GRUNTÓW</h2>
                                        <h1 align="right"><u>{jrg_code}</u><br><span style="font-size: 16px">{field_number}<span></h1>
                                        <table>
                                            <tr>
                                                <td><i>Jedn. ew.:</i> {land_unit}</td>
                                                <td style="width: 100px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td><i>Jedn. rej.:</i> {jrg_identity}</td>
                                            </tr>
                                            <tr>
                                                <td><i>Obręb:</i> {district}</td>
                                                <td style="width: 100px"></td>
                                                <td><i>Grupa rej.:</i> {registration_group}</td>
                                            </tr>
                                            <tr>
                                                <td><i>Ident.:</i> {field_id}</td>
                                                <td style="width: 100px"></td>
                                                <td><i>Adres:</i> {field_address}</td>
                                            </tr>
                                            <tr>
                                                <td><i>Pow. ew.:</i> {field_area}</td>
                                            </tr>
                                            <tr>
                                                <td><i>Woj.:</i> {voivodeship}</td>
                                                <td style="width: 100px"></td>
                                                <td><i>Wydruk z dn.:</i> {datetime.date.today()}</td>
                                            </tr>
                                            <tr>
                                                <td><i>Powiat:</i> {county}</td>
                                                <td style="width: 100px"></td>
                                                <td><i>Uwagi:</i> {''}</td>
                                            </tr>
                                            <tr>
                                                <td><i>Gmina:</i> {commune}</td>
                                            </tr>
                                            <tr>
                                                <td><i>Nr KW:</i> {field_kw}</td>
                                            </tr>
                                        </table>
                                        {ownerships_html}
                                        {landuses_html}
                                        {documents_html}
                                        {buildings_html}
                                        {dicts_html}
                                        </body>
                                        </html>
                                        """))
                self.report_excel.append([[jrg_code, field_number],
                                          {'B': [land_unit, district, field_id, field_area, voivodeship, county,
                                                 commune, field_kw],
                                           'E': [jrg_identity, registration_group, field_address, '',
                                                 datetime.date.today(), '']},
                                          landuses, ownerships, documents, buildings, dicts])
            self.report_html += "</body></html>"
        except Exception as e:
            self.error = e


def generateLandRegisterReportOld(dockwidget, only_selected):
    missing_layers_message = ''
    field_layer, missing_layers_message = getLayer('EGB_DzialkaEwidencyjna_powierzchnia', missing_layers_message)
    jrg_layer, missing_layers_message = getLayer('EGB_JednostkaRejestrowaGruntow', missing_layers_message)
    ownership_layer, missing_layers_message = getLayer('EGB_UdzialWlasnosci', missing_layers_message)
    possession_layer, missing_layers_message = getLayer('EGB_UdzialWeWladaniuNieruchomosciaSPLubJST', missing_layers_message)
    district_layer, missing_layers_message = getLayer('EGB_ObrebEwidencyjny_powierzchnia', missing_layers_message)
    land_unit_layer, missing_layers_message = getLayer('EGB_JednostkaEwidencyjna_powierzchnia', missing_layers_message)
    owner_single_layer, missing_layers_message = getLayer('EGB_OsobaFizyczna', missing_layers_message)
    owner_marriage_layer, missing_layers_message = getLayer('EGB_Malzenstwo', missing_layers_message)
    owner_institution_layer, missing_layers_message = getLayer('EGB_Instytucja', missing_layers_message)
    owner_group_layer, missing_layers_message = getLayer('EGB_PodmiotGrupowy', missing_layers_message)
    address_layer, missing_layers_message = getLayer('EGB_Adres', missing_layers_message)
    landuse_layer, missing_layers_message = getLayer('EGB_Klasouzytek', missing_layers_message)
    building_layer, missing_layers_message = getLayer('EGB_Budynek_powierzchnia', missing_layers_message)
    document_layer, missing_layers_message = getLayer('BT_Dokument', missing_layers_message)
    report_layer, missing_layers_message = getLayer('EGB_OperatTechniczny', missing_layers_message)
    changes_layer, missing_layers_message = getLayer('EGB_Zmiana', missing_layers_message)
    relations_layer, missing_layers_message = getLayer('relacje', missing_layers_message)
    table_columns = ['Id działki']
    dialog, table = configureLandReportDialog(dockwidget, 'Informacja z rejestru gruntów', table_columns, field_layer)
    if relations_layer and field_layer:
        if missing_layers_message != '':
            showMessage(None, 'Informacja z rejestru gruntów',
                        '%s<p>Raport może nie zawierać pełej informacji</p>' % missing_layers_message)
        report_task = LandRegisterReportOldTask(dockwidget)
        report_task.only_selected = only_selected
        report_task.field_layer = field_layer
        report_task.jrg_layer = jrg_layer
        report_task.ownership_layer = ownership_layer
        report_task.possession_layer = possession_layer
        report_task.district_layer = district_layer
        report_task.land_unit_layer = land_unit_layer
        report_task.owner_single_layer = owner_single_layer
        report_task.owner_marriage_layer = owner_marriage_layer
        report_task.owner_institution_layer = owner_institution_layer
        report_task.owner_group_layer = owner_group_layer
        report_task.address_layer = address_layer
        report_task.landuse_layer = landuse_layer
        report_task.building_layer = building_layer
        report_task.document_layer = document_layer
        report_task.report_layer = report_layer
        report_task.changes_layer = changes_layer
        report_task.relations_layer = relations_layer
        report_task.district_land_unit_relation = getRelation(relations_layer, 'EGB_ObrebEwidencyjny_powierzchnia', 'EGB_JednostkaEwidencyjna_powierzchnia')
        report_task.field_address_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_Adres')
        report_task.field_jrg_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_JednostkaRejestrowaGruntow')
        report_task.field_landuses_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_Klasouzytek')
        report_task.field_changes_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_Zmiana')
        report_task.field_document_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'BT_Dokument')
        report_task.changes_document_relation = getRelation(relations_layer, 'EGB_Zmiana', 'BT_Dokument')
        report_task.changes_report_relation = getRelation(relations_layer, 'EGB_Zmiana', 'EGB_OperatTechniczny')
        report_task.building_field_relation = getRelation(relations_layer, 'EGB_Budynek_powierzchnia', 'EGB_DzialkaEwidencyjna_powierzchnia')
        report_task.building_address_relation = getRelation(relations_layer, 'EGB_Budynek_powierzchnia', 'EGB_Adres')
        report_task.jrg_district_relation = getRelation(relations_layer, 'EGB_JednostkaRejestrowaGruntow', 'EGB_ObrebEwidencyjny_powierzchnia')
        report_task.ownership_jrg_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_JednostkaRejestrowaGruntow')
        report_task.ownership_single_owner_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_OsobaFizyczna')
        report_task.ownership_marriage_owner_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_Malzenstwo')
        report_task.ownership_intitution_owner_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_Instytucja')
        report_task.ownership_group_owner_relation = getRelation(relations_layer, 'EGB_UdzialWlasnosci', 'EGB_PodmiotGrupowy')
        report_task.possession_jrg_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniuNieruchomosciaSPLubJST', 'EGB_JednostkaRejestrowaGruntow')
        report_task.possession_single_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniuNieruchomosciaSPLubJST', 'EGB_OsobaFizyczna')
        report_task.possession_marriage_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniuNieruchomosciaSPLubJST', 'EGB_Malzenstwo')
        report_task.possession_intitution_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniuNieruchomosciaSPLubJST', 'EGB_Instytucja')
        report_task.possession_group_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniuNieruchomosciaSPLubJST', 'EGB_PodmiotGrupowy')
        report_task.single_owner_address_relation = getRelation(relations_layer, 'EGB_OsobaFizyczna', 'EGB_Adres')
        report_task.institution_owner_address_relation = getRelation(relations_layer, 'EGB_Instytucja', 'EGB_Adres')
        report_task.group_owner_single_owner_relation = getRelation(relations_layer, 'EGB_PodmiotGrupowy', 'EGB_OsobaFizyczna')
        report_task.marriage_owner_single_owner_relation = getRelation(relations_layer, 'EGB_Malzenstwo', 'EGB_OsobaFizyczna', True)
        report_task.finished.connect(lambda: reportTaskFinished(report_task, dialog, table))
        report_task.progress_changed.connect(lambda progress: reportProgress(report_task, progress))
        report_task.progress_screen.showProgress('generowanie raportu...', True, False)
        report_task.start()
    else:
        showMessage(None, 'Informacja z rejestru gruntów', 'Do projektu nie została wczytana warstwa relacji lub działek, utworzenie raportu jest niemożliwe')


def reportProgress(report_task, progress):
    report_task.progress_screen.progressBarValue(progress)


def reportTaskFinished(report_task, dialog, table):
    report_task.progress_screen.hideProgress()
    if report_task.error:
        showMessage(dialog, 'Informacja z rejestru gruntów',
                    '<p>Generowanie raportu zakończone niepowodzeniem:</p>'
                    '<p><i>%s</i></p>' % report_task.error)
    else:
        if len(report_task.reports_htmls) > 0:
            for i, report in enumerate(report_task.reports_htmls):
                rownum = table.rowCount()
                table.insertRow(rownum)
                field_item = QTableWidgetItem(report[1])
                field_item.setWhatsThis(str(report[0]))
                field_item.setData(100, report[2])
                field_item.setData(200, report_task.report_excel[i])
                if rownum == 0:
                    field_item.setData(101, report_task.report_html)
                table.setItem(rownum, 0, field_item)
            iface.addTabifiedDockWidget(Qt.BottomDockWidgetArea, dialog, [], True)
        else:
            showMessage(dialog, 'Informacja z rejestru gruntów', 'Brak raportów do wyświetlenia')
