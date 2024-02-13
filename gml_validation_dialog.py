import os
import json

from qgis.PyQt import uic
from qgis.PyQt.QtCore import Qt
from qgis.PyQt.QtWidgets import QDialog, QMessageBox, QFileDialog
import csv
import sys
sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'ui/gml_validation_dialog.ui'), resource_suffix='')


class GMLValidationDialog(QDialog, FORM_CLASS):

    def __init__(self, parent=None):
        """Constructor."""
        super(GMLValidationDialog, self).__init__(parent)
        self.setupUi(self)
        self.export_to_csv_button.clicked.connect(self.exportReportToCsv)

    def exportReportToCsv(self):
        csv_file = QFileDialog.getSaveFileName(self, 'Wybierz plik', '', 'Comma Separated Value(*.csv)')
        if csv_file[0] != "":
            with open(csv_file[0], 'w', newline='', encoding='utf-8') as f:
                write = csv.writer(f, delimiter=";")
                write.writerow(['Nr linii', 'Opis błędu'])
                for i in range(1, self.report_table.rowCount()):
                    write.writerow([self.report_table.item(i, 0).text(), self.report_table.item(i, 1).text()])
        mbox = QMessageBox(self)
        mbox.setWindowTitle('Raport walidacji GML')
        mbox.setText('Raport został zapisany we wskazanej lokalizacji')
        mbox.open()

