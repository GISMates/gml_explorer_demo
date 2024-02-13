import os
import glob
from lxml import etree

from qgis.PyQt.QtCore import QThread, pyqtSignal

from .progress.progress_screen import ProgressScreen


class GMLValidationTask(QThread):
    progress_changed = pyqtSignal(object)

    def __init__(self, dockwidget, validator):
        super(GMLValidationTask, self).__init__()
        self.validator = validator
        self.progress_screen = ProgressScreen(self, dockwidget)

    def run(self):
        self.terminated = False
        self.error = None
        try:
            gml_file = etree.parse(self.gml_path)
            gml_version = self.getGmlVersion(self.gml_path)
            xsd_root = os.path.join(self.validator.root_path, gml_version)
            xsd_paths = glob.glob(r"%s/*.xsd" % xsd_root)
            if len(xsd_paths) == 0:
                xsd_root = xsd_root.replace(' ', '\\')
                xsd_paths = glob.glob(r"%s/*.xsd" % xsd_root)
            self.validation_errors = set()
            for xsd_path in xsd_paths:
                xmlschema_doc = etree.parse(xsd_path)
                xmlschema = etree.XMLSchema(xmlschema_doc)
                try:
                    xmlschema.assertValid(gml_file)
                except etree.DocumentInvalid:
                    for error in xmlschema.error_log:
                        if 'Observation ).' not in error.message:
                            self.validation_errors.add('%s|%s' % (error.line, error.message))
        except Exception as e:
            self.error = e

    def getGmlVersion(self, gml_path):
        version = 'new'
        with open(gml_path) as file:
            for line in file:
                line = file.readline()
                if 'PrezentacjaGraficzna' in line:
                    version = 'new'
                    break
                if 'ObiektKarto' in line:
                    version = 'old'
                    break
                if 'bt:BT_Identyfikator' in line:
                    version = 'old'
                    break
        return version