import re
import os
import csv
import datetime

from qgis.PyQt.QtWidgets import QMessageBox, QFileDialog, QTableWidgetItem
from qgis.PyQt.QtCore import QThread, pyqtSignal
from qgis.core import QgsApplication

from .func_box import *
from ..progress.progress_screen import ProgressScreen

registration_group_map = {"1": "Skarb Państwa, jeżeli nie występuje w zbiegu z użytkownikami wieczystymi",
                          "2": "Skarb Państwa, jeżeli występuje w zbiegu z użytkownikami wieczystymi",
                          "3": "jednoosobowe spółki Skarbu Państwa, przedsiębiorstwa państwowe i inne państwowe osoby prawne",
                          "4": "gminy, związki międzygminne lub metropolitalne, jeżeli nie występują w zbiegu z użytkownikami wieczystymi",
                          "5": "gminy, związki międzygminne lub metropolitalne, jeżeli występują w zbiegu z użytkownikami wieczystymi",
                          "6": "jednoosobowe spółki jednostek samorządu terytorialnego i inne osoby prawne, których organami założycielskimi",
                          "7": "osoby fizyczne",
                          "8": "spółdzielnie",
                          "9": "kościoły i związki wyznaniowe",
                          "10": "wspólnoty gruntowe",
                          "11": "powiaty i związki powiatów, jeżeli nie występują w zbiegu z użytkownikami wieczystymi",
                          "12": "powiaty i związki powiatów, jeżeli występują w zbiegu z użytkownikami wieczystymi",
                          "13": "województwa, jeżeli nie występują w zbiegu z użytkownikami wieczystymi",
                          "14": "województwa, jeżeli występują w zbiegu z użytkownikami wieczystymi",
                          "15": "spółki prawa handlowego",
                          "16": "inne podmioty ewidencyjne"}

possession_map = {'1': 'użytkowanie wieczyste',
                  '2': 'trwały zarząd',
                  '3': 'zarząd',
                  '4': 'użytkowanie',
                  '5': 'inny rodzaj władania',
                  '6': 'wykonywanie prawa własności Skarbu Państwa i innych praw rzeczowych',
                  '7': 'gospodarowanie zasobem nieruchomości SP albo gminnym, powiatowym lub wojewódzkim zasobem nieruchomości',
                  '8': 'gospodarowanie gruntami SP pokrytymi wodami powierzchniowymi',
                  '9': 'wykonywanie zadań zarządcy dróg publicznych'}

ownership_map = {'1': 'wlasnosc',
                 '2': 'wladanieSamoistne'}

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
                     "19": "Inny dokument",
                     "20": "Dokumentacja architektoniczno-budowlana",
                     "21": "Dokumentacja planistyczna",
                     "22": "Akt poświadczenia dziedziczenia",
                     "23": "Zawiadomienie z PESEL",
                     "24": "Zgłoszenie zmiany sposobu użytkowania"}

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

units = [
    {
        'WOJ': '02',
        'POW': '',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'DOLNOŚLĄSKIE',
        'NAZWA_DOD': 'województwo',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '01',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'bolesławiecki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '01',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Bolesławiec',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '01',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Bolesławiec',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '01',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Gromadka',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '01',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Nowogrodziec',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '01',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Nowogrodziec',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '01',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Nowogrodziec',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '01',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Osiecznica',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '01',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Warta Bolesławiecka',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'dzierżoniowski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Bielawa',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '02',
        'RODZ': '1',
        'NAZWA': 'Dzierżoniów',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Pieszyce',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Pieszyce',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Pieszyce',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '04',
        'RODZ': '1',
        'NAZWA': 'Piława Górna',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Dzierżoniów',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Łagiewniki',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '07',
        'RODZ': '3',
        'NAZWA': 'Niemcza',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '07',
        'RODZ': '4',
        'NAZWA': 'Niemcza',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '02',
        'GMI': '07',
        'RODZ': '5',
        'NAZWA': 'Niemcza',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '03',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'głogowski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '03',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Głogów',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '03',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Głogów',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '03',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Jerzmanowa',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '03',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Kotla',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '03',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Pęcław',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '03',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Żukowice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '04',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'górowski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '04',
        'GMI': '01',
        'RODZ': '3',
        'NAZWA': 'Góra',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '04',
        'GMI': '01',
        'RODZ': '4',
        'NAZWA': 'Góra',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '04',
        'GMI': '01',
        'RODZ': '5',
        'NAZWA': 'Góra',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '04',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Jemielno',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '04',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Niechlów',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '04',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Wąsosz',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '04',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Wąsosz',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '04',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Wąsosz',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '05',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'jaworski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '05',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Jawor',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '05',
        'GMI': '02',
        'RODZ': '3',
        'NAZWA': 'Bolków',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '05',
        'GMI': '02',
        'RODZ': '4',
        'NAZWA': 'Bolków',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '05',
        'GMI': '02',
        'RODZ': '5',
        'NAZWA': 'Bolków',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '05',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Męcinka',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '05',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Mściwojów',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '05',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Paszowice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '05',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Wądroże Wielkie',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'karkonoski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Karpacz',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '02',
        'RODZ': '1',
        'NAZWA': 'Kowary',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '03',
        'RODZ': '1',
        'NAZWA': 'Piechowice',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '04',
        'RODZ': '1',
        'NAZWA': 'Szklarska Poręba',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Janowice Wielkie',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Jeżów Sudecki',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '07',
        'RODZ': '2',
        'NAZWA': 'Mysłakowice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '08',
        'RODZ': '2',
        'NAZWA': 'Podgórzyn',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '06',
        'GMI': '09',
        'RODZ': '2',
        'NAZWA': 'Stara Kamienica',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '07',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'kamiennogórski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '07',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Kamienna Góra',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '07',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Kamienna Góra',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '07',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Lubawka',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '07',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Lubawka',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '07',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Lubawka',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '07',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Marciszów',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'kłodzki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Duszniki-Zdrój',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '02',
        'RODZ': '1',
        'NAZWA': 'Kłodzko',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '03',
        'RODZ': '1',
        'NAZWA': 'Kudowa-Zdrój',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '04',
        'RODZ': '1',
        'NAZWA': 'Nowa Ruda',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '05',
        'RODZ': '1',
        'NAZWA': 'Polanica-Zdrój',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '06',
        'RODZ': '3',
        'NAZWA': 'Bystrzyca Kłodzka',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '06',
        'RODZ': '4',
        'NAZWA': 'Bystrzyca Kłodzka',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '06',
        'RODZ': '5',
        'NAZWA': 'Bystrzyca Kłodzka',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '07',
        'RODZ': '2',
        'NAZWA': 'Kłodzko',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '08',
        'RODZ': '3',
        'NAZWA': 'Lądek-Zdrój',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '08',
        'RODZ': '4',
        'NAZWA': 'Lądek-Zdrój',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '08',
        'RODZ': '5',
        'NAZWA': 'Lądek-Zdrój',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '09',
        'RODZ': '2',
        'NAZWA': 'Lewin Kłodzki',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '10',
        'RODZ': '3',
        'NAZWA': 'Międzylesie',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '10',
        'RODZ': '4',
        'NAZWA': 'Międzylesie',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '10',
        'RODZ': '5',
        'NAZWA': 'Międzylesie',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '11',
        'RODZ': '2',
        'NAZWA': 'Nowa Ruda',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '12',
        'RODZ': '3',
        'NAZWA': 'Radków',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '12',
        'RODZ': '4',
        'NAZWA': 'Radków',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '12',
        'RODZ': '5',
        'NAZWA': 'Radków',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '13',
        'RODZ': '3',
        'NAZWA': 'Stronie Śląskie',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '13',
        'RODZ': '4',
        'NAZWA': 'Stronie Śląskie',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '13',
        'RODZ': '5',
        'NAZWA': 'Stronie Śląskie',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '14',
        'RODZ': '3',
        'NAZWA': 'Szczytna',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '14',
        'RODZ': '4',
        'NAZWA': 'Szczytna',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '08',
        'GMI': '14',
        'RODZ': '5',
        'NAZWA': 'Szczytna',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'legnicki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Chojnów',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Chojnów',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Krotoszyce',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Kunice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Legnickie Pole',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Miłkowice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '07',
        'RODZ': '3',
        'NAZWA': 'Prochowice',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '07',
        'RODZ': '4',
        'NAZWA': 'Prochowice',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '07',
        'RODZ': '5',
        'NAZWA': 'Prochowice',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '09',
        'GMI': '08',
        'RODZ': '2',
        'NAZWA': 'Ruja',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'lubański',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Lubań',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '02',
        'RODZ': '1',
        'NAZWA': 'Świeradów-Zdrój',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Leśna',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Leśna',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Leśna',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Lubań',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '05',
        'RODZ': '3',
        'NAZWA': 'Olszyna',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '05',
        'RODZ': '4',
        'NAZWA': 'Olszyna',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '05',
        'RODZ': '5',
        'NAZWA': 'Olszyna',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Platerówka',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '10',
        'GMI': '07',
        'RODZ': '2',
        'NAZWA': 'Siekierczyn',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '11',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'lubiński',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '11',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Lubin',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '11',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Lubin',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '11',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Rudna',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '11',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Ścinawa',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '11',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Ścinawa',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '11',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Ścinawa',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'lwówecki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '01',
        'RODZ': '3',
        'NAZWA': 'Gryfów Śląski',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '01',
        'RODZ': '4',
        'NAZWA': 'Gryfów Śląski',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '01',
        'RODZ': '5',
        'NAZWA': 'Gryfów Śląski',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '02',
        'RODZ': '3',
        'NAZWA': 'Lubomierz',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '02',
        'RODZ': '4',
        'NAZWA': 'Lubomierz',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '02',
        'RODZ': '5',
        'NAZWA': 'Lubomierz',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Lwówek Śląski',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Lwówek Śląski',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Lwówek Śląski',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Mirsk',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Mirsk',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Mirsk',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '05',
        'RODZ': '3',
        'NAZWA': 'Wleń',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '05',
        'RODZ': '4',
        'NAZWA': 'Wleń',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '12',
        'GMI': '05',
        'RODZ': '5',
        'NAZWA': 'Wleń',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '13',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'milicki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '13',
        'GMI': '01',
        'RODZ': '2',
        'NAZWA': 'Cieszków',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '13',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Krośnice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '13',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Milicz',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '13',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Milicz',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '13',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Milicz',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'oleśnicki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Oleśnica',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '02',
        'RODZ': '3',
        'NAZWA': 'Bierutów',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '02',
        'RODZ': '4',
        'NAZWA': 'Bierutów',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '02',
        'RODZ': '5',
        'NAZWA': 'Bierutów',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Dobroszyce',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Dziadowa Kłoda',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '05',
        'RODZ': '3',
        'NAZWA': 'Międzybórz',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '05',
        'RODZ': '4',
        'NAZWA': 'Międzybórz',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '05',
        'RODZ': '5',
        'NAZWA': 'Międzybórz',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Oleśnica',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '07',
        'RODZ': '3',
        'NAZWA': 'Syców',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '07',
        'RODZ': '4',
        'NAZWA': 'Syców',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '07',
        'RODZ': '5',
        'NAZWA': 'Syców',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '08',
        'RODZ': '3',
        'NAZWA': 'Twardogóra',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '08',
        'RODZ': '4',
        'NAZWA': 'Twardogóra',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '14',
        'GMI': '08',
        'RODZ': '5',
        'NAZWA': 'Twardogóra',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '15',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'oławski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '15',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Oława',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '15',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Domaniów',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '15',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Jelcz-Laskowice',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '15',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Jelcz-Laskowice',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '15',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Jelcz-Laskowice',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '15',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Oława',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'polkowicki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '01',
        'RODZ': '3',
        'NAZWA': 'Chocianów',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '01',
        'RODZ': '4',
        'NAZWA': 'Chocianów',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '01',
        'RODZ': '5',
        'NAZWA': 'Chocianów',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Gaworzyce',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Grębocice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Polkowice',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Polkowice',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Polkowice',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '05',
        'RODZ': '3',
        'NAZWA': 'Przemków',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '05',
        'RODZ': '4',
        'NAZWA': 'Przemków',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '05',
        'RODZ': '5',
        'NAZWA': 'Przemków',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '16',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Radwanice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'strzeliński',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '01',
        'RODZ': '2',
        'NAZWA': 'Borów',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Kondratowice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Przeworno',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Strzelin',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Strzelin',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Strzelin',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '05',
        'RODZ': '3',
        'NAZWA': 'Wiązów',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '05',
        'RODZ': '4',
        'NAZWA': 'Wiązów',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '17',
        'GMI': '05',
        'RODZ': '5',
        'NAZWA': 'Wiązów',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'średzki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '01',
        'RODZ': '2',
        'NAZWA': 'Kostomłoty',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Malczyce',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Miękinia',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Miękinia',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Miękinia',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Środa Śląska',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Środa Śląska',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Środa Śląska',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '18',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Udanin',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'świdnicki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Świdnica',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '02',
        'RODZ': '1',
        'NAZWA': 'Świebodzice',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Dobromierz',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Jaworzyna Śląska',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Jaworzyna Śląska',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Jaworzyna Śląska',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Marcinowice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '06',
        'RODZ': '3',
        'NAZWA': 'Strzegom',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '06',
        'RODZ': '4',
        'NAZWA': 'Strzegom',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '06',
        'RODZ': '5',
        'NAZWA': 'Strzegom',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '07',
        'RODZ': '2',
        'NAZWA': 'Świdnica',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '08',
        'RODZ': '3',
        'NAZWA': 'Żarów',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '08',
        'RODZ': '4',
        'NAZWA': 'Żarów',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '19',
        'GMI': '08',
        'RODZ': '5',
        'NAZWA': 'Żarów',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'trzebnicki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '01',
        'RODZ': '3',
        'NAZWA': 'Oborniki Śląskie',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '01',
        'RODZ': '4',
        'NAZWA': 'Oborniki Śląskie',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '01',
        'RODZ': '5',
        'NAZWA': 'Oborniki Śląskie',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '02',
        'RODZ': '3',
        'NAZWA': 'Prusice',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '02',
        'RODZ': '4',
        'NAZWA': 'Prusice',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '02',
        'RODZ': '5',
        'NAZWA': 'Prusice',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Trzebnica',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Trzebnica',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Trzebnica',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Wisznia Mała',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Zawonia',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '06',
        'RODZ': '3',
        'NAZWA': 'Żmigród',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '06',
        'RODZ': '4',
        'NAZWA': 'Żmigród',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '20',
        'GMI': '06',
        'RODZ': '5',
        'NAZWA': 'Żmigród',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'wałbrzyski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Boguszów-Gorce',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '02',
        'RODZ': '1',
        'NAZWA': 'Jedlina-Zdrój',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '03',
        'RODZ': '1',
        'NAZWA': 'Szczawno-Zdrój',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Czarny Bór',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '05',
        'RODZ': '3',
        'NAZWA': 'Głuszyca',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '05',
        'RODZ': '4',
        'NAZWA': 'Głuszyca',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '05',
        'RODZ': '5',
        'NAZWA': 'Głuszyca',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '06',
        'RODZ': '3',
        'NAZWA': 'Mieroszów',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '06',
        'RODZ': '4',
        'NAZWA': 'Mieroszów',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '06',
        'RODZ': '5',
        'NAZWA': 'Mieroszów',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '07',
        'RODZ': '2',
        'NAZWA': 'Stare Bogaczowice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '21',
        'GMI': '08',
        'RODZ': '2',
        'NAZWA': 'Walim',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '22',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'wołowski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '22',
        'GMI': '01',
        'RODZ': '3',
        'NAZWA': 'Brzeg Dolny',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '22',
        'GMI': '01',
        'RODZ': '4',
        'NAZWA': 'Brzeg Dolny',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '22',
        'GMI': '01',
        'RODZ': '5',
        'NAZWA': 'Brzeg Dolny',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '22',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Wińsko',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '22',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Wołów',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '22',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Wołów',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '22',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Wołów',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'wrocławski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '01',
        'RODZ': '2',
        'NAZWA': 'Czernica',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Długołęka',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Jordanów Śląski',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Kąty Wrocławskie',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Kąty Wrocławskie',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Kąty Wrocławskie',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Kobierzyce',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Mietków',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '07',
        'RODZ': '3',
        'NAZWA': 'Sobótka',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '07',
        'RODZ': '4',
        'NAZWA': 'Sobótka',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '07',
        'RODZ': '5',
        'NAZWA': 'Sobótka',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '08',
        'RODZ': '3',
        'NAZWA': 'Siechnice',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '08',
        'RODZ': '4',
        'NAZWA': 'Siechnice',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '08',
        'RODZ': '5',
        'NAZWA': 'Siechnice',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '23',
        'GMI': '09',
        'RODZ': '2',
        'NAZWA': 'Żórawina',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'ząbkowicki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '01',
        'RODZ': '3',
        'NAZWA': 'Bardo',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '01',
        'RODZ': '4',
        'NAZWA': 'Bardo',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '01',
        'RODZ': '5',
        'NAZWA': 'Bardo',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '02',
        'RODZ': '2',
        'NAZWA': 'Ciepłowody',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Kamieniec Ząbkowicki',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Kamieniec Ząbkowicki',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Kamieniec Ząbkowicki',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '04',
        'RODZ': '2',
        'NAZWA': 'Stoszowice',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '05',
        'RODZ': '3',
        'NAZWA': 'Ząbkowice Śląskie',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '05',
        'RODZ': '4',
        'NAZWA': 'Ząbkowice Śląskie',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '05',
        'RODZ': '5',
        'NAZWA': 'Ząbkowice Śląskie',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '06',
        'RODZ': '3',
        'NAZWA': 'Ziębice',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '06',
        'RODZ': '4',
        'NAZWA': 'Ziębice',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '06',
        'RODZ': '5',
        'NAZWA': 'Ziębice',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '07',
        'RODZ': '3',
        'NAZWA': 'Złoty Stok',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '07',
        'RODZ': '4',
        'NAZWA': 'Złoty Stok',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '24',
        'GMI': '07',
        'RODZ': '5',
        'NAZWA': 'Złoty Stok',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'zgorzelecki',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Zawidów',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '02',
        'RODZ': '1',
        'NAZWA': 'Zgorzelec',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '03',
        'RODZ': '3',
        'NAZWA': 'Bogatynia',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '03',
        'RODZ': '4',
        'NAZWA': 'Bogatynia',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '03',
        'RODZ': '5',
        'NAZWA': 'Bogatynia',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Pieńsk',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Pieńsk',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Pieńsk',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Sulików',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '06',
        'RODZ': '3',
        'NAZWA': 'Węgliniec',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '06',
        'RODZ': '4',
        'NAZWA': 'Węgliniec',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '06',
        'RODZ': '5',
        'NAZWA': 'Węgliniec',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '25',
        'GMI': '07',
        'RODZ': '2',
        'NAZWA': 'Zgorzelec',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '26',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'złotoryjski',
        'NAZWA_DOD': 'powiat',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '26',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Wojcieszów',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '26',
        'GMI': '02',
        'RODZ': '1',
        'NAZWA': 'Złotoryja',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '26',
        'GMI': '03',
        'RODZ': '2',
        'NAZWA': 'Pielgrzymka',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '26',
        'GMI': '04',
        'RODZ': '3',
        'NAZWA': 'Świerzawa',
        'NAZWA_DOD': 'gmina miejsko-wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '26',
        'GMI': '04',
        'RODZ': '4',
        'NAZWA': 'Świerzawa',
        'NAZWA_DOD': 'miasto',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '26',
        'GMI': '04',
        'RODZ': '5',
        'NAZWA': 'Świerzawa',
        'NAZWA_DOD': 'obszar wiejski',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '26',
        'GMI': '05',
        'RODZ': '2',
        'NAZWA': 'Zagrodno',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '26',
        'GMI': '06',
        'RODZ': '2',
        'NAZWA': 'Złotoryja',
        'NAZWA_DOD': 'gmina wiejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '61',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'Jelenia Góra',
        'NAZWA_DOD': 'miasto na prawach powiatu',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '61',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Jelenia Góra',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '62',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'Legnica',
        'NAZWA_DOD': 'miasto na prawach powiatu',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '62',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Legnica',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '64',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'Wrocław',
        'NAZWA_DOD': 'miasto na prawach powiatu',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '64',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Wrocław',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '64',
        'GMI': '02',
        'RODZ': '9',
        'NAZWA': 'Wrocław-Fabryczna',
        'NAZWA_DOD': 'delegatura',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '64',
        'GMI': '03',
        'RODZ': '9',
        'NAZWA': 'Wrocław-Krzyki',
        'NAZWA_DOD': 'delegatura',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '64',
        'GMI': '04',
        'RODZ': '9',
        'NAZWA': 'Wrocław-Psie Pole',
        'NAZWA_DOD': 'delegatura',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '64',
        'GMI': '05',
        'RODZ': '9',
        'NAZWA': 'Wrocław-Stare Miasto',
        'NAZWA_DOD': 'delegatura',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '64',
        'GMI': '06',
        'RODZ': '9',
        'NAZWA': 'Wrocław-Śródmieście',
        'NAZWA_DOD': 'delegatura',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '65',
        'GMI': '',
        'RODZ': '',
        'NAZWA': 'Wałbrzych',
        'NAZWA_DOD': 'miasto na prawach powiatu',
        'STAN_NA': '2023-01-01'
    },
    {
        'WOJ': '02',
        'POW': '65',
        'GMI': '01',
        'RODZ': '1',
        'NAZWA': 'Wałbrzych',
        'NAZWA_DOD': 'gmina miejska',
        'STAN_NA': '2023-01-01'
    }
]


class LandRegisterReportTask(QThread):
    progress_changed = pyqtSignal(object)

    def __init__(self, dockwidget):
        super(LandRegisterReportTask, self).__init__()
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
                field_area = getFeatureValue(field_feature, 'poleEwidencyjne')
                addresses_ids = "'%s'" % getFeatureValue(field_feature, self.field_address_relation).replace(", ", "', '")
                address_iter = self.property_address_layer.getFeatures(
                    "gml_id IN(%s)" % addresses_ids) if self.property_address_layer else []
                for address_feature in address_iter:
                    place = getFeatureValue(address_feature, "nazwaMiejscowosci")
                    street = getFeatureValue(address_feature, "nazwaUlicy")
                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                    address = street
                    address += ' %s' % house_number if house_number != ' ' else ''
                    address += ', %s' % place if address != ' ' else place
                    field_address = address if field_address == ' ' or field_address == address else "%s<br> %s" % (field_address, address)
                district_ids = "'%s'" % getFeatureValue(field_feature, self.field_district_relation).replace(", ", "', '")
                district_iter = self.district_layer.getFeatures("gml_id IN(%s)" % district_ids) if self.district_layer else []
                for district_feature in district_iter:
                    district = getFeatureValue(district_feature, 'nazwaWlasna')
                    land_unit_ids = "'%s'" % district_feature.attribute(self.district_land_unit_relation).replace(", ", "', '")
                    land_unit_iter = self.land_unit_layer.getFeatures("gml_id IN(%s)" % land_unit_ids) if self.land_unit_layer else []
                    for land_unit_feature in land_unit_iter:
                        land_unit = getFeatureValue(land_unit_feature, "nazwaWlasna")
                        land_unit_id = getFeatureValue(land_unit_feature, "idJednostkiEwid")
                        if len(land_unit_id) >= 6:
                            voivodeship_code = land_unit_id[0:2]
                            county_code = land_unit_id[2:4]
                            commune_code = land_unit_id[4:6]
                            voivodeship_list = list(map(lambda r: r['NAZWA'], filter(lambda row: row['NAZWA_DOD'] == 'województwo', units)))
                            county_list = list(map(lambda r: r['NAZWA'], filter(lambda row: row['POW'] == county_code and row['NAZWA_DOD'] == 'powiat', units)))
                            commune_list = list(map(lambda r: r['NAZWA'], filter(lambda row: row['POW'] == county_code and row['GMI'] == commune_code and row['NAZWA_DOD'] not in ('województwo', 'powiat'), units)))
                            voivodeship = getListValue(voivodeship_list, 0)
                            county = getListValue(county_list, 0)
                            commune = getListValue(commune_list, 0)
                jrg_ids = getFeatureValue(field_feature, self.field_jrg_relation)
                for jrg_id in jrg_ids.split(', '):
                    jrg_iter = self.jrg_layer.getFeatures("gml_id = '%s'" % jrg_id) if self.jrg_layer else []
                    for jrg_feature in jrg_iter:
                        jrg_identity = getFeatureValue(jrg_feature, 'idJednostkiRejestrowej')
                        jrg_code = re.sub('^(.*)G(.*)$', r'G.\2', jrg_identity)
                        registration_group = getFeatureValue(jrg_feature, "grupaRejestrowa")
                        fillDict(dicts, 'Grupa rej.', registration_group, registration_group_map)
                    possesion_iter = self.possession_layer.getFeatures(
                        self.possession_jrg_relation + " LIKE '%" + jrg_id + "%'") if self.possession_layer else []
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
                        ownership_address = ' '
                        address_iter = self.subject_address_layer.getFeatures("gml_id = '%s'" % getFeatureValue(ownership_feature, self.possession_address_relation)) if self.subject_address_layer else []
                        for address_feature in address_iter:
                            place = getFeatureValue(address_feature, "miejscowosc")
                            street = getFeatureValue(address_feature, "ulica")
                            house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                            apartment_number = getFeatureValue(address_feature, "numerLokalu")
                            postal_code = getFeatureValue(address_feature, "kodPocztowy")
                            ownership_address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (
                                place, street, house_number, apartment_number, postal_code)
                        if ownership_single != ' ':
                            owner_ids = "'%s'" % ownership_single.replace(", ", "', '")
                            owner_single_iter = self.owner_single_layer.getFeatures(
                                "gml_id IN(%s)" % owner_ids) if self.owner_single_layer else []
                            for owner_feature in owner_single_iter:
                                owner = getFeatureValue(owner_feature, 'pierwszeImie')
                                surname_first = getFeatureValue(owner_feature, 'pierwszyCzlonNazwiska')
                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                surname_second = getFeatureValue(owner_feature, 'drugiCzlonNazwiska')
                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                if ownership_address == ' ':
                                    address_iter = self.subject_address_layer.getFeatures(
                                        "gml_id = '%s'" % getFeatureValue(owner_feature,
                                                                          self.single_owner_address_relation)) if self.subject_address_layer else []
                                    for address_feature in address_iter:
                                        place = getFeatureValue(address_feature, "miejscowosc")
                                        street = getFeatureValue(address_feature, "ulica")
                                        house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                        apartment_number = getFeatureValue(address_feature, "numerLokalu")
                                        postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                        ownership_address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (
                                            place, street, house_number, apartment_number, postal_code)
                                ownerships.append((owner, ownership_address, possession_law, ownership_share))
                        elif ownership_marriage != ' ':
                            owner_ids = "'%s'" % ownership_marriage.replace(", ", "', '")
                            owner_marriage_iter = self.owner_marriage_layer.getFeatures(
                                "gml_id IN(%s)" % owner_ids) if self.owner_marriage_layer else []
                            for owner_feature in owner_marriage_iter:
                                marriage_ids = "'%s'" % getFeatureValue(owner_feature,
                                                                        self.marriage_owner_single_owner_relation[0])
                                marriage_partner = getFeatureValue(owner_feature, self.marriage_owner_single_owner_relation[1])
                                marriage_ids = "%s, '%s'" % (
                                    marriage_ids, marriage_partner) if marriage_ids != ' ' else "'%s'" % marriage_partner
                                owners = ''
                                addresses_ids = []
                                owner_single_iter = self.owner_single_layer.getFeatures(
                                    "gml_id in (%s)" % marriage_ids) if self.owner_single_layer else []
                                for owner_sub_feature in owner_single_iter:
                                    owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')
                                    surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                    surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                    owners += owner if owners == '' else "<br>%s" % owner
                                    addresses_ids.append(getFeatureValue(owner_sub_feature, self.single_owner_address_relation))
                                if ownership_address == ' ':
                                    address_iter = self.subject_address_layer.getFeatures(
                                        'gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if self.subject_address_layer else []
                                    for address_feature in address_iter:
                                        place = getFeatureValue(address_feature, "miejscowosc")
                                        street = getFeatureValue(address_feature, "ulica")
                                        house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                        apartment_number = getFeatureValue(address_feature, "numerLokalu")
                                        postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                        address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (
                                            place, street, house_number, apartment_number, postal_code)
                                        ownership_address = address if ownership_address == ' ' or ownership_address == address else "%s<br> %s" % (
                                            ownership_address, address)
                                ownerships.append((owners, ownership_address, possession_law, ownership_share))
                        elif ownership_institution != ' ':
                            owner_ids = "'%s'" % ownership_institution.replace(", ", "', '")
                            owner_institution_iter = self.owner_institution_layer.getFeatures(
                                "gml_id IN(%s)" % owner_ids) if self.owner_institution_layer else []
                            for owner_feature in owner_institution_iter:
                                owner = getFeatureValue(owner_feature, 'nazwaPelna')
                                if ownership_address == ' ':
                                    address_iter = self.subject_address_layer.getFeatures(
                                        "gml_id = '%s'" % getFeatureValue(owner_feature,
                                                                          self.institution_owner_address_relation)) if self.subject_address_layer else []
                                    for address_feature in address_iter:
                                        place = getFeatureValue(address_feature, "miejscowosc")
                                        street = getFeatureValue(address_feature, "ulica")
                                        house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                        apartment_number = getFeatureValue(address_feature, "numerLokalu")
                                        postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                        ownership_address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (
                                            place, street, house_number, apartment_number, postal_code)
                                ownerships.append((owner, ownership_address, possession_law, ownership_share))
                        elif ownership_group != ' ':
                            owner_ids = "'%s'" % ownership_group.replace(", ", "', '")
                            owner_group_iter = self.owner_group_layer.getFeatures(
                                "gml_id IN(%s)" % owner_ids) if self.owner_group_layer else []
                            for owner_feature in owner_group_iter:
                                group_ids = "'%s'" % getFeatureValue(owner_feature,
                                                                     self.group_owner_single_owner_relation).replace(", ",
                                                                                                                     "', '")
                                owners = []
                                addresses_ids = []
                                owner_single_iter = self.owner_single_layer.getFeatures(
                                    "gml_id in (%s)" % group_ids) if self.owner_single_layer else []
                                for owner_sub_feature in owner_single_iter:
                                    owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')
                                    surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                    surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                    if ownership_address == ' ':
                                        owners.append(owner)
                                        addresses_ids.append(getFeatureValue(owner_sub_feature, self.single_owner_address_relation))
                                    else:
                                        ownerships.append((owner, ownership_address, possession_law, ownership_share))
                                c = 0
                                address_iter = self.subject_address_layer.getFeatures(
                                    'gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if self.subject_address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "numerLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (
                                        place, street, house_number, apartment_number, postal_code)
                                    ownerships.append((owners[c], address, possession_law, ownership_share))
                                    c += 1
                    ownership_iter = self.ownership_layer.getFeatures(
                        self.ownership_jrg_relation + " LIKE '%" + jrg_id + "%'") if self.ownership_layer else []
                    for ownership_feature in ownership_iter:
                        ownership_law = ownership_map.get(getFeatureValue(ownership_feature, 'rodzajPrawa'), ' ')
                        ownership_share = getFeatureValue(ownership_feature, 'licznikUlamkaOkreslajacegoWartoscUdzialu')
                        denominator = getFeatureValue(ownership_feature, 'mianownikUlamkaOkreslajacegoWartoscUdzialu')
                        if denominator != ' ':
                            ownership_share += '/%s' % denominator
                        ownership_single = getFeatureValue(ownership_feature, self.ownership_single_owner_relation)
                        ownership_marriage = getFeatureValue(ownership_feature, self.ownership_marriage_owner_relation)
                        ownership_institution = getFeatureValue(ownership_feature, self.ownership_intitution_owner_relation)
                        ownership_group = getFeatureValue(ownership_feature, self.ownership_group_owner_relation)
                        ownership_address = ' '
                        address_iter = self.subject_address_layer.getFeatures(
                            "gml_id = '%s'" % getFeatureValue(ownership_feature,
                                                              self.ownership_address_relation)) if self.subject_address_layer else []
                        for address_feature in address_iter:
                            place = getFeatureValue(address_feature, "miejscowosc")
                            street = getFeatureValue(address_feature, "ulica")
                            house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                            apartment_number = getFeatureValue(address_feature, "numerLokalu")
                            postal_code = getFeatureValue(address_feature, "kodPocztowy")
                            ownership_address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                        if ownership_single != ' ':
                            owner_ids = "'%s'" % ownership_single.replace(", ", "', '")
                            owner_single_iter = self.owner_single_layer.getFeatures(
                                "gml_id IN(%s)" % owner_ids) if self.owner_single_layer else []
                            for owner_feature in owner_single_iter:
                                owner = getFeatureValue(owner_feature, 'pierwszeImie')
                                surname_first = getFeatureValue(owner_feature, 'pierwszyCzlonNazwiska')
                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                surname_second = getFeatureValue(owner_feature, 'drugiCzlonNazwiska')
                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                if ownership_address == ' ':
                                    address_iter = self.subject_address_layer.getFeatures(
                                        "gml_id = '%s'" % getFeatureValue(owner_feature,
                                                                          self.single_owner_address_relation)) if self.subject_address_layer else []
                                    for address_feature in address_iter:
                                        place = getFeatureValue(address_feature, "miejscowosc")
                                        street = getFeatureValue(address_feature, "ulica")
                                        house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                        apartment_number = getFeatureValue(address_feature, "numerLokalu")
                                        postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                        ownership_address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)
                                ownerships.append((owner, ownership_address, ownership_law, ownership_share))
                        elif ownership_marriage != ' ':
                            owner_ids = "'%s'" % ownership_marriage.replace(", ", "', '")
                            owner_marriage_iter = self.owner_marriage_layer.getFeatures(
                                "gml_id IN(%s)" % owner_ids) if self.owner_marriage_layer else []
                            for owner_feature in owner_marriage_iter:
                                marriage_ids = "'%s'" % getFeatureValue(owner_feature,
                                                                        self.marriage_owner_single_owner_relation[0])
                                marriage_partner = getFeatureValue(owner_feature, self.marriage_owner_single_owner_relation[1])
                                marriage_ids = "%s, '%s'" % (
                                    marriage_ids, marriage_partner) if marriage_ids != ' ' else "'%s'" % marriage_partner
                                owners = ''
                                addresses_ids = []
                                owner_single_iter = self.owner_single_layer.getFeatures(
                                    "gml_id in (%s)" % marriage_ids) if self.owner_single_layer else []
                                for owner_sub_feature in owner_single_iter:
                                    owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')
                                    surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                    surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                    owners += owner if owners == '' else "<br>%s" % owner
                                    addresses_ids.append(getFeatureValue(owner_sub_feature, self.single_owner_address_relation))
                                if ownership_address == ' ':
                                    address_iter = self.subject_address_layer.getFeatures(
                                        'gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if self.subject_address_layer else []
                                    for address_feature in address_iter:
                                        place = getFeatureValue(address_feature, "miejscowosc")
                                        street = getFeatureValue(address_feature, "ulica")
                                        house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                        apartment_number = getFeatureValue(address_feature, "numerLokalu")
                                        postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                        address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (
                                            place, street, house_number, apartment_number, postal_code)
                                        ownership_address = address if ownership_address == ' ' or ownership_address == address else "%s<br> %s" % (
                                            ownership_address, address)
                                ownerships.append((owners, ownership_address, ownership_law, ownership_share))
                        elif ownership_institution != ' ':
                            owner_ids = "'%s'" % ownership_institution.replace(", ", "', '")
                            owner_institution_iter = self.owner_institution_layer.getFeatures(
                                "gml_id IN(%s)" % owner_ids) if self.owner_institution_layer else []
                            for owner_feature in owner_institution_iter:
                                owner = getFeatureValue(owner_feature, 'nazwaPelna')
                                if ownership_address == ' ':
                                    address_iter = self.subject_address_layer.getFeatures(
                                        "gml_id = '%s'" % getFeatureValue(owner_feature,
                                                                          self.institution_owner_address_relation)) if self.subject_address_layer else []
                                    for address_feature in address_iter:
                                        place = getFeatureValue(address_feature, "miejscowosc")
                                        street = getFeatureValue(address_feature, "ulica")
                                        house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                        apartment_number = getFeatureValue(address_feature, "numerLokalu")
                                        postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                        ownership_address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (
                                            place, street, house_number, apartment_number, postal_code)
                                ownerships.append((owner, ownership_address, ownership_law, ownership_share))
                        elif ownership_group != ' ':
                            owner_ids = "'%s'" % ownership_group.replace(", ", "', '")
                            owner_group_iter = self.owner_group_layer.getFeatures(
                                "gml_id IN(%s)" % owner_ids) if self.owner_group_layer else []
                            for owner_feature in owner_group_iter:
                                group_ids = "'%s'" % getFeatureValue(owner_feature,
                                                                     self.group_owner_single_owner_relation).replace(", ",
                                                                                                                     "', '")
                                owners = []
                                addresses_ids = []
                                owner_single_iter = self.owner_single_layer.getFeatures(
                                    "gml_id in (%s)" % group_ids) if self.owner_single_layer else []
                                for owner_sub_feature in owner_single_iter:
                                    owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')
                                    surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner
                                    surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')
                                    owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner
                                    if ownership_address == ' ':
                                        owners.append(owner)
                                        addresses_ids.append(getFeatureValue(owner_sub_feature, self.single_owner_address_relation))
                                    else:
                                        ownerships.append((owner, ownership_address, ownership_law, ownership_share))
                                c = 0
                                address_iter = self.subject_address_layer.getFeatures(
                                    'gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if self.subject_address_layer else []
                                for address_feature in address_iter:
                                    place = getFeatureValue(address_feature, "miejscowosc")
                                    street = getFeatureValue(address_feature, "ulica")
                                    house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                                    apartment_number = getFeatureValue(address_feature, "numerLokalu")
                                    postal_code = getFeatureValue(address_feature, "kodPocztowy")
                                    address = 'miejscowość: %s<br>ulica: %s<br>numer domu: %s<br>numer lokalu: %s<br>kod pocztowy: %s' % (
                                        place, street, house_number, apartment_number, postal_code)
                                    ownerships.append((owners[c], address, ownership_law, ownership_share))
                                    c += 1
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
                        documents.append(
                            ('Operat', 'Operat techniczny', report_date, report_id, report_author, report_desc))
                    doc_ids = "'%s'" % getFeatureValue(changes_feature, self.changes_document_relation).replace(", ", "', '")
                    doc_iter = self.document_layer.getFeatures("gml_id IN (%s)" % doc_ids) if self.document_layer else []
                    for doc_feature in doc_iter:
                        doc_type = document_type_map.get(getFeatureValue(doc_feature, 'rodzajDokumentu'))
                        doc_date = getFeatureValue(doc_feature, 'dataDokumentu')
                        doc_id = getFeatureValue(doc_feature, 'sygnaturaDokumentu')
                        doc_author = getFeatureValue(doc_feature, 'nazwaTworcyDokumentu')
                        doc_desc = getFeatureValue(doc_feature, 'opisDokumentu')
                        documents.append(('Dokument', doc_type, doc_date, doc_id, doc_author, doc_desc))
                ofu = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_OFU')
                ozu = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_OZU')
                ozk = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_OZK')
                landuse_area = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_powierzchnia')
                ofu_list = str(ofu).split(', ')
                ozu_list = str(ozu).split(', ')
                ozk_list = str(ozk).split(', ')
                landuse_area_list = str(landuse_area).split(', ')
                for i in range(0, max([len(ofu_list), len(ozu_list), len(ozk_list), len(landuse_area_list)])):
                    landuses.append((getListValue(ofu_list, i), getListValue(ozu_list, i), getListValue(ozk_list, i),
                                     getListValue(landuse_area_list, i)))
                building_iter = self.building_layer.getFeatures(
                    f'{self.building_field_relation} LIKE \'%{getFeatureValue(field_feature, "gml_id")}%\'') if self.building_layer else []
                for building_feature in building_iter:
                    building_id = getFeatureValue(building_feature, 'idBudynku')
                    building_status = getFeatureValue(building_feature, 'statusBudynku')
                    building_pkob = getFeatureValue(building_feature, 'klasaWgPKOB')
                    building_fsb = getFeatureValue(building_feature, 'glownaFunkcjaBudynku')
                    building_fsb = '-' if building_fsb == ' ' else building_fsb
                    building_kst = getFeatureValue(building_feature, 'rodzajWgKST')
                    building_kst = '-' if building_kst == ' ' else building_kst
                    fillDict(dicts, 'KST', building_kst, building_kst_map)
                    building_kw = getFeatureValue(building_feature, 'numerKW')
                    building_walls = getFeatureValue(building_feature, 'materialScianZewn')
                    building_agf = getFeatureValue(building_feature, 'liczbaKondygnacjiNadziemnych')
                    building_agf = '-' if building_agf == ' ' else building_agf
                    building_uf = getFeatureValue(building_feature, 'liczbaKondygnacjiPodziemnych')
                    building_uf = '-' if building_uf == ' ' else building_uf
                    building_area = getFeatureValue(building_feature, 'powZabudowy')
                    building_usage_area = getFeatureValue(building_feature, 'powierzchniaUzytkowaBudynkuZObmiarow')
                    building_completion_year = getFeatureValue(building_feature, 'rokZakonczeniaBudowy')
                    address_iter = self.property_address_layer.getFeatures("gml_id = '%s'" % getFeatureValue(building_feature,
                                                                                                             self.building_address_relation)) if self.property_address_layer else []
                    building_address = ' '
                    for address_feature in address_iter:
                        place = getFeatureValue(address_feature, "nazwaMiejscowosci")
                        street = getFeatureValue(address_feature, "nazwaUlicy")
                        house_number = getFeatureValue(address_feature, "numerPorzadkowy")
                        address = street
                        address += ' %s' % house_number if house_number != ' ' else ''
                        address += ', %s' % place if address != ' ' else place
                        building_address = address if building_address == ' ' or building_address == address else "%s<br> %s" % (
                            building_address, address)
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
                                <td style="width: 100px"></td>
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
                                          {'B': [land_unit, district, field_id, field_area, voivodeship, county, commune, field_kw],
                                           'E': [jrg_identity, registration_group, field_address, '', datetime.date.today(), '']},
                                          landuses, ownerships, documents, buildings, dicts])
            self.report_html += "</body></html>"
        except Exception as e:
            self.error = e


def generateLandRegisterReport(dockwidget, only_selected):
    missing_layers_message = ''
    address_layer_name = 'EGB_AdresPodmiotu'
    field_layer, missing_layers_message = getLayer('EGB_DzialkaEwidencyjna_powierzchnia', missing_layers_message)
    jrg_layer, missing_layers_message = getLayer('EGB_JednostkaRejestrowaGruntow', missing_layers_message)
    ownership_layer, missing_layers_message = getLayer('EGB_UdzialWeWlasnosci', missing_layers_message)
    possession_layer, missing_layers_message = getLayer('EGB_UdzialWeWladaniu', missing_layers_message)
    district_layer, missing_layers_message = getLayer('EGB_ObrebEwidencyjny_powierzchnia', missing_layers_message)
    land_unit_layer, missing_layers_message = getLayer('EGB_JednostkaEwidencyjna_powierzchnia', missing_layers_message)
    owner_single_layer, missing_layers_message = getLayer('EGB_OsobaFizyczna', missing_layers_message)
    owner_marriage_layer, missing_layers_message = getLayer('EGB_Malzenstwo', missing_layers_message)
    owner_institution_layer, missing_layers_message = getLayer('EGB_Instytucja', missing_layers_message)
    owner_group_layer, missing_layers_message = getLayer('EGB_PodmiotGrupowy', missing_layers_message)
    subject_address_layer, missing_layers_message = getLayer(address_layer_name, missing_layers_message)
    if subject_address_layer is None:
        address_layer_name = 'EGB_AdresZameldowania'
        subject_address_layer, missing_layers_message = getLayer(address_layer_name, missing_layers_message)
    property_address_layer, missing_layers_message = getLayer('EGB_AdresNieruchomosci', missing_layers_message)
    building_layer, missing_layers_message = getLayer('EGB_Budynek_powierzchnia', missing_layers_message)
    document_layer, missing_layers_message = getLayer('EGB_Dokument', missing_layers_message)
    report_layer, missing_layers_message = getLayer('EGB_OperatTechniczny', missing_layers_message)
    changes_layer, missing_layers_message = getLayer('EGB_Zmiana', missing_layers_message)
    relations_layer, missing_layers_message = getLayer('relacje', missing_layers_message)
    table_columns = ['Id działki']
    dialog, table = configureLandReportDialog(dockwidget, 'Informacja z rejestru gruntów', table_columns, field_layer)
    if relations_layer and field_layer:
        if missing_layers_message != '':
            showMessage(dialog, 'Informacja z rejestru gruntów',
                        '%s<p>Raport może nie zawierać pełej informacji</p>' % missing_layers_message)
        report_task = LandRegisterReportTask(dockwidget)
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
        report_task.subject_address_layer = subject_address_layer
        report_task.property_address_layer = property_address_layer
        report_task.building_layer = building_layer
        report_task.document_layer = document_layer
        report_task.report_layer = report_layer
        report_task.changes_layer = changes_layer
        report_task.relations_layer = relations_layer
        report_task.field_address_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_AdresNieruchomosci')
        report_task.field_jrg_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_JednostkaRejestrowaGruntow')
        report_task.field_changes_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_Zmiana')
        report_task.field_district_relation = getRelation(relations_layer, 'EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_ObrebEwidencyjny_powierzchnia')
        report_task.district_land_unit_relation = getRelation(relations_layer, 'EGB_ObrebEwidencyjny_powierzchnia', 'EGB_JednostkaEwidencyjna_powierzchnia')
        report_task.changes_document_relation = getRelation(relations_layer, 'EGB_Zmiana', 'EGB_Dokument')
        report_task.changes_report_relation = getRelation(relations_layer, 'EGB_Zmiana', 'EGB_OperatTechniczny')
        report_task.building_field_relation = getRelation(relations_layer, 'EGB_Budynek_powierzchnia', 'EGB_DzialkaEwidencyjna_powierzchnia')
        report_task.building_address_relation = getRelation(relations_layer, 'EGB_Budynek_powierzchnia', 'EGB_AdresNieruchomosci')
        report_task.ownership_jrg_relation = getRelation(relations_layer, 'EGB_UdzialWeWlasnosci', 'EGB_JednostkaRejestrowaGruntow')
        report_task.ownership_single_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWlasnosci', 'EGB_OsobaFizyczna')
        report_task.ownership_marriage_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWlasnosci', 'EGB_Malzenstwo')
        report_task.ownership_intitution_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWlasnosci', 'EGB_Instytucja')
        report_task.ownership_group_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWlasnosci', 'EGB_PodmiotGrupowy')
        report_task.ownership_address_relation = getRelation(relations_layer, 'EGB_UdzialWeWlasnosci', address_layer_name)
        report_task.possession_jrg_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniu', 'EGB_JednostkaRejestrowaGruntow')
        report_task.possession_single_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniu', 'EGB_OsobaFizyczna')
        report_task.possession_marriage_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniu', 'EGB_Malzenstwo')
        report_task.possession_intitution_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniu', 'EGB_Instytucja')
        report_task.possession_group_owner_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniu', 'EGB_PodmiotGrupowy')
        report_task.possession_address_relation = getRelation(relations_layer, 'EGB_UdzialWeWladaniu', address_layer_name)
        report_task.single_owner_address_relation = getRelation(relations_layer, 'EGB_OsobaFizyczna', address_layer_name)
        report_task.institution_owner_address_relation = getRelation(relations_layer, 'EGB_Instytucja', address_layer_name)
        report_task.group_owner_single_owner_relation = getRelation(relations_layer, 'EGB_PodmiotGrupowy', 'EGB_OsobaFizyczna')
        report_task.marriage_owner_single_owner_relation = getRelation(relations_layer, 'EGB_Malzenstwo', 'EGB_OsobaFizyczna', True)
        report_task.finished.connect(lambda: reportTaskFinished(report_task, dialog, table))
        report_task.progress_changed.connect(lambda progress: reportProgress(report_task, progress))
        report_task.progress_screen.showProgress('generowanie raportu...', True, False)
        report_task.start()
    else:
        showMessage(dialog, 'Informacja z rejestru gruntów', 'Do projektu nie została wczytana warstwa relacji lub działek, utworzenie raportu jest niemożliwe')


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
