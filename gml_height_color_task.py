from qgis.PyQt.QtCore import QThread, pyqtSignal

from .progress.progress_screen import ProgressScreen


class GMLHeightColorTask(QThread):

    def __init__(self, dockwidget, layer_manager):
        super(GMLHeightColorTask, self).__init__()
        self.dockwidget = dockwidget
        self.layer_manager = layer_manager
        self.progress_screen = ProgressScreen(self, dockwidget)

    def run(self):
        self.terminated = False
        self.error = None
        try:
            self.layer_manager.getHeightColor(self.gml_layers)
        except Exception as e:
            self.error = e
