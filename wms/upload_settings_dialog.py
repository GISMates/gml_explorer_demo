import os
import sys
from collections import OrderedDict
import json
from pathlib import Path

from qgis.PyQt.QtCore import Qt, QSize, QSettings as qs
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QDialog, QTreeWidgetItem, QPushButton, QWidget, QHBoxLayout, QLabel
from qgis.PyQt import uic
from qgis.core import *


WIDGET_SIZE = 25
REMOVE_ICON = QIcon(os.path.join(Path(__file__).parents[1], 'resources', 'remove.png'))


class UploadSettingsDialog(QDialog):
    def __init__(self, parent=None):
        """Constructor."""
        super(UploadSettingsDialog, self).__init__(parent)
        uic.loadUi(os.path.join(Path(__file__).parents[1], "ui", "upload_settings_dialog.ui"), self)
        self.crs_widget.setCrs(QgsCoordinateReferenceSystem('EPSG:2180'))
        self.fillCrsTree()
        self.add_crs_button.clicked.connect(self.addCrs)
        self.checkExtentButton()
        self.map_window_extent_button.clicked.connect(lambda checked: self.changeExtentSetting(checked, self.map_window_extent_button))
        self.project_layers_extent_button.clicked.connect(lambda checked: self.changeExtentSetting(checked, self.project_layers_extent_button))
        self.checkAttributesButton()
        self.expose_attributes_button.clicked.connect(lambda checked: self.changeExposeAttributesSetting(checked, self.expose_attributes_button))
        self.hide_attributes_button.clicked.connect(lambda checked: self.changeExposeAttributesSetting(checked, self.hide_attributes_button))

    def fillCrsTree(self):
        wms_crs = qs().value('wms_crs')
        if wms_crs is None:
            qs().setValue('wms_crs', ['EPSG:2180'])
        self.crs_tree.clear()
        for crs in qs().value('wms_crs'):
            crs_item = QTreeWidgetItem(self.crs_tree)
            container = QWidget()
            layout = QHBoxLayout()
            layout.setContentsMargins(1, 1, 1, 1)
            crs_label = QLabel(crs)
            remove_button = self.createButton(REMOVE_ICON, crs)
            crs_label.setObjectName('crs_label')
            layout.addWidget(crs_label)
            if crs != 'EPSG:2180':
                layout.addWidget(remove_button)
            container.setLayout(layout)
            self.crs_tree.setItemWidget(crs_item, 0, container)

    def addCrs(self):
        settings = qs()
        wms_crs_list = settings.value('wms_crs')
        crs = self.crs_widget.crs().authid()
        if crs not in wms_crs_list:
            wms_crs_list.append(crs)
            settings.setValue('wms_crs', wms_crs_list)
        self.fillCrsTree()

    def removeCrs(self, crs):
        settings = qs()
        wms_crs_list = settings.value('wms_crs')
        wms_crs_list.remove(crs)
        settings.setValue('wms_crs', wms_crs_list)
        self.fillCrsTree()

    def createButton(self, icon, crs):
        button = QPushButton(icon, '')
        button.setMaximumSize(QSize(WIDGET_SIZE, WIDGET_SIZE))
        button.setMinimumSize(QSize(WIDGET_SIZE, WIDGET_SIZE))
        button.clicked.connect(lambda: self.removeCrs(crs))
        return button

    def checkExtentButton(self):
        settings = qs()
        wms_extent = settings.value('wms_extent')
        if wms_extent is None:
            settings.setValue('wms_extent', 'map_extent')
        if wms_extent == 'map_extent' or wms_extent is None:
            self.map_window_extent_button.setChecked(True)
        if wms_extent == 'layers_extent':
            self.project_layers_extent_button.setChecked(True)

    def changeExtentSetting(self, checked, button):
        if checked:
            buttons = [self.map_window_extent_button,
                       self.project_layers_extent_button]
            buttons.remove(button)
            settings = qs()
            if button == self.map_window_extent_button:
                settings.setValue('wms_extent', 'map_extent')
            if button == self.project_layers_extent_button:
                settings.setValue('wms_extent', 'layers_extent')
            for btn in buttons:
                btn.setChecked(False)
        else:
            button.setChecked(True)

    def checkAttributesButton(self):
        settings = qs()
        wms_expose_attributes = settings.value('wms_expose_attributes')
        if wms_expose_attributes is None:
            settings.setValue('wms_expose_attributes', 'hide')
        if wms_expose_attributes == 'expose':
            self.expose_attributes_button.setChecked(True)
        if wms_expose_attributes == 'hide' or wms_expose_attributes is None:
            self.hide_attributes_button.setChecked(True)

    def changeExposeAttributesSetting(self, checked, button):
        if checked:
            buttons = [self.expose_attributes_button,
                       self.hide_attributes_button]
            buttons.remove(button)
            settings = qs()
            if button == self.expose_attributes_button:
                settings.setValue('wms_expose_attributes', 'expose')
            if button == self.hide_attributes_button:
                settings.setValue('wms_expose_attributes', 'hide')
            for btn in buttons:
                btn.setChecked(False)
        else:
            button.setChecked(True)
