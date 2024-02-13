from qgis.core import *
from qgis.PyQt.QtCore import QThread

from ..progress.progress_screen import ProgressScreen
from .func_box import FuncBox as fb


class KartoTask(QThread):

    def __init__(self, window, project):
        super(KartoTask, self).__init__()
        self.dockwidget = window
        self.project = project
        self.progress_screen = ProgressScreen(self, window)

    def run(self):
        self.terminated = False
        self.error = None
        self.karto_data = []
        try:
            for layer in self.karto_layers:
                if layer.name() in ('GES_PunktOOkreslonejWysokosci_punkt', 'GES_Rzedna_punkt',):
                    self.karto_data.append((layer, 'bez_odnosnikow', self.generateReferenceLayer(layer), 'GES_Odnosniki', layer.name() == 'GES_Rzedna_punkt'))
                if layer.name() in ('OT_Skarpa_powierzchnia', 'BDZ_BudowlaZiemna_powierzchnia'):
                    self.karto_data.append((layer, 'bez_wypelnienia', self.generateSlopeFillLayer(layer), 'Skarpa_wypelnienie', layer.name() == 'OT_Skarpa_powierzchnia'))
        except Exception as e:
            self.error = e

    def generateReferenceLayer(self, point_layer):
        if len(self.project.mapLayersByName('GES_Odnosniki')) == 0:
            reference_layer = QgsVectorLayer('%s?crs=%s' % ('LineString', point_layer.crs().authid()), 'GES_Odnosniki', 'memory')
            reference_layer.startEditing()
            new_gml = point_layer.name() == 'GES_Rzedna_punkt'
            for point_feature in point_layer.getFeatures():
                if new_gml:
                    try:
                        reference_geometry = fb.generateLabelReference(250, point_feature)
                    except:
                        reference_geometry = None
                else:
                    try:
                        reference_geometry = QgsGeometry.fromWkt(point_feature.attribute("KR_ObiektKarto_odnosnik"))
                    except:
                        reference_geometry = None
                if reference_geometry is not None:
                    reference_feature = QgsFeature()
                    reference_feature.setGeometry(reference_geometry)
                    reference_layer.addFeature(reference_feature)
            reference_layer.commitChanges()
            return reference_layer

    def generateSlopeFillLayer(self, slope_layer):
        if len(self.project.mapLayersByName('Skarpa_wypelnienie')) == 0:
            slope_fill_layer = QgsVectorLayer('%s?crs=%s' % ('MultiLineString', slope_layer.crs().authid()), 'Skarpa_wypelnienie', 'memory')
            slope_fill_layer.startEditing()
            new_gml = slope_layer.name() == 'OT_Skarpa_powierzchnia'
            slope_filter = 'True' if new_gml else '"rodzajBudZiemn" IN(\'nasyp\', \'grobla\', \'walPrzeciwpowodziowy\', \'wykop\', \'skarpaNieumocniona\', \'skarpaUmocniona\')'
            for slope_feature in slope_layer.getFeatures(slope_filter):
                if new_gml:
                    try:
                        slope_fill_geometry = fb.generateSlopeFillGeometry(slope_feature)
                    except:
                        slope_fill_geometry = None
                else:
                    try:
                        slope_fill_geometry = QgsGeometry.fromWkt(slope_feature.attribute("KR_ObiektKarto_geometriaKarto"))
                    except:
                        try:
                            slope_fill_geometry = fb.generateSlopeFillGeometryOld(slope_feature)
                        except:
                            slope_fill_geometry = None
                if slope_fill_geometry is not None:
                    slope_fill_feature = QgsFeature()
                    slope_fill_feature.setGeometry(slope_fill_geometry)
                    slope_fill_layer.addFeature(slope_fill_feature)
            slope_fill_layer.commitChanges()
            return slope_fill_layer
