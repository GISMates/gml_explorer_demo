from qgis.core import *
from math import sin, cos, pi, atan


def generateMiddleLine(geometry):
    geometry = geometry.simplify(0.0001)
    prev_v = None
    counter = 1
    break_points = []
    break_points_geom = QgsMultiPoint()
    for v in geometry.vertices():
        if prev_v is not None:
            next_v = geometry.vertexAt(1) if geometry.vertexAt(counter).isEmpty() else geometry.vertexAt(counter)
            numerator = prev_v.y() * (v.x() - next_v.x()) + v.y() * (next_v.x() - prev_v.x()) + next_v.y() * (prev_v.x() - v.x())
            denominator = (prev_v.x() - v.x()) * (v.x() - next_v.x()) + (prev_v.y() - v.y()) * (v.y() - next_v.y())
            denominator = 0.000001 if denominator == 0 else denominator
            ratio = numerator/denominator
            angle = atan(ratio) * 180 / pi
            if abs(abs(angle) - 90) <= 20:
                break_points.append(counter - 1)
                break_points_geom.addGeometry(v)
        prev_v = v
        counter += 1
    counter = 0
    segments = []
    segment_points = []
    for v in geometry.vertices():
        segment_points.append(v)
        if counter in break_points:
            segment = QgsLineString()
            for point in segment_points:
                segment.addVertex(point)
            segments.append(segment)
            segment_points.clear()
            segment_points.append(v)
            break_points.pop(0)
        counter += 1
    segments = sorted(segments, key=lambda segment: segment.length())
    top_line = QgsGeometry(segments[0]).buffer(0.001, 4, Qgis.EndCapStyle(1), Qgis.JoinStyle(1), 0)
    bottom_line = QgsGeometry(segments[1]).buffer(0.001, 4, Qgis.EndCapStyle(1), Qgis.JoinStyle(1), 0)
    exterior = QgsGeometry(geometry.coerceToType(QgsWkbTypes.MultiLineString)[0])
    exterior = exterior.difference(top_line)
    exterior = exterior.difference(bottom_line)
    exterior = exterior.mergeLines()
    edges = []
    for part in exterior.parts():
        edges.append(part.asWkt())
    first_edge = QgsGeometry.fromWkt(edges[0])
    second_edge = QgsGeometry.fromWkt(edges[1])
    middle_line = QgsLineString()
    break_points_geom = QgsGeometry.fromWkt(break_points_geom.asWkt())
    for v in first_edge.vertices():
        node = QgsGeometry(v)
        if node.intersects(break_points_geom):
            break_points_geom_diff = break_points_geom.difference(node.buffer(0.01, 5))
            width_line = node.shortestLine(break_points_geom_diff)
        else:
            width_line = node.shortestLine(second_edge)
        middle_line.addVertex(QgsPoint(width_line.centroid().asPoint()))
    return QgsGeometry.fromWkt(middle_line.asWkt()), exterior


@qgsfunction(args='auto', group='GML')
def approximateMiddleLine(feature, parent):
    """
    Function generates middle line of polygon
    """
    middle_line, exterior = generateMiddleLine(feature.geometry())
    return middle_line


@qgsfunction(args='auto', group='GML')
def getLongEdges(feature, parent):
    """
    Function generates middle line of polygon
    """
    middle_line, exterior = generateMiddleLine(feature.geometry())
    return exterior


@qgsfunction(args='auto', group='GML')
def generateConveyorBeltFillGeometryOld(symbol_size, feature, parent):
    """
    Function generates conveyor belt fill symbol
    """
    middle_line, exterior = generateMiddleLine(feature.geometry())
    first_vertex = middle_line.vertexAt(0)
    node = QgsGeometry.fromWkt(first_vertex.asWkt())
    width = node.shortestLine(exterior).length()
    middle_line = QgsGeometry.fromWkt(QgsLineString(middle_line.asPolyline()).curveSubstring(width, QgsLineString(middle_line.asPolyline()).length() - width).asWkt())
    middle_line = middle_line.densifyByDistance(2 * width)
    symbol = QgsMultiPolygon()
    counter = 1
    for v in middle_line.vertices():
        sym = QgsPolygon()
        if counter % 2 == 0:
            s = QgsGeometry(v).buffer(width, 96)
        else:
            s = QgsGeometry(v).buffer(symbol_size, 96)
        sym.fromWkt(s.asWkt())
        symbol.addGeometry(sym)
        counter += 1
    return(QgsGeometry(symbol))


@qgsfunction(args='auto', group='GML')
def generateRetainingWallGeometry(small_space, big_space, geometry, feature, parent):
    """
    Function retaining wall fill symbol
    """
    middle_line, exterior = generateMiddleLine(geometry)
    prev_v = None
    symbol = QgsMultiLineString()
    for v in middle_line.vertices():
        if prev_v is not None:
            segment = QgsLineString(prev_v, v)
            width = 2 * QgsGeometry(prev_v).shortestLine(exterior).length()
            symbol_dist = 0
            segment = segment.curveSubstring(width, segment.length() - width)
            start = segment.startPoint()
            end = segment.endPoint()
            symbol_azimuth = start.azimuth(end) - 45
            symbol_azimuth_reversed = symbol_azimuth - 180
            counter = 1
            while symbol_dist < segment.length():
                if counter == 1:
                    symbol_node = start
                else:
                    if counter % 2 == 0:
                        symbol_dist += small_space
                    else:
                        symbol_dist += big_space
                    symbol_node = segment.curveSubstring(0, symbol_dist).endPoint()
                if symbol_dist >= segment.length():
                    break
                symbol_start_node_x = symbol_node.x() + width * sin(symbol_azimuth * (pi / 180))
                symbol_start_node_y = symbol_node.y() + width * cos(symbol_azimuth * (pi / 180))
                symbol_end_node_x = symbol_node.x() + width * sin(symbol_azimuth_reversed * (pi / 180))
                symbol_end_node_y = symbol_node.y() + width * cos(symbol_azimuth_reversed * (pi / 180))
                symbol_node_start = QgsPoint(QgsPointXY(symbol_start_node_x, symbol_start_node_y))
                symbol_node_end = QgsPoint(QgsPointXY(symbol_end_node_x, symbol_end_node_y))
                symbol_line = QgsGeometry(QgsLineString(symbol_node_start, symbol_node_end))
                symbol_line = symbol_line.intersection(geometry)
                if symbol_line.wkbType() == QgsWkbTypes.LineString:
                    symbol_line = QgsLineString(symbol_line.asPolyline())
                    symbol.addGeometry(symbol_line)
                counter += 1
        prev_v = v
    return QgsGeometry(symbol)


@qgsfunction(args='auto', group='GML')
def generateRetainingWallGeometryOld(small_space, big_space, geometry, feature, parent):
    """
    Function retaining wall fill symbol
    """
    middle_line, exterior = generateMiddleLine(geometry)
    prev_v = None
    symbol = QgsMultiLineString()
    for v in middle_line.vertices():
        if prev_v is not None:
            segment = QgsLineString(prev_v, v)
            width = 2 * QgsGeometry(prev_v).shortestLine(exterior).length()
            symbol_dist = 0
            segment = segment.curveSubstring(width, segment.length() - width)
            start = segment.startPoint()
            end = segment.endPoint()
            symbol_azimuth = start.azimuth(end) - 45
            symbol_azimuth_reversed = symbol_azimuth - 180
            counter = 1
            while symbol_dist < segment.length():
                if counter <= 3:
                    symbol_dist += small_space
                else:
                    counter = 1
                    symbol_dist += big_space
                symbol_node = segment.curveSubstring(0, symbol_dist).endPoint()
                if symbol_dist >= segment.length():
                    break
                symbol_start_node_x = symbol_node.x() + width * sin(symbol_azimuth * (pi / 180))
                symbol_start_node_y = symbol_node.y() + width * cos(symbol_azimuth * (pi / 180))
                symbol_end_node_x = symbol_node.x() + width * sin(symbol_azimuth_reversed * (pi / 180))
                symbol_end_node_y = symbol_node.y() + width * cos(symbol_azimuth_reversed * (pi / 180))
                symbol_node_start = QgsPoint(QgsPointXY(symbol_start_node_x, symbol_start_node_y))
                symbol_node_end = QgsPoint(QgsPointXY(symbol_end_node_x, symbol_end_node_y))
                symbol_line = QgsGeometry(QgsLineString(symbol_node_start, symbol_node_end))
                symbol_line = symbol_line.intersection(geometry)
                if symbol_line.wkbType() == QgsWkbTypes.LineString:
                    symbol_line = QgsLineString(symbol_line.asPolyline())
                    symbol.addGeometry(symbol_line)
                counter += 1
        prev_v = v
    return QgsGeometry(symbol)


@qgsfunction(args='auto', group='GML')
def generateSlopeFillGeometryOld(feature, parent):
    """
    Function generates fill symbol for slopes
    """
    geometry = feature.geometry()
    geometry_rings = geometry.asPolygon()
    top_end = feature.attribute('koniecGorySkarpy')
    top_start = feature.attribute('poczatekGorySkarpy')
    top_startpoint = QgsPoint()
    top_endpoint = QgsPoint()
    top_startpoint.fromWkt(top_start)
    top_endpoint.fromWkt(top_end)
    iterator = geometry.vertices()
    iterator.next()
    first_vertex = iterator.next()
    geometry_rhr = geometry.forceRHR()
    iterator = geometry_rhr.vertices()
    iterator.next()
    first_vertex_rhr = iterator.next()
    angle_factor = -90 if first_vertex.distance(first_vertex_rhr) > 0 else 90
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
            symbol_azimuth = azimuth + angle_factor
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


@qgsfunction(args='auto', group='GML')
def generateSlopeFillGeometry(feature, parent):
    """
    Function generates fill symbol for slopes
    """
    geometry = feature.geometry()
    geometry_rings = geometry.asPolygon()
    top_start = feature.attribute('poczatekGorySkarpy')
    top_end = feature.attribute('koniecGorySkarpy')
    top_startpoint = QgsPoint()
    top_endpoint = QgsPoint()
    top_startpoint.fromWkt(top_start)
    top_endpoint.fromWkt(top_end)
    iterator = geometry.vertices()
    iterator.next()
    first_vertex = iterator.next()
    geometry_rhr = geometry.forceRHR()
    iterator = geometry_rhr.vertices()
    iterator.next()
    first_vertex_rhr = iterator.next()
    angle_factor = -90 if first_vertex.distance(first_vertex_rhr) > 0 else 90
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
            symbol_azimuth = azimuth + angle_factor
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


@qgsfunction(args='auto', group='GML')
def generateStairsFillGeometry(feature, parent):
    """
    Function generates fill symbol for stairs
    """
    polyline_wkt = feature.attribute('poliliniaKierunkowa')
    polyline = QgsGeometry().fromWkt(polyline_wkt)
    polyline = polyline.densifyByDistance(0.5)
    polyline_vertices = []
    for v in polyline.vertices():
        polyline_vertices.append(v)
    polyline_vertices = polyline_vertices[:len(polyline_vertices) - 1]
    symbol_list = []
    prev_v = None
    for v in polyline_vertices:
        if prev_v is not None:
            azimuth = prev_v.azimuth(v)
            if azimuth < 0:
                azimuth = azimuth + 360
            symbol_azimuth = azimuth + 90
            symbol_node = QgsGeometry(v)
            symbol_start_node_x = symbol_node.asPoint().x() + 100 * sin(symbol_azimuth * (pi / 180))
            symbol_start_node_y = symbol_node.asPoint().y() + 100 * cos(symbol_azimuth * (pi / 180))
            symbol_azimuth = symbol_azimuth - 180
            symbol_end_node_x = symbol_node.asPoint().x() + 100 * sin(symbol_azimuth * (pi / 180))
            symbol_end_node_y = symbol_node.asPoint().y() + 100 * cos(symbol_azimuth * (pi / 180))
            symbol_node_start = QgsPoint(QgsPointXY(symbol_start_node_x, symbol_start_node_y))
            symbol_node_end = QgsPoint(QgsPointXY(symbol_end_node_x, symbol_end_node_y))
            symbol_line = QgsGeometry(QgsLineString(symbol_node_start, symbol_node_end))
            symbol_line = symbol_line.intersection(feature.geometry())
            symbol_list.append(symbol_line)
        prev_v = v
    symbol = QgsMultiLineString()
    for s in symbol_list:
        sym = QgsLineString()
        sym.fromWkt(s.asWkt())
        symbol.addGeometry(sym)
    return QgsGeometry(symbol)


@qgsfunction(args='auto', group='GML')
def generateSpacesBetweenVertices(space, feature, parent):
    """
    Function generates polygon outline style with spaces between vertices
    """
    geometry = feature.geometry()
    prev_v = None
    cutted_segments = []
    for v in geometry.vertices():
        if prev_v is not None:
            azimuth = prev_v.azimuth(v)
            segment_start_x = prev_v.x() + space * sin(azimuth * (pi / 180))
            segment_start_y = prev_v.y() + space * cos(azimuth * (pi / 180))
            segment_end_x = v.x() - space * sin(azimuth * (pi / 180))
            segment_end_y = v.y() - space * cos(azimuth * (pi / 180))
            geom_start = QgsPoint(QgsPointXY(segment_start_x, segment_start_y))
            geom_end = QgsPoint(QgsPointXY(segment_end_x, segment_end_y))
            segment_line = QgsLineString(geom_start, geom_end)
            cutted_segments.append(segment_line)
        prev_v = v
    symbol = QgsMultiLineString()
    for s in cutted_segments:
        symbol.addGeometry(s)
    return QgsGeometry(symbol)


@qgsfunction(args='auto', group='GML')
def generateElectricityLine(space_start, space, feature, parent):
    """
    Function generates marker line with defined pattern
    """
    geometry = feature.geometry()
    prev_v = None
    index = 0
    symbol = QgsMultiLineString()
    for v in geometry.vertices():
        index += 1
        if prev_v is not None:
            segment = QgsLineString(prev_v, v)
            segment_reversed = segment.reversed()
            segment_half_length = segment.length() / 2
            symbol_dist = space_start
            start_symbol = segment.curveSubstring(0, symbol_dist).endPoint()
            symbol_dist += space
            prev_symbol_v = start_symbol
            if symbol_dist >= segment_half_length:
                if space_start < segment_half_length:
                    middle_symbol = segment.curveSubstring(space_start, space_start + 0.0001).endPoint()
                    symbol.addGeometry(QgsLineString(prev_symbol_v, middle_symbol))
            else:
                points = [prev_symbol_v]
                while symbol_dist < segment_half_length:
                    middle_symbol = segment.curveSubstring(0, symbol_dist).endPoint()
                    points.append(middle_symbol)
                    symbol_dist += space
                    if symbol_dist >= segment_half_length:
                        symbol.addGeometry(QgsLineString(points))
                        break
            symbol_dist = space_start
            end_symbol = segment_reversed.curveSubstring(0, symbol_dist).endPoint()
            symbol_dist += space
            prev_symbol_v = end_symbol
            if symbol_dist >= segment_half_length:
                if space_start < segment_half_length:
                    middle_symbol = segment_reversed.curveSubstring(space_start, space_start + 0.0001).endPoint()
                    symbol.addGeometry(QgsLineString(prev_symbol_v, middle_symbol))
            else:
                points = [prev_symbol_v]
                while symbol_dist < segment_half_length:
                    middle_symbol = segment_reversed.curveSubstring(0, symbol_dist).endPoint()
                    points.append(middle_symbol)
                    symbol_dist += space
                    if symbol_dist >= segment_half_length:
                        symbol.addGeometry(QgsLineString(points))
                        break
        prev_v = v
    return QgsGeometry(symbol)


@qgsfunction(args='auto', group='GML')
def generateMultiLines(feature, parent):
    """
    Function generates lines between all points in MultiPoint geometry
    """
    geometry = feature.geometry()
    points_list = geometry.asMultiPoint()
    points_pairs = []
    for i in range(0, len(points_list)):
        for j in range(0, len(points_list)):
            if i != j:
                if i > j:
                    pair = [j, i]
                else:
                    pair = [i, j]
                if pair not in points_pairs:
                    points_pairs.append(pair)
    symbol = QgsMultiLineString()
    for pair in points_pairs:
        symbol.addGeometry(QgsLineString(geometry.vertexAt(pair[0]), geometry.vertexAt(pair[1])))
    return QgsGeometry(symbol)


@qgsfunction(args='auto', group='GML')
def generateWireLabelOld(layer_name, feature, parent):
    """
    Function generates label for wire
    """
    # Existence
    try:
        existence = feature.attribute('istnienie')
    except:
        existence = ''
    # Wires num
    try:
        wires_num = '' if feature.attribute("liczbaPrzewodow") == NULL else feature.attribute("liczbaPrzewodow")
    except:
        wires_num = ''
    # Course
    try:
        courses = {'naziemny': 'z',
                   'nadziemny': 'n'}
        course = '' if courses[feature.attribute("przebieg")] is None else courses[feature.attribute("przebieg")]
    except:
        course = ''
    # Network
    layer_network = {'GES_PrzewodBenzynowy_linia': 'b',
                     'GES_PrzewodBenzynowy_powierzchnia': 'b',
                     'GES_PrzewodCieplowniczy_linia': 'c',
                     'GES_PrzewodCieplowniczy_powierzchnia': 'c',
                     'GES_PrzewodElektroenergetyczny_linia': 'e',
                     'GES_PrzewodElektroenergetyczny_powierzchnia': 'e',
                     'GES_PrzewodGazowy_linia': 'g',
                     'GES_PrzewodGazowy_powierzchnia': 'g',
                     'GES_PrzewodInny_linia': 'i',
                     'GES_PrzewodInny_powierzchnia': 'i',
                     'GES_PrzewodKanalizacyjny_linia': 'k',
                     'GES_PrzewodKanalizacyjny_powierzchnia': 'k',
                     'GES_PrzewodNaftowy_linia': 'n',
                     'GES_PrzewodNaftowy_powierzchnia': 'n',
                     'GES_PrzewodNiezidentyfikowany_linia': 'x',
                     'GES_PrzewodNiezidentyfikowany_powierzchnia': 'x',
                     'GES_PrzewodTelekomunikacyjny_powierzchnia': 't',
                     'GES_PrzewodWodociagowy_linia': 'w',
                     'GES_PrzewodWodociagowy_powierzchnia': 'w'}
    try:
        network = '' if layer_network[layer_name] is None else layer_network[layer_name]
    except:
        network = ''
    # Type
    if layer_name in ('GES_PrzewodCieplowniczy_linia', 'GES_PrzewodCieplowniczy_powierzchnia'):
        types = {'niskiParametr': 'n',
                 'wysokiParametr': 'w'}
        try:
            type = '' if types[feature.attribute("typCiep")] is None else types[feature.attribute("typCiep")]
        except:
            type = ''
    elif layer_name in ('GES_PrzewodGazowy_linia', 'GES_PrzewodGazowy_powierzchnia'):
        types = {'wysokiegoCisnienia': 'w',
                 'podwyzszonegoSredniegoCisnienia': 'p',
                 'sredniegoCisnienia': 's',
                 'niskiegoCisnienia': 'n'}
        try:
            type = '' if types[feature.attribute("typGaz")] is None else types[feature.attribute("typGaz")]
        except:
            type = ''
    elif layer_name in ('GES_PrzewodKanalizacyjny_linia', 'GES_PrzewodKanalizacyjny_powierzchnia'):
        types = {'ogolnosplawny': 'o',
                 'deszczowy': 'd',
                 'sanitarny': 's',
                 'przemyslowy': 'p',
                 'lokalny': 'l'}
        try:
            type = '' if types[feature.attribute("typKanal")] is None else types[feature.attribute("typKanal")]
        except:
            type = ''
    elif layer_name in ('GES_PrzewodWodociagowy_linia', 'GES_PrzewodWodociagowy_powierzchnia'):
        types = {'ogolny': 'o',
                 'lokalny': 'l'}
        try:
            type = '' if types[feature.attribute("typWodoc")] is None else types[feature.attribute("typWodoc")]
        except:
            type = ''
    else:
        type = ''
    # Source
    try:
        sources = {'pomiarWykrywaczemPrzewodow': 'A',
                   'digitalizacjaIWektoryzacja': 'D',
                   'fotogrametria': 'F',
                   'pomiarWOparciuOElementyMapy': 'M',
                   'daneBranzowe': 'B',
                   'inne': 'I',
                   'nieokreslone': 'X',
                   'niepoprawne': 'N',
                   'dokumentacjaZNarady': 'K',
                   'pozwolenieNaBudowe': 'P',
                   'zgloszenieBudowy': 'Z',
                   'dokumentacjaZWytyczenia': 'T'}
        source = '' if sources[feature.attribute("zrodlo")] is None else sources[feature.attribute("zrodlo")]
    except:
        source = ''
    # Diameter
    try:
        diameter = '' if feature.attribute("srednica") == NULL else feature.attribute("srednica")
    except:
        diameter = ''
    # Dimensions
    try:
        horizontal_dimension = '' if feature.attribute("wymiarPoziomy") == NULL else feature.attribute("wymiarPoziomy")
        vertical_dimension = '' if feature.attribute("wymiarPionowy") == NULL else feature.attribute("wymiarPionowy")
        if horizontal_dimension != '' and vertical_dimension != '':
            dimensions = horizontal_dimension + '/' + vertical_dimension
        else:
            dimensions = ''
    except:
        dimensions = ''
    # Exploitation
    try:
        exploitations = {'czynny': 'c',
                         'nieczynny': 'n'}
        exploitation = '' if exploitations[feature.attribute("eksploatacja")] is None else exploitations[
            feature.attribute("eksploatacja")]
        exploitation = '-%s' % exploitation if exploitation == 'n' else exploitation
    except:
        exploitation = ''
    label = ''
    if existence == 'istniejacy':
        label = '%s%s%s%s%s%s%s%s' % (wires_num, course, network, type, source, diameter, dimensions, exploitation)
    if existence == 'projektowany':
        label = 'proj. %s' % network
    if existence == 'wBudowie':
        label = 'bud. %s' % network
    return label


@qgsfunction(args='auto', group='GML')
def generateWireLabelNew(layer_name, feature, parent):
    """
    Function generates label for wire
    """
    if layer_name in('GES_PrzewodElektroenergetyczny_linia', 'GES_PrzewodElektroenergetyczny_powierzchnia', 'GES_PrzewodTelekomunikacyjny_linia', 'GES_PrzewodTelekomunikacyjny_powierzchnia') and feature.attribute("przebieg") == 'n':
        return ''
    else:
        #Existence
        try:
            existence = feature.attribute("status")
        except:
            existence = 'i'
        # Wires num
        try:
            wires_num = '' if feature.attribute("liczbaPrzewodow") == NULL else feature.attribute("liczbaPrzewodow")
        except:
            wires_num = ''
        # Network
        layer_network = {'GES_PrzewodCieplowniczy_linia': 'c',
                        'GES_PrzewodElektroenergetyczny_linia': 'e',
                        'GES_PrzewodGazowy_linia': 'g',
                        'GES_PrzewodKanalizacyjny_linia': 'k',
                        'GES_PrzewodNiezidentyfikowany_linia': 'x',
                        'GES_PrzewodSpecjalny_linia': 's',
                        'GES_PrzewodTelekomunikacyjny_linia': 't',
                        'GES_PrzewodWodociagowy_linia': 'w'}
        try:
            network = '' if layer_network[layer_name] is None else layer_network[layer_name]
        except:
            network = ''
        # Type
        try:
            type = '' if feature.attribute("typPrzewodu") == NULL else feature.attribute("typPrzewodu")
            type = '' if network == 't' and type == 'i' else type
            type = type.upper() if layer_name in('GES_PrzewodElektroenergetyczny_linia', 'GES_PrzewodElektroenergetyczny_powierzchnia') else type
        except:
            type = ''
        # Source
        try:
            source = '' if feature.attribute("zrodlo") == NULL or feature.attribute("zrodlo") == 'O' else feature.attribute("zrodlo")
        except:
            source = ''
        # Diameter
        try:
            diameter = '' if feature.attribute("srednica") == NULL else feature.attribute("srednica")
        except:
            diameter = ''
        # Dimensions
        try:
            horizontal_dimension = '' if feature.attribute("wymiarPoziomy") == NULL else feature.attribute("wymiarPoziomy")
            vertical_dimension = '' if feature.attribute("wymiarPionowy") == NULL else feature.attribute("wymiarPionowy")
            if horizontal_dimension != '' and vertical_dimension != '':
                dimensions = horizontal_dimension + '/' + vertical_dimension
            else:
                dimensions = ''
        except:
            dimensions = ''
        # Exploitation
        try:
            exploitation = '-niecz.' if feature.attribute("eksploatacja") == 'n' else ''
        except:
            exploitation = ''
        label = ''
        if existence == 'i':
            label = '%s%s%s%s%s%s%s' % (wires_num, network, type, source, diameter, dimensions, exploitation)
        else:
            label = 'proj. %s' % network
        return label


@qgsfunction(args='auto', group='GML')
def generateWireHousingLabelOld(feature, parent):
    """
    Function generates label for wire housing
    """
    # Existence
    try:
        existence = feature.attribute('istnienie')
    except:
        existence = ''
    # Housing type
    types = {'kanalizacjaKablowa': 'k',
             'kanalCieplowniczy': 'c',
             'ruraOchronna': 'r',
             'inna': 'i',
             'kanalTechnologiczny': 'kt',
             'rurociagTelekomunikacyjny': 'rt'}
    try:
        type = '' if types[feature.attribute("obudowa")] is None else types[feature.attribute("obudowa")]
    except:
        type = ''
    # Network
    networks = {'benzynowy': 'b',
                'cieplowniczy': 'c',
                'elektroenergetyczny': 'e',
                'gazowy': 'g',
                'inny': 'i',
                'kanalizacyjny': 'k',
                'naftowy': 'n',
                'niezidentyfikowany': 'x',
                'telekomunikacyjny': 't',
                'wodociagowy': 'w'}
    try:
        network = '' if networks[feature.attribute("rodzajSieci")] is None else networks[feature.attribute("rodzajSieci")]
    except:
        network = ''

    label = ''
    if existence == 'istniejacy':
        if type != 'r':
            label = '%s%s' % (type, network)
    if existence == 'projektowany':
        label = 'proj. %s' % network
    if existence == 'wBudowie':
        label = 'bud. %s' % network
    return label


@qgsfunction(args='auto', group='GML')
def getNetwork(feature, parent):
    """
    Function finds network designation based on its name
    """
    networks = {'benzynowy': 'b',
                'cieplowniczy': 'c',
                'elektroenergetyczny': 'e',
                'gazowy': 'g',
                'inny': 'i',
                'kanalizacyjny': 'k',
                'naftowy': 'n',
                'niezidentyfikowany': 'x',
                'telekomunikacyjny': 't',
                'wodociagowy': 'w'}
    try:
        network = '' if networks[feature.attribute("rodzajSieci")] is None else networks[feature.attribute("rodzajSieci")]
    except:
        network = ''
    return network


@qgsfunction(args='auto', group='GML')
def getRoadSurface(surface_name, feature, parent):
    """
    Function finds surface designation based on its name
    """
    surfaces = {'beton': 'bt',
                'bruk': 'br',
                'gruntNaturalny': 'gr',
                'klinkier': 'kl',
                'kostkaKamienna': 'kk',
                'kostkaPrefabrykowana': 'kp',
                'masaBitumiczna': 'mb',
                'plytyBetonowe': 'pb',
                'stabilizowanaZwiremLubZuzlem': 'gz',
                'tluczen': 'tl',
                'zwir': 'zw',
                'inny': 'i'}
    try:
        surface = '' if surfaces[surface_name] is None else surfaces[surface_name]
    except:
        surface = ''
    return surface


@qgsfunction(args='auto', group='GML')
def getHeightParentOld(layer_id, layer_name, feature, parent):
    """
    Function finds parent of height point
    """
    project = QgsProject().instance()
    for layer in project.mapLayers().values():
        if layer.id() != layer_id:
            for field in layer.fields():
                if field.comment() == layer_name:
                    for feature in layer.getFeatures("\"" + field.displayName() + "\" LIKE '%" + feature.attribute("gml_id") + "%'"):
                        if layer.name() in ('GES_UrzadzenieTechniczneZwiazaneZSiecia_punkt',
                                            'GES_UrzadzenieTechniczneZwiazaneZSiecia_linia',
                                            'GES_UrzadzenieTechniczneZwiazaneZSiecia_powierzchnia',
                                            'GES_ObudowaPrzewodu_linia',
                                            'GES_BudowlaPodziemna_powierzchnia'):
                            return feature.attribute("rodzajSieci")
                        else:
                            return layer.name()


@qgsfunction(args='auto', group='GML')
def getLayerColorOld(layer_name, feature, parent):
    """
    Function returns layer style color
    """
    colors = {'benzynowy': '10,9,9',
              'GES_PrzewodBenzynowy_linia': '10,9,9',
              'GES_PrzewodBenzynowy_powierzchnia': '10,9,9',
              'cieplowniczy': '210,0,210',
              'GES_PrzewodCieplowniczy_linia': '210,0,210',
              'GES_PrzewodCieplowniczy_powierzchnia': '210,0,210',
              'elektroenergetyczny': '255,0,0',
              'GES_PrzewodElektroenergetyczny_linia': '255,0,0',
              'GES_PrzewodElektroenergetyczny_powierzchnia': '255,0,0',
              'gazowy': '191,191,0',
              'GES_PrzewodGazowy_linia': '191,191,0',
              'GES_PrzewodGazowy_powierzchnia': '191,191,0',
              'inny': '10,9,9',
              'GES_PrzewodInny_linia': '10,9,9',
              'GES_PrzewodInny_powierzchnia': '10,9,9',
              'kanalizacyjny': '128,51,0',
              'GES_PrzewodKanalizacyjny_linia': '128,51,0',
              'GES_PrzewodKanalizacyjny_powierzchnia': '128,51,0',
              'naftowy': '10,9,9',
              'GES_PrzewodNaftowy_linia': '10,9,9',
              'GES_PrzewodNaftowy_powierzchnia': '10,9,9',
              'niezidentyfikowany': '10,9,9',
              'GES_PrzewodNiezidentyfikowany_linia': '10,9,9',
              'GES_PrzewodNiezidentyfikowany_powierzchnia': '10,9,9',
              'telekomunikacyjny': '255,145,0',
              'GES_PrzewodTelekomunikacyjny_linia': '255,145,0',
              'GES_PrzewodTelekomunikacyjny_powierzchnia': '255,145,0',
              'wodociagowy': '0,0,255',
              'GES_PrzewodWodociagowy_linia': '0,0,255',
              'GES_PrzewodWodociagowy_powierzchnia': '0,0,255'}
    return colors[layer_name]


@qgsfunction(args='auto', group='GML')
def getLayerColorNew(layer_name, feature, parent):
    """
    Function returns layer style color
    """
    colors = {'c': '210,0,210',
              'GES_UrzadzeniaSiecCieplownicza_punkt': '210,0,210',
              'GES_UrzadzeniaSiecCieplownicza_linia': '210,0,210',
              'GES_UrzadzeniaSiecCieplownicza_powierzchnia': '210,0,210',
              'GES_PrzewodCieplowniczy_linia': '210,0,210',
              'e': '255,0,0',
              'GES_UrzadzeniaSiecElektroenergetyczna_punkt': '255,0,0',
              'GES_UrzadzeniaSiecElektroenergetyczna_linia': '255,0,0',
              'GES_UrzadzeniaSiecElektroenergetyczna_powierzchnia': '255,0,0',
              'GES_PrzewodElektroenergetyczny_linia': '255,0,0',
              'g': '191,191,0',
              'GES_UrzadzeniaSiecGazowa_punkt': '191,191,0',
              'GES_UrzadzeniaSiecGazowa_linia': '191,191,0',
              'GES_UrzadzeniaSiecGazowa_powierzchnia': '191,191,0',
              'GES_PrzewodGazowy_linia': '191,191,0',
              'k': '128,51,0',
              'GES_UrzadzeniaSiecKanalizacyjna_punkt': '128,51,0',
              'GES_UrzadzeniaSiecKanalizacyjna_linia': '128,51,0',
              'GES_UrzadzeniaSiecKanalizacyjna_powierzchnia': '128,51,0',
              'GES_PrzewodKanalizacyjny_linia': '128,51,0',
              'x': '0,0,0',
              'GES_UrzadzenieNiezidentyfikowane_punkt': '0,0,0',
              'GES_UrzadzenieNiezidentyfikowane_linia': '0,0,0',
              'GES_UrzadzenieNiezidentyfikowane_powierzchnia': '0,0,0',
              'GES_PrzewodNiezidentyfikowany_linia': '0,0,0',
              's': '0,0,0',
              'GES_UrzadzeniaTechniczneSieciSpecjalnej_punkt': '0,0,0',
              'GES_UrzadzeniaTechniczneSieciSpecjalnej_linia': '0,0,0',
              'GES_UrzadzeniaTechniczneSieciSpecjalnej_powierzchnia': '0,0,0',
              'GES_PrzewodSpecjalny_linia': '0,0,0',
              't': '255,145,0',
              'GES_UrzadzeniaSiecTelekomunikacyjna_punkt': '255,145,0',
              'GES_UrzadzeniaSiecTelekomunikacyjna_linia': '255,145,0',
              'GES_UrzadzeniaSiecTelekomunikacyjna_powierzchnia': '255,145,0',
              'GES_PrzewodTelekomunikacyjny_linia': '255,145,0',
              'w': '0,0,255',
              'GES_UrzadzeniaSiecWodociagowa_punkt': '0,0,255',
              'GES_UrzadzeniaSiecWodociagowa_linia': '0,0,255',
              'GES_UrzadzeniaSiecWodociagowa_powierzchnia': '0,0,255',
              'GES_PrzewodWodociagowy_linia': '0,0,255'}
    return colors[layer_name]


@qgsfunction(args='auto', group='GML')
def getHeightParent(layer_id, layer_name, feature, parent):
    """
    Function finds parent of height point
    """
    project = QgsProject().instance()
    for layer in project.mapLayers().values():
        if layer.id() != layer_id:
            for field in layer.fields():
                if field.comment() == layer_name:
                    for feature in layer.getFeatures("\"" + field.displayName() + "\" LIKE '%" + feature.attribute("gml_id") + "%'"):
                        if layer.name() in ('GES_UrzadzeniaTowarzyszczaceLiniowe_linia',
                                            'GES_InneUrzadzeniaTowarzyszace_punkt',
                                            'GES_InneUrzadzeniaTowarzyszace_linia',
                                            'GES_InneUrzadzeniaTowarzyszace_powierzchnia'):
                            return feature.attribute("rodzajSieci")
                        else:
                            return layer.name()


@qgsfunction(args='auto', group='GML')
def generateLabelReference(map_scale, feature, parent):
    """
    Function generates reference for label
    """
    label_geom_wkt = feature.attribute("PrezentacjaGraficzna_geometria")
    reference_start_wkt = feature.attribute("PrezentacjaGraficzna_odnosnik")
    justification = feature.attribute("PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja")
    if label_geom_wkt != NULL and reference_start_wkt != NULL and justification != NULL:
        justification = int(justification) + 1
        if justification > 8:
            justification = 8
        label_geom = QgsGeometry.fromWkt(label_geom_wkt)
        reference_start = QgsGeometry.fromWkt(reference_start_wkt)
        label_point = label_geom.get()
        reference_start_point = reference_start.get()
        heights_lengths = []
        try:
            heights_lengths.append(len(str(feature.attribute("rzednaGory"))))
            heights_lengths.append(len(str(feature.attribute("rzedna"))))
            heights_lengths.append(len(str(feature.attribute("rzednaDolu"))))
            condition = feature.attribute("rzedna") != NULL or (
                    feature.attribute("rzednaGory") != NULL and feature.attribute("rzednaDolu") == NULL) or (
                                feature.attribute("rzednaDolu") != NULL and feature.attribute("rzednaGory") == NULL)
        except:
            try:
                heights_lengths.append(len(str(feature.attribute("rzednaGory"))))
                heights_lengths.append(len(str(feature.attribute("rzednaDolu"))))
                condition = (feature.attribute("rzednaGory") != NULL and feature.attribute("rzednaDolu") == NULL) or (
                                    feature.attribute("rzednaDolu") != NULL and feature.attribute("rzednaGory") == NULL)
            except:
                condition = feature.attribute("PrezentacjaGraficzna_name") != NULL
                heights_lengths.append(len(str(feature.attribute("PrezentacjaGraficzna_name"))))
        height_length = max(heights_lengths)
        if map_scale <= 501:
            dx = height_length * 0.34
        else:
            dx = height_length * 0.68
        dy = 0
        if condition:
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


@qgsfunction(args='auto', group='GML')
def generateLabelReferencePresentation(map_scale, feature, parent):
    """
    Function generates reference for label
    """
    label_geom_wkt = feature.attribute("geometria_wkt")
    reference_start_wkt = feature.attribute("odnosnik")
    justification = feature.attribute("etykieta_Etykieta_justyfikacja")
    if label_geom_wkt != NULL and reference_start_wkt != NULL and justification != NULL:
        justification = int(justification) + 1
        if justification > 8:
            justification = 8
        label_geom = QgsGeometry.fromWkt(label_geom_wkt)
        reference_start = QgsGeometry.fromWkt(reference_start_wkt)
        label_point = label_geom.get()
        reference_start_point = reference_start.get()
        heights_lengths = []
        heights = feature.attribute("name").split('|')
        height_top = NULL
        height_bottom = NULL
        if len(heights) > 0:
            height_top = heights[0]
            heights_lengths.append(len(str(height_top)))
        if len(heights) == 2:
            height_bottom = heights[1]
            heights_lengths.append(len(str(height_bottom)))
        height_length = max(heights_lengths)
        if map_scale <= 501:
            dx = height_length * 0.34
        else:
            dx = height_length * 0.68
        dy = 0
        if height_top != NULL or (height_top != NULL and height_bottom == NULL) or (height_bottom != NULL and height_top == NULL):
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


class GMLExpressionsManager:

    def __init__(self):
        self.functions = [generateMiddleLine,
                          approximateMiddleLine,
                          getLongEdges,
                          generateConveyorBeltFillGeometryOld,
                          generateRetainingWallGeometry,
                          generateRetainingWallGeometryOld,
                          generateSlopeFillGeometry,
                          generateSlopeFillGeometryOld,
                          generateStairsFillGeometry,
                          generateSpacesBetweenVertices,
                          generateElectricityLine,
                          generateMultiLines,
                          generateWireLabelOld,
                          generateWireLabelNew,
                          generateWireHousingLabelOld,
                          getNetwork,
                          getRoadSurface,
                          getLayerColorOld,
                          getLayerColorNew,
                          getHeightParentOld,
                          getHeightParent,
                          generateLabelReference
                          ]
