import os

from qgis.PyQt.QtCore import Qt
from qgis.PyQt import uic
from qgis.PyQt import QtWidgets
import sys
sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'ui/gml_map_extent_form.ui'), resource_suffix='')


class GMLMapExtentForm(QtWidgets.QDialog, FORM_CLASS):
    def __init__(self, parent=None):
        """Constructor."""
        super(GMLMapExtentForm, self).__init__(parent)
        self.setupUi(self)
        self.setWindowFlags(Qt.WindowStaysOnTopHint)
        self.changeEvent = self.changeEvent
        self.buttonBox.accepted.connect(self.accept)
        self.buttonBox.rejected.connect(self.reject)
        self.lock_west_button.clicked.connect(self.lockWest)
        self.lock_south_button.clicked.connect(self.lockSouth)

    def accept(self):
        super(GMLMapExtentForm, self).accept()

    def reject(self):
        super(GMLMapExtentForm, self).reject()

    def changeEvent(self, event):
        if self.isActiveWindow():
            self.setWindowOpacity(1)
        else:
            self.setWindowOpacity(0.8)

    def lockWest(self):
        if self.lock_west_button.isChecked():
            self.west.setEnabled(False)
        else:
            self.west.setEnabled(True)

    def lockSouth(self):
        if self.lock_south_button.isChecked():
            self.south.setEnabled(False)
        else:
            self.south.setEnabled(True)
