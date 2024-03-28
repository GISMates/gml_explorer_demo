import re
import os
import glob
import time

from lxml import etree

from qgis.PyQt.QtCore import QThread, QThreadPool

from .progress.progress_screen import ProgressScreen
from .gml_xsd_task import XsdTask


class GMLValidationTask(QThread):

    def __init__(self, dockwidget, validator):
        super(GMLValidationTask, self).__init__()
        self.validator = validator
        self.progress_screen = ProgressScreen(self, dockwidget)
        self.thread_pool = []

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
            self.checked_lines = []
            self.validation_errors = []
            with open(self.gml_path, 'r') as f:
                self.gml_list = f.readlines()
                operations = len(xsd_paths)
                for i, xsd_path in enumerate(xsd_paths):
                    xsd_task = XsdTask(gml_file, xsd_path)
                    xsd_task.signals.finished.connect(self.xsdTaskFinished)
                    xsd_task.start()
                    self.thread_pool.append(xsd_task)
                while len(self.thread_pool) > 0:
                    time.sleep(1)
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

    def xsdTaskFinished(self, xsd_task):
        self.thread_pool.remove(xsd_task)
        error = xsd_task.error
        result = xsd_task.result
        xmlschema = xsd_task.xmlschema
        if not result:
            for error in xmlschema.error_log:
                if 'Observation ).' not in error.message:
                    if error.line not in self.checked_lines:
                        for j in range(error.line - 1, 0, -1):
                            if 'featureMember' in self.gml_list[j]:
                                gml_row = self.gml_list[j + 1]
                                gml_class = re.sub('(.*):(.*)\\s*gml:(.*)="(.*)">', r'\2', gml_row)
                                gml_id = re.sub('(.*):(.*)\\s*gml:(.*)="(.*)">', r'\4', gml_row)
                                self.validation_errors.append((gml_class, gml_id, error.line, error.message))
                                self.checked_lines.append(error.line)
                                break
