from qgis.core import *
from .gml_logger_mode import GMLLoggerMode


class GMLLogger:

    def __init__(self, iface):
        self.iface = iface

    def logMessage(self, header, message, message_level, mode):
        if mode == GMLLoggerMode.loud:
            self.iface.messageBar().pushMessage(header, message, level=message_level, duration=3)
        QgsMessageLog.logMessage(message, header, level=message_level)
