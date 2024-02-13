from qgis.core import *
from math import sin, cos, pi, atan


class FuncBox:

    @staticmethod
    def generateLabelReference(map_scale, feature):
        described_object = feature.attribute("OpisywanyObiekt")
        try:
            label_geom_wkt = feature.attribute("PrezentacjaGraficzna_geometria")
            reference_start_wkt = feature.attribute("PrezentacjaGraficzna_odnosnik")
            justification = feature.attribute("PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja")
        except:
            label_geom_wkt = NULL
            reference_start_wkt = NULL
            justification = NULL
        if label_geom_wkt != NULL and reference_start_wkt != NULL and justification != NULL:
            justification = int(justification) + 1
            if justification > 8:
                justification = 8
            label_geom = QgsGeometry.fromWkt(label_geom_wkt)
            reference_start = QgsGeometry.fromWkt(reference_start_wkt)
            label_point = label_geom.get()
            reference_start_point = reference_start.get()
            heights_lengths = []
            heights_lengths.append(len(str(feature.attribute("rzednaGory"))))
            heights_lengths.append(len(str(feature.attribute("rzedna"))))
            heights_lengths.append(len(str(feature.attribute("rzednaDolu"))))
            height_length = max(heights_lengths)
            if map_scale <= 501:
                dx = height_length * 0.34
            else:
                dx = height_length * 0.68
            dy = 0
            if feature.attribute("rzedna") != NULL or (
                    feature.attribute("rzednaGory") != NULL and feature.attribute("rzednaDolu") == NULL) or (
                    feature.attribute("rzednaDolu") != NULL and feature.attribute("rzednaGory") == NULL):
                if justification in (0, 1, 2):
                    dy = 0
                if justification in (3, 4, 5):
                    dy = -0.4
                if justification in (6, 7, 8):
                    dy = -0.8
                if map_scale >= 501:
                    dy = dy * 2
            else:
                if justification in (0, 1, 2):
                    dy = 0.8
                if justification in (3, 4, 5):
                    dy = 0
                if justification in (6, 7, 8):
                    dy = -0.8
                if map_scale >= 501:
                    dy = dy * 2
            if label_point.x() > reference_start_point.x():
                if justification in (0, 3, 6):
                    dx = -dx
                if justification in (1, 4, 7):
                    dx = -dx / 2
                if justification in (2, 5, 8):
                    dx = 0
            else:
                if justification in (2, 5, 8):
                    dx = dx
                if justification in (1, 4, 7):
                    dx = dx / 2
                if justification in (0, 3, 6):
                    dx = 0
            middle_point = QgsPoint(QgsPointXY(label_point.x() + dx, label_point.y() + dy))
            if label_point.x() > reference_start_point.x():
                if map_scale <= 501:
                    end_point = QgsPoint(QgsPointXY(label_point.x() + dx + height_length * 0.35, label_point.y() + dy))
                else:
                    end_point = QgsPoint(QgsPointXY(label_point.x() + dx + height_length * 0.7, label_point.y() + dy))
            else:
                if map_scale <= 501:
                    end_point = QgsPoint(QgsPointXY(label_point.x() + dx - height_length * 0.35, label_point.y() + dy))
                else:
                    end_point = QgsPoint(QgsPointXY(label_point.x() + dx - height_length * 0.7, label_point.y() + dy))

            label_reference = QgsLineString()
            label_reference.addVertex(reference_start_point)
            label_reference.addVertex(middle_point)
            label_reference.addVertex(end_point)
            return QgsGeometry(label_reference)
        elif described_object == NULL:
            feature_point = feature.geometry().asPoint()
            start_point = QgsPoint(feature_point)
            middle_point = QgsPoint(feature_point.x() + 1.5, feature_point.y() + 1.5)
            end_point = QgsPoint(feature_point.x() + 3.5, feature_point.y() + 1.5)
            label_reference = QgsLineString()
            label_reference.addVertex(start_point)
            label_reference.addVertex(middle_point)
            label_reference.addVertex(end_point)
            return QgsGeometry(label_reference)

    @staticmethod
    def generateSlopeFillGeometryOld(feature):
        """
        Function generates fill symbol for slopes
        """
        geometry = feature.geometry().forceRHR()
        geometry_rings = geometry.asPolygon()
        top_end = feature.attribute('poczatekGorySkarpy')
        top_start = feature.attribute('koniecGorySkarpy')
        top_startpoint = QgsPoint()
        top_endpoint = QgsPoint()
        top_startpoint.fromWkt(top_start)
        top_endpoint.fromWkt(top_end)
        slope_nodes = []
        slope_top_nodes = []
        found_start = False
        geom_nodes_len = 0
        if len(geometry_rings) == 1:
            for v in geometry.vertices():
                geom_nodes_len += 1
                if v.distance(top_startpoint) == 0:
                    slope_nodes.append(v)
                    found_start = True
                if found_start:
                    slope_nodes.append(v)
            if len(slope_nodes) != geom_nodes_len:
                for v in geometry.vertices():
                    if v not in slope_nodes:
                        slope_nodes.append(v)
            for v in slope_nodes:
                slope_top_nodes.append(v)
                if v.distance(top_endpoint) == 0:
                    break
        else:
            ring_counter = 0
            for ring in geometry_rings:
                for v_r in ring:
                    v = QgsPoint(v_r)
                    if v.distance(top_startpoint) == 0:
                        break
                ring_counter = + 1
            for v_r in geometry_rings[ring_counter]:
                v = QgsPoint(v_r)
                slope_top_nodes.append(v)
        top_line = QgsGeometry.fromPolyline(slope_top_nodes)
        top_line.removeDuplicateNodes()
        top_line_vertices_num = len(top_line.asPolyline())
        bottom_line = geometry.convertToType(QgsWkbTypes.LineGeometry).difference(top_line)
        bottom_line.removeDuplicateNodes()
        if top_line_vertices_num < 10:
            top_line_densified = top_line.densifyByDistance(0.2 * top_line.length())
        else:
            top_line_densified = top_line
        top_line_distances = []
        for vertex in top_line_densified.vertices():
            dist = QgsGeometry(vertex).distance(bottom_line)
            top_line_distances.append(dist)
        b = (sum(top_line_distances) / len(top_line_distances)) / 2
        prev_v = None
        top_line = top_line.densifyByDistance(b)
        even = False
        first_point = True
        symbol_list = []
        for v in top_line.vertices():
            if prev_v is not None:
                azimuth = prev_v.azimuth(v)
                if azimuth < 0:
                    azimuth = azimuth + 360
                symbol_azimuth = azimuth + 90
                symbol_node = QgsGeometry(prev_v)
                if not even:
                    dist_to_bottom = symbol_node.distance(bottom_line)
                    even = True
                else:
                    dist_to_bottom = symbol_node.distance(bottom_line) / 2
                    even = False
                if first_point:
                    first_point = False
                else:
                    symbol_end_node_x = symbol_node.asPoint().x() + dist_to_bottom * sin(symbol_azimuth * (pi / 180))
                    symbol_end_node_y = symbol_node.asPoint().y() + dist_to_bottom * cos(symbol_azimuth * (pi / 180))
                    symbol_node_end = QgsPoint(QgsPointXY(symbol_end_node_x, symbol_end_node_y))
                    symbol_node_end_geom = QgsGeometry(symbol_node_end)
                    if geometry.contains(symbol_node_end_geom):
                        symbol_line = QgsLineString(QgsPoint(symbol_node.asPoint()), symbol_node_end)
                        symbol_line_geom = QgsGeometry(symbol_line)
                        symbol_disjoint_rest = True
                        if len(symbol_list) > 0:
                            for s in symbol_list:
                                if symbol_line_geom.intersects(s):
                                    symbol_disjoint_rest = False
                                    break
                        if symbol_line_geom.crosses(top_line) or symbol_line_geom.crosses(bottom_line):
                            symbol_disjoint_rest = False
                        if symbol_disjoint_rest:
                            symbol_list.append(symbol_line_geom)
            prev_v = v
        symbol = QgsMultiLineString()
        for s in symbol_list:
            sym = QgsLineString()
            sym.fromWkt(s.asWkt())
            symbol.addGeometry(sym)
        return QgsGeometry(symbol)

    @staticmethod
    def generateSlopeFillGeometry(feature):
        """
        Function generates fill symbol for slopes
        """
        geometry = feature.geometry().forceRHR()
        geometry_rings = geometry.asPolygon()
        top_start = feature.attribute('poczatekGorySkarpy')
        top_end = feature.attribute('koniecGorySkarpy')
        top_startpoint = QgsPoint()
        top_endpoint = QgsPoint()
        top_startpoint.fromWkt(top_start)
        top_endpoint.fromWkt(top_end)
        slope_nodes = []
        slope_top_nodes = []
        found_start = False
        geom_nodes_len = 0
        if len(geometry_rings) == 1:
            for v in geometry.vertices():
                geom_nodes_len += 1
                if v.distance(top_startpoint) == 0:
                    slope_nodes.append(v)
                    found_start = True
                if found_start:
                    slope_nodes.append(v)
            if len(slope_nodes) != geom_nodes_len:
                for v in geometry.vertices():
                    if v not in slope_nodes:
                        slope_nodes.append(v)
            for v in slope_nodes:
                slope_top_nodes.append(v)
                if v.distance(top_endpoint) == 0:
                    break
        else:
            ring_counter = 0
            for ring in geometry_rings:
                for v_r in ring:
                    v = QgsPoint(v_r)
                    if v.distance(top_startpoint) == 0:
                        break
                ring_counter = + 1
            for v_r in geometry_rings[ring_counter]:
                v = QgsPoint(v_r)
                slope_top_nodes.append(v)
        top_line = QgsGeometry.fromPolyline(slope_top_nodes)
        top_line.removeDuplicateNodes()
        top_line_vertices_num = len(top_line.asPolyline())
        bottom_line = geometry.convertToType(QgsWkbTypes.LineGeometry).difference(top_line)
        bottom_line.removeDuplicateNodes()
        if top_line_vertices_num < 10:
            top_line_densified = top_line.densifyByDistance(0.2 * top_line.length())
        else:
            top_line_densified = top_line
        top_line_distances = []
        for vertex in top_line_densified.vertices():
            dist = QgsGeometry(vertex).distance(bottom_line)
            top_line_distances.append(dist)
        b = (sum(top_line_distances) / len(top_line_distances)) / 2
        prev_v = None
        top_line = top_line.densifyByDistance(b)
        even = False
        first_point = True
        symbol_list = []
        for v in top_line.vertices():
            if prev_v is not None:
                azimuth = prev_v.azimuth(v)
                if azimuth < 0:
                    azimuth = azimuth + 360
                symbol_azimuth = azimuth + 90
                symbol_node = QgsGeometry(prev_v)
                if not even:
                    dist_to_bottom = symbol_node.distance(bottom_line)
                    even = True
                else:
                    dist_to_bottom = symbol_node.distance(bottom_line) / 2
                    even = False
                if first_point:
                    first_point = False
                else:
                    symbol_end_node_x = symbol_node.asPoint().x() + dist_to_bottom * sin(symbol_azimuth * (pi / 180))
                    symbol_end_node_y = symbol_node.asPoint().y() + dist_to_bottom * cos(symbol_azimuth * (pi / 180))
                    symbol_node_end = QgsPoint(QgsPointXY(symbol_end_node_x, symbol_end_node_y))
                    symbol_node_end_geom = QgsGeometry(symbol_node_end)
                    if geometry.contains(symbol_node_end_geom):
                        symbol_line = QgsLineString(QgsPoint(symbol_node.asPoint()), symbol_node_end)
                        symbol_line_geom = QgsGeometry(symbol_line)
                        symbol_disjoint_rest = True
                        if len(symbol_list) > 0:
                            for s in symbol_list:
                                if symbol_line_geom.intersects(s):
                                    symbol_disjoint_rest = False
                                    break
                        if symbol_line_geom.crosses(top_line) or symbol_line_geom.crosses(bottom_line):
                            symbol_disjoint_rest = False
                        if symbol_disjoint_rest:
                            symbol_list.append(symbol_line_geom)
            prev_v = v
        symbol = QgsMultiLineString()
        for s in symbol_list:
            sym = QgsLineString()
            sym.fromWkt(s.asWkt())
            symbol.addGeometry(sym)
        return QgsGeometry(symbol)
