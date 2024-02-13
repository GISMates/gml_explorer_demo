import time
from xml.etree import ElementTree as ET

from qgis.PyQt.QtCore import QThread, pyqtSignal
import processing
from qgis.core import QgsProcessingContext, QgsProcessingFeedback

from .progress.progress_screen import ProgressScreen


class GMLToGpkgTask(QThread):

    def __init__(self, dockwidget):
        super(GMLToGpkgTask, self).__init__()
        self.dockwidget = dockwidget
        self.progress_screen = ProgressScreen(self, dockwidget)

    def run(self):
        self.terminated = False
        self.error = None
        try:
            context = QgsProcessingContext()
            feedback = QgsProcessingFeedback()
            processing.run("native:package",
                           {
                               'LAYERS': self.gml_layers,
                               'OUTPUT': self.geopackage_filepath,
                               'OVERWRITE': True,
                               'SAVE_METADATA': True,
                               'SAVE_STYLES': True,
                               'SELECTED_FEATURES_ONLY': False
                           }, context=context, feedback=feedback)
        except Exception as e:
            self.error = e
