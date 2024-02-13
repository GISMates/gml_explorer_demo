import os
import shutil
from pathlib import Path

from qgis.PyQt.QtCore import QThread

from ..progress.progress_screen import ProgressScreen


class ZipTask(QThread):

    def __init__(self, window):
        super(ZipTask, self).__init__()
        self.dockwidget = window
        self.progress_screen = ProgressScreen(self, window)

    def run(self):
        self.terminated = False
        self.error = None
        try:
            shutil.make_archive(self.project_dir, 'zip', os.path.dirname(self.project_dir), self.project_name)
        except Exception as e:
            self.error = e
