import re
import os
import glob
from lxml import etree

from qgis.PyQt.QtCore import QObject, QThread, pyqtSignal


class Signals(QObject):
    finished = pyqtSignal(object)


class XsdTask(QThread):

    def __init__(self, gml_file, xsd_path):
        super(XsdTask, self).__init__()
        self.gml_file = gml_file
        self.xsd_path = xsd_path
        self.signals = Signals()

    def run(self):
        self.error = None
        self.xmlschema = None
        self.result = True
        try:
            xmlschema_doc = etree.parse(self.xsd_path)
            self.xmlschema = etree.XMLSchema(xmlschema_doc)
            self.result = self.xmlschema.validate(self.gml_file)
        except Exception as e:
            self.error = e
        self.signals.finished.emit(self)
