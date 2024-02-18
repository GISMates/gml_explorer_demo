import platform
import webbrowser
import shutil
import os.path
import subprocess

from qgis.PyQt.QtCore import QSettings, QTranslator, QCoreApplication, Qt, QSize
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QAction, QFileDialog
from qgis.core import *

from .resources.resources import *
from .gml_logger import GMLLogger
from .gml_logger import GMLLoggerMode
from .gml_validator import GMLValidator
from .gml_expressions_manager import GMLExpressionsManager
from .gml_reports_manager import GMLReportsManager
from .gml_map_generator import GMLMapGenerator
from .wms.project_manager import ProjectManager
from .gml_explorer_dockwidget import GMLExplorerDockWidget


class GMLExplorer:
    """QGIS Plugin Implementation."""

    def __init__(self, iface):
        self.iface = iface
        self.project = QgsProject.instance()
        self.map_canvas = iface.mapCanvas()
        self.plugin_dir = os.path.dirname(__file__)
        locale = QSettings().value('locale/userLocale')[0:2]
        locale_path = os.path.join(
            self.plugin_dir,
            'i18n',
            'GMLExplorer_{}.qm'.format(locale))
        if os.path.exists(locale_path):
            self.translator = QTranslator()
            self.translator.load(locale_path)
            QCoreApplication.installTranslator(self.translator)

        self.actions = []
        self.menu = self.tr(u'&Wizualizacja GML')

        self.pluginIsActive = False
        self.dockwidget = None
        self.iface.initializationCompleted.connect(self.changeToolBarIconSize)

    def changeToolBarIconSize(self):
        self.iface.pluginToolBar().setIconSize(QSize(40, 40))

    def tr(self, message):
        return QCoreApplication.translate('GMLExplorer', message)

    def add_action(
            self,
            icon_path,
            text,
            callback,
            enabled_flag=True,
            add_to_menu=True,
            add_to_toolbar=True,
            status_tip=None,
            whats_this=None,
            parent=None):

        icon = QIcon(icon_path)
        action = QAction(icon, text, parent)
        action.triggered.connect(callback)
        action.setEnabled(enabled_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)
        if whats_this is not None:
            action.setWhatsThis(whats_this)
        if add_to_toolbar:
            self.iface.addToolBarIcon(action)
        if add_to_menu:
            self.iface.addPluginToMenu(
                self.menu,
                action)
        self.actions.append(action)

        return action

    def initGui(self):
        icon_path = os.path.join(os.path.dirname(__file__), 'resources', 'cgeo_gml_qgis.png')
        self.add_action(
            icon_path,
            text=self.tr(u'Wizualizuj dane GML'),
            callback=self.run,
            parent=self.iface.mainWindow())
        self.iface.pluginToolBar().setIconSize(QSize(40, 40))

    def onClosePlugin(self):
        self.dockwidget.closingPlugin.disconnect(self.onClosePlugin)
        self.pluginIsActive = False

    def unload(self):
        for action in self.actions:
            self.iface.removePluginMenu(
                self.tr(u'&Wizualizacja GML'),
                action)
            self.iface.removeToolBarIcon(action)

    def closeWindow(self, e):
        self.pluginIsActive = False

    def run(self):
        if not self.pluginIsActive:
            self.logger = GMLLogger(self.iface)
            self.pluginIsActive = True
            if self.dockwidget is None:
                self.dockwidget = GMLExplorerDockWidget()
                self.gml_map_generator = GMLMapGenerator(self.project, self.iface, self.dockwidget, self.logger)
                self.gml_reports_manager = GMLReportsManager(self.iface, self.project, self.dockwidget, self.logger)
                self.gml_validator = GMLValidator(self.dockwidget, self.logger)
                self.project_manager = ProjectManager(self.dockwidget, self.iface, self.logger)
                GMLExpressionsManager()
                self.dockwidget.load_gml_button.clicked.connect(self.loadSampleProject)
                self.dockwidget.validate_gml_button.clicked.connect(lambda: self.gml_validator.validateGML(self.dockwidget.gml_path_2.text()))
                self.dockwidget.load_report_button.clicked.connect(self.gml_reports_manager.generateReport)
                self.dockwidget.save_project_button.clicked.connect(self.project_manager.prepareProject)
                self.dockwidget.upload_project_button.clicked.connect(lambda: self.project_manager.prepareProject(True))
                self.dockwidget.export_to_cad_button.clicked.connect(self.saveSampleCad)
                self.dockwidget.help_button.clicked.connect(self.showHelp)
                self.dockwidget.c_geoportal.clicked.connect(lambda: webbrowser.open('https://www.c-geoportal.pl/map'))
            self.dockwidget.closeEvent = self.closeWindow
            self.dockwidget.closingPlugin.connect(self.onClosePlugin)
            self.iface.addDockWidget(Qt.RightDockWidgetArea, self.dockwidget)
            self.dockwidget.show()

    def loadSampleProject(self):
        if Qgis.QGIS_VERSION_INT < 33200:
            self.project.read(os.path.join(os.path.dirname(__file__), 'sample', 'old', 'projekt.qgz'))
        else:
            self.project.read(os.path.join(os.path.dirname(__file__), 'sample', 'new', 'projekt.qgz'))

    def saveSampleCad(self):
        selected_file = QFileDialog.getSaveFileName(self.dockwidget, "Wskaż miejsce zapisu próbki CAD", '', "Drawing Exchange Format(*.dxf)")[0]
        if selected_file != '':
            shutil.copy(os.path.join(os.path.dirname(__file__), 'sample', 'cad', 'cad.dxf'), selected_file)
            self.logger.logMessage("Wizualizacja GML", "Próbka CAD zapisana we wskazanej lokalizacji", Qgis.Success, GMLLoggerMode.loud)

    def showHelp(self):
        manual_path = os.path.join(os.path.dirname(__file__), 'resources/manual.pdf')
        if platform.system() == "Windows":
            os.startfile(manual_path)
        elif platform.system() == "Darwin":
            subprocess.Popen(["open", manual_path])
        else:
            subprocess.Popen(["xdg-open", manual_path])
