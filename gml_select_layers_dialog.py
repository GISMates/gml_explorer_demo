import os
import json

from qgis.PyQt import uic
from qgis.PyQt.QtCore import Qt
from qgis.PyQt.QtWidgets import QDialog, QTreeWidgetItemIterator
import sys
sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'ui/gml_select_layers_dialog.ui'), resource_suffix='')


class GMLSelectLayersDialog(QDialog, FORM_CLASS):

    def __init__(self, parent=None):
        """Constructor."""
        super(GMLSelectLayersDialog, self).__init__(parent)
        self.setupUi(self)
        self.load_layers_button.clicked.connect(self.accept)
        self.select_all_box.stateChanged.connect(self.selectDeselectAll)
        self.layers_tree.itemChanged.connect(self.switchLoadLayersButton)

    def accept(self):
        super(GMLSelectLayersDialog, self).accept()

    def selectDeselectAll(self, state):
        iterator = QTreeWidgetItemIterator(self.layers_tree)
        while iterator.value():
            tree_item = iterator.value()
            tree_item.setCheckState(0, state)
            iterator += 1

    def switchLoadLayersButton(self):
        iterator = QTreeWidgetItemIterator(self.layers_tree)
        all_unchecked = True
        while iterator.value():
            tree_item = iterator.value()
            if tree_item.checkState(0) == Qt.Checked:
                all_unchecked = False
                break
            iterator += 1
        if all_unchecked:
            self.load_layers_button.setEnabled(False)
        else:
            self.load_layers_button.setEnabled(True)
