<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling" version="3.22.4-Białowieża" labelsEnabled="1">
  <renderer-v2 type="RuleRenderer" forceraster="0" enableorderby="0" symbollevels="0" referencescale="-1">
    <rules key="{cb5e162a-3ff2-4870-b3f3-0ea637c516c3}">
      <rule symbol="0" filter="1=1" scalemindenom="1" scalemaxdenom="1001" label="urządzenie techniczne sieci niezidentyfikowanej SUNU" key="{3fe958e9-57d8-4822-a896-bb4d3196cb6d}"/>
    </rules>
    <symbols>
      <symbol type="marker" alpha="1" name="0" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="0,0,0,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.4" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="RenderMetersInMapUnits" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop v="0" k="angle"/>
          <prop v="square" k="cap_style"/>
          <prop v="0,0,0,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="circle" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="no" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="0.4" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="RenderMetersInMapUnits" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="size">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="IF(@map_scale &lt;= 500, 0.4, 0.6)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{63962e92-24de-427c-8931-2d91e48dc1e8}">
      <rule filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="1001" key="{0d1198b5-26fa-4809-a8ec-47c27187224d}" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontFamily="Arial" namedStyle="Normal" fontWordSpacing="0" isExpression="1" fontLetterSpacing="0" textOrientation="horizontal" multilineHeight="1" allowHtml="0" fieldName="IF(&quot;status&quot; = 'p', 'proj. x', 'x')" textColor="0,0,0,255" textOpacity="1" fontSize="0.75" useSubstitutions="0" legendString="Aa" capitalization="0" fontItalic="0" fontKerning="1" fontUnderline="0" blendMode="0" fontSizeUnit="RenderMetersInMapUnits" fontStrikeout="0" fontWeight="50" previewBkgrdColor="255,255,255,255">
            <families/>
            <text-buffer bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits" bufferColor="255,255,255,255"/>
            <text-mask maskedSymbolLayers="" maskSize="1.5" maskEnabled="0" maskType="0" maskOpacity="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskSizeUnits="MM"/>
            <background shapeRotationType="0" shapeOffsetY="0" shapeRadiiX="0" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeSizeY="0" shapeRotation="0" shapeType="0" shapeDraw="0" shapeOffsetX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeBorderColor="128,128,128,255" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeFillColor="255,255,255,255" shapeRadiiUnit="MM" shapeSizeX="0" shapeSizeType="0" shapeRadiiY="0" shapeJoinStyle="64">
              <symbol type="marker" alpha="1" name="markerSymbol" clip_to_extent="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option type="QString" value="0" name="angle"/>
                    <Option type="QString" value="square" name="cap_style"/>
                    <Option type="QString" value="213,180,60,255" name="color"/>
                    <Option type="QString" value="1" name="horizontal_anchor_point"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="circle" name="name"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="35,35,35,255" name="outline_color"/>
                    <Option type="QString" value="solid" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="diameter" name="scale_method"/>
                    <Option type="QString" value="2" name="size"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
                    <Option type="QString" value="MM" name="size_unit"/>
                    <Option type="QString" value="1" name="vertical_anchor_point"/>
                  </Option>
                  <prop v="0" k="angle"/>
                  <prop v="square" k="cap_style"/>
                  <prop v="213,180,60,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" alpha="1" name="fillSymbol" clip_to_extent="1" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" value="" name="name"/>
                    <Option name="properties"/>
                    <Option type="QString" value="collection" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" locked="0" class="SimpleFill">
                  <Option type="Map">
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
                    <Option type="QString" value="255,255,255,255" name="color"/>
                    <Option type="QString" value="bevel" name="joinstyle"/>
                    <Option type="QString" value="0,0" name="offset"/>
                    <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
                    <Option type="QString" value="MM" name="offset_unit"/>
                    <Option type="QString" value="128,128,128,255" name="outline_color"/>
                    <Option type="QString" value="no" name="outline_style"/>
                    <Option type="QString" value="0" name="outline_width"/>
                    <Option type="QString" value="MM" name="outline_width_unit"/>
                    <Option type="QString" value="solid" name="style"/>
                  </Option>
                  <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
                  <prop v="255,255,255,255" k="color"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="128,128,128,255" k="outline_color"/>
                  <prop v="no" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="solid" k="style"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" value="" name="name"/>
                      <Option name="properties"/>
                      <Option type="QString" value="collection" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowUnder="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowScale="100" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowOffsetGlobal="1" shadowBlendMode="6" shadowDraw="0"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format useMaxLineLengthForAutoWrap="1" plussign="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" formatNumbers="0" autoWrapLength="0" addDirectionSymbol="0" decimals="3" placeDirectionSymbol="0" wrapChar="" multilineAlign="0" reverseDirectionSymbol="0"/>
          <placement lineAnchorType="0" distUnits="MM" lineAnchorPercent="0.5" offsetType="0" overrunDistance="0" geometryGeneratorEnabled="1" priority="5" repeatDistance="0" yOffset="0" rotationAngle="0" xOffset="0" preserveRotation="1" geometryGenerator=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[0]), translate($geometry, 0.5, 0.5))" offsetUnits="MM" placementFlags="10" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" fitInPolygonOnly="0" placement="1" dist="0" repeatDistanceUnits="MM" quadOffset="4" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" layerType="PointGeometry" distMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" rotationUnit="AngleRadians" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" maxCurvedCharAngleIn="25" centroidInside="0"/>
          <rendering fontLimitPixelSize="0" unplacedVisibility="0" obstacleFactor="1" scaleMin="0" obstacle="1" limitNumLabels="0" scaleVisibility="1" obstacleType="1" labelPerPart="0" drawLabels="1" zIndex="0" fontMinPixelSize="3" maxNumLabels="2000" mergeLines="0" scaleMax="0" minFeatureSize="0" displayAll="1" upsidedownLabels="0" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[0])" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="&quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; + 1" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option type="bool" value="false" name="active"/>
                  <Option type="int" value="1" name="type"/>
                  <Option type="QString" value="" name="val"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
              <Option type="int" value="0" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
              <Option type="bool" value="false" name="drawToAllParts"/>
              <Option type="QString" value="0" name="enabled"/>
              <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
              <Option type="QString" value="&lt;symbol type=&quot;line&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;square&quot; name=&quot;capstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;5;2&quot; name=&quot;customdash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;customdash_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;bevel&quot; name=&quot;joinstyle&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;60,60,60,255&quot; name=&quot;line_color&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;solid&quot; name=&quot;line_style&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0.3&quot; name=&quot;line_width&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;line_width_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;offset&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;offset_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;ring_filter&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_end&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;trim_distance_start&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;0&quot; name=&quot;use_custom_dash&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
              <Option type="double" value="0" name="minLength"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
              <Option type="QString" value="MM" name="minLengthUnit"/>
              <Option type="double" value="0" name="offsetFromAnchor"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
              <Option type="double" value="0" name="offsetFromLabel"/>
              <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
              <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
