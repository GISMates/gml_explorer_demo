<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" version="3.22.12-Białowieża" styleCategories="Symbology|Labeling|Actions">
  <renderer-v2 enableorderby="0" forceraster="0" symbollevels="0" type="RuleRenderer" referencescale="-1">
    <rules key="{06cc6ad0-d7f3-418f-a660-d9334cfc4623}">
      <rule label="działka ewidencyjna EGDE" key="{6291c2e1-8d88-41b3-ad5a-e391ce3bedb2}" symbol="0"/>
    </rules>
    <symbols>
      <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="0" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" pass="0" class="GeometryGenerator" locked="0">
          <Option type="Map">
            <Option value="Line" name="SymbolType" type="QString"/>
            <Option value="IF(@map_scale &lt;= 1000, generateSpacesBetweenVertices(0.25), generateSpacesBetweenVertices(0))" name="geometryModifier" type="QString"/>
            <Option value="MapUnit" name="units" type="QString"/>
          </Option>
          <prop k="SymbolType" v="Line"/>
          <prop k="geometryModifier" v="IF(@map_scale &lt;= 1000, generateSpacesBetweenVertices(0.25), generateSpacesBetweenVertices(0))"/>
          <prop k="units" v="MapUnit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="@0@0" type="line">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" pass="0" class="SimpleLine" locked="0">
              <Option type="Map">
                <Option value="0" name="align_dash_pattern" type="QString"/>
                <Option value="square" name="capstyle" type="QString"/>
                <Option value="5;2" name="customdash" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
                <Option value="MM" name="customdash_unit" type="QString"/>
                <Option value="0" name="dash_pattern_offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
                <Option value="0" name="draw_inside_polygon" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="0,0,0,255" name="line_color" type="QString"/>
                <Option value="solid" name="line_style" type="QString"/>
                <Option value="0.09" name="line_width" type="QString"/>
                <Option value="RenderMetersInMapUnits" name="line_width_unit" type="QString"/>
                <Option value="0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="0" name="ring_filter" type="QString"/>
                <Option value="0" name="trim_distance_end" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale" type="QString"/>
                <Option value="MM" name="trim_distance_end_unit" type="QString"/>
                <Option value="0" name="trim_distance_start" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale" type="QString"/>
                <Option value="MM" name="trim_distance_start_unit" type="QString"/>
                <Option value="0" name="tweak_dash_pattern_on_corners" type="QString"/>
                <Option value="0" name="use_custom_dash" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
              </Option>
              <prop k="align_dash_pattern" v="0"/>
              <prop k="capstyle" v="square"/>
              <prop k="customdash" v="5;2"/>
              <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="customdash_unit" v="MM"/>
              <prop k="dash_pattern_offset" v="0"/>
              <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="dash_pattern_offset_unit" v="MM"/>
              <prop k="draw_inside_polygon" v="0"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="line_color" v="0,0,0,255"/>
              <prop k="line_style" v="solid"/>
              <prop k="line_width" v="0.09"/>
              <prop k="line_width_unit" v="RenderMetersInMapUnits"/>
              <prop k="offset" v="0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="ring_filter" v="0"/>
              <prop k="trim_distance_end" v="0"/>
              <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="trim_distance_end_unit" v="MM"/>
              <prop k="trim_distance_start" v="0"/>
              <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="trim_distance_start_unit" v="MM"/>
              <prop k="tweak_dash_pattern_on_corners" v="0"/>
              <prop k="use_custom_dash" v="0"/>
              <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option value="true" name="active" type="bool"/>
                      <Option value="IF(@map_scale &lt;= 500, 0.09, IF(@map_scale &lt;= 1000, 0.18, IF(@map_scale &lt;= 2000, 0.36, 0.9)))" name="expression" type="QString"/>
                      <Option value="3" name="type" type="int"/>
                    </Option>
                  </Option>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{6c761157-f6ca-4665-8153-efc72e645539}">
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{61cd92ee-e177-4293-8d06-02caab0b789b}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[0]), centroid($geometry))" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[0])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[0] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{894746df-b112-4486-8b85-e3bd6c5a9185}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot;  , ', ')[1])" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[1])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="if(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; , ', ')[1] = '1', 'Follow', 'Left')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[1] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{f7e9af42-871d-4695-b66e-7663c9f46ffc}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot;  , ', ')[2])" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[2])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="if(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; , ', ')[2] = '1', 'Follow', 'Left')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[2] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{a311942d-de61-4fea-9b31-d5164e2c4cee}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot;  , ', ')[3])" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[3] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="if(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; , ', ')[3] = '1', 'Follow', 'Left')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[3] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{394cd9b1-2c28-483f-8e95-4e36c1b7357b}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot;  , ', ')[4])" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[4])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="if(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; , ', ')[4] = '1', 'Follow', 'Left')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[4] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{b631cc35-20ed-45b9-a641-0e4879e2d2ae}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot;  , ', ')[5])" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[5])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="if(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; , ', ')[5] = '1', 'Follow', 'Left')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[5] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{bc9758ad-3b77-4824-9e3b-8ad1a2f7f912}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot;  , ', ')[6])" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[6])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="if(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; , ', ')[6] = '1', 'Follow', 'Left')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[6] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{377c5281-c662-4efa-a00a-66723ca266e0}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot;  , ', ')[7])" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[7])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="if(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; , ', ')[7] = '1', 'Follow', 'Left')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[7] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{ec04ea84-0a55-420d-a3e7-6825328cf113}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot;  , ', ')[8])" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[8])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="if(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; , ', ')[8] = '1', 'Follow', 'Left')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[8] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemaxdenom="5001" scalemindenom="1" description="Prezentacja graficzna" key="{1a51378f-176d-4fad-baec-9f595dcba95c}" filter="IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True), True), True)">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontUnderline="0" blendMode="0" fontStrikeout="0" fontFamily="Arial" textOrientation="horizontal" namedStyle="Normal" fontKerning="1" textOpacity="1" legendString="Aa" fieldName="regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2')" multilineHeight="1" fontSize="1" fontItalic="0" isExpression="1" capitalization="0" fontLetterSpacing="0" fontWordSpacing="0" fontSizeUnit="RenderMetersInMapUnits" fontWeight="50" allowHtml="0" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0">
            <families/>
            <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferColor="255,255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferSize="0" bufferNoFill="1" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskSize="1.5" maskSizeUnits="MM" maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskedSymbolLayers=""/>
            <background shapeBorderWidth="0" shapeRadiiY="0" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeSizeX="0" shapeSVGFile="" shapeOpacity="1" shapeRotation="0" shapeSizeUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeDraw="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeRotationType="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0">
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="markerSymbol" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleMarker" locked="0">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="213,180,60,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="35,35,35,255" name="outline_color" type="QString"/>
                    <Option value="solid" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="diameter" name="scale_method" type="QString"/>
                    <Option value="2" name="size" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                    <Option value="MM" name="size_unit" type="QString"/>
                    <Option value="1" name="vertical_anchor_point" type="QString"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="213,180,60,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol force_rhr="0" clip_to_extent="1" alpha="1" name="fillSymbol" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" pass="0" class="SimpleFill" locked="0">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="128,128,128,255" name="outline_color" type="QString"/>
                    <Option value="no" name="outline_style" type="QString"/>
                    <Option value="0" name="outline_width" type="QString"/>
                    <Option value="MM" name="outline_width_unit" type="QString"/>
                    <Option value="solid" name="style" type="QString"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="128,128,128,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" name="name" type="QString"/>
                      <Option name="properties"/>
                      <Option value="collection" name="type" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowScale="100" shadowOpacity="0.69999999999999996" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowDraw="0" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowColor="0,0,0,255" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" decimals="3" reverseDirectionSymbol="0" addDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" formatNumbers="0" placeDirectionSymbol="0" autoWrapLength="0" wrapChar="" rightDirectionSymbol=">"/>
          <placement overrunDistanceUnit="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot;  , ', ')[9])" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" placementFlags="10" centroidWhole="0" lineAnchorClipping="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" quadOffset="4" lineAnchorPercent="0.5" layerType="PolygonGeometry" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" placement="1" fitInPolygonOnly="0" repeatDistanceUnits="MM" rotationUnit="AngleRadians" geometryGeneratorType="PointGeometry" polygonPlacementFlags="2" maxCurvedCharAngleIn="25" preserveRotation="1" overrunDistance="0" centroidInside="0" distUnits="MM" repeatDistance="0" maxCurvedCharAngleOut="-25" priority="5" lineAnchorType="0"/>
          <rendering obstacleFactor="1" scaleVisibility="1" drawLabels="1" minFeatureSize="0" scaleMin="0" mergeLines="0" zIndex="0" fontLimitPixelSize="0" obstacleType="1" fontMaxPixelSize="10000" scaleMax="0" limitNumLabels="0" upsidedownLabels="0" fontMinPixelSize="3" labelPerPart="0" unplacedVisibility="0" displayAll="1" obstacle="1" maxNumLabels="2000"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[9])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="if(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot; , ', ')[9] = '1', 'Follow', 'Left')" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[9] - 1" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 1, IF(@map_scale &lt;= 1000, 2, IF(@map_scale &lt;= 2000, 4, 10)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" name="anchorPoint" type="QString"/>
              <Option value="0" name="blendMode" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
              <Option value="false" name="drawToAllParts" type="bool"/>
              <Option value="0" name="enabled" type="QString"/>
              <Option value="point_on_exterior" name="labelAnchorPoint" type="QString"/>
              <Option value="&lt;symbol force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
              <Option value="0" name="minLength" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale" type="QString"/>
              <Option value="MM" name="minLengthUnit" type="QString"/>
              <Option value="0" name="offsetFromAnchor" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromAnchorUnit" type="QString"/>
              <Option value="0" name="offsetFromLabel" type="double"/>
              <Option value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale" type="QString"/>
              <Option value="MM" name="offsetFromLabelUnit" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction value="{7cd909f3-0128-4489-a857-570153539c19}" key="Canvas"/>
    <actionsetting isEnabledOnlyWhenEditable="0" action="from qgis.PyQt.QtCore import Qt&#xa;from qgis.PyQt.QtGui import QCursor&#xa;from qgis.PyQt.QtWidgets import QApplication, QDialog, QTreeWidget, QTreeWidgetItem, QHeaderView, QMenu, QMessageBox&#xa;&#xa;&#xa;iface = qgis.utils.iface&#xa;relations = {}&#xa;project = QgsProject.instance()&#xa;relations_layers = project.mapLayersByName('relacje')&#xa;if len(relations_layers) == 1:&#xa;    for feature in relations_layers[0].getFeatures():&#xa;        relation = relations.get(feature.attribute('Warstwa'), {})&#xa;        relation[feature.attribute('Atrybut')] = feature.attribute('Relacja')&#xa;        relations[feature.attribute('Warstwa')] = relation&#xa;&#xa;def configureDialog(layer_name, feature):&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Relacje obiektu klasy %s' % layer_name)&#xa;    dialog.setMinimumWidth(600)&#xa;    dialog.setMinimumHeight(400)&#xa;    dialog.resizeEvent = adjustSize&#xa;    try:&#xa;        dialog_id = feature.attribute('gml_id')&#xa;    except:&#xa;        dialog_id = ''&#xa;    dialog.setToolTip(dialog_id)&#xa;    tree = QTreeWidget(dialog)&#xa;    tree.move(5, 5)&#xa;    tree.setColumnCount(1)&#xa;    tree.setHeaderHidden(True)&#xa;    tree.setAutoScroll(True)&#xa;    tree.itemDoubleClicked.connect(zoomToReference)&#xa;    tree.setContextMenuPolicy(Qt.CustomContextMenu)&#xa;    tree.customContextMenuRequested.connect(showMenu)&#xa;    return dialog, tree&#xa;&#xa;def adjustSize(event):&#xa;    width = event.size().width()&#xa;    height = event.size().height()&#xa;    tree.resize(width - 10, height - 10)&#xa;&#xa;def zoomToReference():&#xa;    current_item = tree.currentItem()&#xa;    if current_item.parent() is not None:&#xa;        layer_name = current_item.parent().text(0)&#xa;        identifier = current_item.text(0)&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            iface.mapCanvas().zoomToSelected(ref_layer)&#xa;&#xa;def showMenu():&#xa;    current_item = tree.currentItem()&#xa;    menu = QMenu('Menu', dialog)&#xa;    if current_item.data(1, 1) == 'href' and current_item is not None:&#xa;        menu.addAction('Identyfikuj')&#xa;        menu.addAction('Wyświetl relacje')&#xa;        menu.addAction('Kopiuj identyfikator')&#xa;    action = menu.exec(QCursor.pos())&#xa;    if action is not None:&#xa;        executeMenuAction(dialog, action, current_item)&#xa;&#xa;def executeMenuAction(dialog, action, current_item):&#xa;    layer_name = current_item.parent().text(0)&#xa;    identifier = current_item.text(0)&#xa;    if action.text() == 'Identyfikuj':&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            for feature in ref_layer.selectedFeatures():&#xa;                iface.mapCanvas().zoomToSelected(ref_layer)&#xa;                iface.mapCanvas().waitWhileRendering()&#xa;                iface.openFeatureForm(ref_layer, feature)&#xa;    if action.text() == 'Wyświetl relacje':&#xa;        ref_layer, field_names = getRefLayerAndFields(current_item.parent().text(0))&#xa;        if ref_layer is not None:&#xa;            getReferences(dialog, current_item, ref_layer, field_names)&#xa;            tree.expandItem(current_item)&#xa;    if action.text() == 'Kopiuj identyfikator':&#xa;        cb = QApplication.clipboard()&#xa;        cb.clear(mode=cb.Clipboard)&#xa;        cb.setText(identifier, mode=cb.Clipboard)&#xa;&#xa;def getRefLayerAndFields(layer_name):&#xa;    ref_layer = None&#xa;    field_names = {}&#xa;    layers = project.mapLayersByName(layer_name)&#xa;    if len(layers) == 1:&#xa;        ref_layer = layers[0]&#xa;        field_names = relations.get(ref_layer.name(), {})&#xa;    return ref_layer, field_names&#xa;&#xa;def getReferences(dialog, item, ref_layer, field_names):&#xa;    parent_ids = [dialog.toolTip()]&#xa;    item_parent = item.parent()&#xa;    if item_parent.parent():&#xa;        while item_parent:&#xa;            for i in range(0, item_parent.childCount()):&#xa;                child = item_parent.child(i)&#xa;                if child.data(1, 1) != 'class' and child != item:&#xa;                    parent_ids.append(child.text(0))&#xa;            item_parent = item_parent.parent()&#xa;&#xa;    identifier = item.text(0)&#xa;    if item.childCount() == 0 and identifier not in parent_ids:&#xa;        for feature in ref_layer.getFeatures(&quot;gml_id = '&quot; + identifier + &quot;'&quot;):&#xa;            for field_name in field_names.keys():&#xa;                field_value = feature.attribute(field_name)&#xa;                if field_value:&#xa;                    class_item = QTreeWidgetItem(item)&#xa;                    class_item.setText(0, field_names[field_name])&#xa;                    class_item.setData(1, 1, 'class')&#xa;                    addReferences(class_item, field_value)&#xa;                    tree.expandItem(class_item)&#xa;        for other_layer in QgsProject().instance().mapLayers().values():&#xa;            if other_layer.id() != ref_layer.id():&#xa;                for attr, relation in relations.get(other_layer.name(), {}).items():&#xa;                    if relation == ref_layer.name():&#xa;                        for other_feature in other_layer.getFeatures(&quot;\&quot;&quot; + attr + &quot;\&quot; LIKE '%&quot; + identifier + &quot;%'&quot;):&#xa;                            class_item = QTreeWidgetItem(item)&#xa;                            class_item.setText(0, other_layer.name())&#xa;                            class_item.setData(1, 1, 'class')&#xa;                            addReferences(class_item, other_feature.attribute(&quot;gml_id&quot;))&#xa;                            tree.expandItem(class_item)&#xa;    else:&#xa;        showMessage('Relacje obiektu', 'Relacje wskazanego obiektu zostały już wyświetlone')&#xa;&#xa;def addReferences(class_item, field_value):&#xa;    for href in field_value.split(', '):&#xa;        ref_item = QTreeWidgetItem(class_item)&#xa;        ref_item.setText(0, href)&#xa;        ref_item.setData(1, 1, 'href')&#xa;&#xa;def showMessage(title, text):&#xa;    mbox = QMessageBox(dialog)&#xa;    mbox.setWindowTitle(title)&#xa;    mbox.setText(text)&#xa;    mbox.exec()&#xa;&#xa;layers = project.mapLayersByName('[% @layer_name %]')&#xa;if len(relations) > 0:&#xa;    for layer in layers:&#xa;        if layer.id() == '[% @layer_id %]':&#xa;            feature = layer.getFeature([% $id %])&#xa;            dialog, tree = configureDialog('[% @layer_name %]', feature)&#xa;            has_hrefs = False&#xa;            for attr, relation in relations.get(layer.name(), {}).items():&#xa;                field_value = feature.attribute(attr)&#xa;                if field_value is not None and field_value:&#xa;                    has_hrefs = True&#xa;                    class_item = QTreeWidgetItem()&#xa;                    class_item.setText(0, relation)&#xa;                    class_item.setData(1, 1, 'class')&#xa;                    tree.addTopLevelItem(class_item)&#xa;                    addReferences(class_item, field_value)&#xa;            for other_layer in project.mapLayers().values():&#xa;                if other_layer.id() != layer.id():&#xa;                    for attr, relation in relations.get(other_layer.name(), {}).items():&#xa;                        if relation == layer.name():&#xa;                            class_item = QTreeWidgetItem()&#xa;                            class_item.setText(0, other_layer.name())&#xa;                            class_item.setData(1, 1, 'class')&#xa;                            for other_feature in other_layer.getFeatures(&quot;\&quot;&quot; + attr + &quot;\&quot; LIKE '%&quot; + feature.attribute(&quot;gml_id&quot;) + &quot;%'&quot;):&#xa;                                has_hrefs = True&#xa;                                tree.addTopLevelItem(class_item)&#xa;                                addReferences(class_item, other_feature.attribute(&quot;gml_id&quot;))&#xa;            if has_hrefs:&#xa;                dialog.show()&#xa;            else:&#xa;                showMessage('Relacje obiektu', 'Wskazany obiekt nie ma relacji do innych obiektów')&#xa;else:&#xa;    showMessage('Relacje obiektu', 'Warstwa relacji nie została wczytana do projektu')" id="{787f5dbf-2942-4a9d-a7fa-d73f4f86dea6}" shortTitle="Wyświetl relacje" notificationMessage="" name="Wyświetl relacje" type="1" capture="0" icon="">
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting isEnabledOnlyWhenEditable="0" action="from qgis.PyQt.QtCore import Qt&#xa;from qgis.PyQt.QtGui import QCursor&#xa;from qgis.PyQt.QtWidgets import QApplication, QDialog, QTreeWidget, QTreeWidgetItem, QHeaderView, QMenu, QMessageBox&#xa;&#xa;&#xa;iface = qgis.utils.iface&#xa;&#xa;def configureDialog(layer_name):&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Obiekty archiwalne obiektu klasy %s' % layer_name)&#xa;    dialog.setMinimumWidth(600)&#xa;    dialog.setMinimumHeight(400)&#xa;    dialog.resizeEvent = adjustSize&#xa;    tree = QTreeWidget(dialog)&#xa;    tree.move(5, 5)&#xa;    tree.setColumnCount(1)&#xa;    tree.setHeaderHidden(True)&#xa;    tree.setAutoScroll(True)&#xa;    tree.header().setSectionResizeMode(0, QHeaderView.ResizeToContents)&#xa;    tree.itemDoubleClicked.connect(zoomToReference)&#xa;    tree.setContextMenuPolicy(Qt.CustomContextMenu)&#xa;    tree.customContextMenuRequested.connect(showMenu)&#xa;    return dialog, tree&#xa;&#xa;def adjustSize(event):&#xa;    width = event.size().width()&#xa;    height = event.size().height()&#xa;    tree.resize(width - 10, height - 10)&#xa;&#xa;def zoomToReference():&#xa;    current_item = tree.currentItem()&#xa;    if current_item.parent() is not None:&#xa;        layer_name = current_item.parent().text(0)&#xa;        identifier = current_item.text(0)&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            iface.mapCanvas().zoomToSelected(ref_layer)&#xa;&#xa;def showMenu():&#xa;    current_item = tree.currentItem()&#xa;    menu = QMenu('Menu', dialog)&#xa;    if current_item.data(1, 1) == 'href' and current_item is not None:&#xa;        menu.addAction('Identyfikuj')&#xa;        menu.addAction('Kopiuj identyfikator')&#xa;    action = menu.exec(QCursor.pos())&#xa;    if action is not None:&#xa;        executeMenuAction(action, current_item)&#xa;&#xa;def executeMenuAction(action, current_item):&#xa;    layer_name = current_item.parent().text(0)&#xa;    identifier = current_item.text(0)&#xa;    if action.text() == 'Identyfikuj':&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            for feature in ref_layer.selectedFeatures():&#xa;                iface.mapCanvas().zoomToSelected(ref_layer)&#xa;                iface.mapCanvas().waitWhileRendering()&#xa;                iface.openFeatureForm(ref_layer, feature)&#xa;    if action.text() == 'Kopiuj identyfikator':&#xa;        cb = QApplication.clipboard()&#xa;        cb.clear(mode=cb.Clipboard)&#xa;        cb.setText(identifier, mode=cb.Clipboard)&#xa;&#xa;def getRefLayerAndFields(layer_name):&#xa;    ref_layer = None&#xa;    field_names = {}&#xa;    layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;    if len(layers) == 1:&#xa;        ref_layer = layers[0]&#xa;        for field in ref_layer.fields():&#xa;            if field.comment() != '':&#xa;                field_names[field.name()] = field.comment()&#xa;    return ref_layer, field_names&#xa;&#xa;def getReferences(item, ref_layer, field_names):&#xa;    identifier = item.text(0)&#xa;    for feature in ref_layer.getFeatures(&quot;gml_id = '&quot; + identifier + &quot;'&quot;):&#xa;        for field_name in field_names.keys():&#xa;            field_value = feature.attribute(field_name)&#xa;            if field_value is not None and field_value:&#xa;                class_item = QTreeWidgetItem(item)&#xa;                class_item.setText(0, field_names[field_name])&#xa;                class_item.setData(1, 1, 'class')&#xa;                addReferences(class_item, field_value)&#xa;                tree.expandItem(class_item)&#xa;    for other_layer in QgsProject().instance().mapLayers().values():&#xa;        if other_layer.id() != ref_layer.id():&#xa;            for field in other_layer.fields():&#xa;                if field.comment() == ref_layer.name():&#xa;                    for other_feature in other_layer.getFeatures(&quot;\&quot;&quot; + field.displayName() + &quot;\&quot; LIKE '%&quot; + feature.attribute(&quot;gml_id&quot;) + &quot;%'&quot;):&#xa;                        class_item = QTreeWidgetItem(item)&#xa;                        class_item.setText(0, other_layer.name())&#xa;                        class_item.setData(1, 1, 'class')&#xa;                        addReferences(class_item, other_feature.attribute(&quot;gml_id&quot;))&#xa;                        tree.expandItem(class_item)&#xa;&#xa;def addReferences(class_item, field_value):&#xa;    for href in field_value.split(', '):&#xa;        ref_item = QTreeWidgetItem(class_item)&#xa;        ref_item.setText(0, href)&#xa;        ref_item.setData(1, 1, 'href')&#xa;&#xa;def showMessage(title, text):&#xa;    mbox = QMessageBox(dialog)&#xa;    mbox.setWindowTitle(title)&#xa;    mbox.setText(text)&#xa;    mbox.exec()&#xa;&#xa;project = QgsProject.instance()&#xa;layers = project.mapLayersByName('[% @layer_name %]')&#xa;for layer in layers:&#xa;    if layer.id() == '[% @layer_id %]':&#xa;        dialog, tree = configureDialog('[% @layer_name %]')&#xa;        feature = layer.getFeature([% $id %])&#xa;        has_archival = False&#xa;        archival_layer_name = '%s_ARCH' % layer.name()&#xa;        if len(project.mapLayersByName(archival_layer_name)) == 1:&#xa;            archival_layer = project.mapLayersByName('%s_ARCH' % layer.name())[0]&#xa;            for field in layer.fields():&#xa;                if 'lokalnyId' in field.name() != '':&#xa;                    field_value = feature.attribute(field.name())&#xa;                    for archival_feature in archival_layer.getFeatures('&quot;%s&quot; = \'%s\'' %(field.name(), field_value)):&#xa;                        archival_id = archival_feature.attribute(&quot;gml_id&quot;)&#xa;                        if archival_id is not None and archival_id:&#xa;                            has_archival = True&#xa;                            class_item = QTreeWidgetItem()&#xa;                            class_item.setText(0, archival_layer_name)&#xa;                            class_item.setData(1, 1, 'class')&#xa;                            tree.addTopLevelItem(class_item)&#xa;                            addReferences(class_item, archival_id)&#xa;            if has_archival:&#xa;                dialog.show()&#xa;            else:&#xa;                showMessage('Obiekty archiwalne', 'Wskazany obiekt nie ma obiektów archiwalnych')&#xa;        else:&#xa;            showMessage('Obiekty archiwalne', 'Do projektu nie została wczytana warstwa archiwalna %s' % archival_layer_name)" id="{17f3839d-e028-4246-bd5e-2c96582112f8}" shortTitle="Wyświetl obiekty archiwalne" notificationMessage="" name="Wyświetl obiekty archiwalne" type="1" capture="0" icon="">
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting isEnabledOnlyWhenEditable="0" action="from qgis.PyQt.QtCore import Qt, QSize&#xa;from qgis.PyQt.QtWidgets import QDialog, QTableWidget, QHeaderView, QTableWidgetItem, QPushButton, QFileDialog,\&#xa;    QMessageBox, QVBoxLayout, QHBoxLayout, QSpacerItem, QSizePolicy&#xa;import re&#xa;import pandas as pd&#xa;&#xa;columns = ['Obręb', 'Nr działki', 'Id działki', 'Pow. ewidencyjna', 'Klasoużytek', 'Pow. klasoużytku', 'Właściciel', 'Udział', 'Geometria']&#xa;&#xa;def configureDialog():&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Zestawienie EGiB')&#xa;    dialog.setMinimumSize(QSize(1200, 405))&#xa;    layout = QVBoxLayout()&#xa;    button_layout = QHBoxLayout()&#xa;    csv_button = createButton(dialog, 'Eksport do csv', toCsv)&#xa;    excel_button = createButton(dialog, 'Eksport do excela', toExcel)&#xa;    button_layout.addWidget(csv_button)&#xa;    button_layout.addWidget(excel_button)&#xa;    button_layout.addItem(QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum))&#xa;    layout.addLayout(button_layout)&#xa;    table = QTableWidget(0, len(columns))&#xa;    horizontal_header = table.horizontalHeader()&#xa;    horizontal_header.setSectionResizeMode(QHeaderView.Stretch)&#xa;    horizontal_header.hideSection(len(columns) - 1)&#xa;    table.verticalHeader().setSectionResizeMode(QHeaderView.ResizeToContents)&#xa;    table.setHorizontalHeaderLabels(columns)&#xa;    table.itemSelectionChanged.connect(zoomToSelectedField)&#xa;    layout.addWidget(table)&#xa;    dialog.setLayout(layout)&#xa;    return dialog, table&#xa;&#xa;&#xa;def createButton(dialog, text, func):&#xa;    button = QPushButton(dialog)&#xa;    button.setText(text)&#xa;    button.clicked.connect(func)&#xa;    return button&#xa;&#xa;&#xa;def zoomToSelectedField():&#xa;    for field_layer in project.mapLayersByName('[% @layer_name %]'):&#xa;        if field_layer.id() == '[% @layer_id %]':&#xa;            field_layer.removeSelection()&#xa;            field_layer.select(int(table.item(table.currentRow(),0).whatsThis()))&#xa;            iface.mapCanvas().zoomToSelected(field_layer)&#xa;&#xa;def showMessage(title, text):&#xa;    mbox = QMessageBox(dialog)&#xa;    mbox.setWindowTitle(title)&#xa;    mbox.setText(text)&#xa;    mbox.exec()&#xa;&#xa;def toCsv():&#xa;    path, ok = QFileDialog.getSaveFileName(dialog, 'Wybierz plik', '', 'Comma Separated Values (*.csv)')&#xa;    if ok:&#xa;        df = prepareExportData()&#xa;        df.to_csv(path, sep=';')&#xa;        showMessage('Zestawienie EGiB - działka',&#xa;                    '&lt;p>Zestawienie zostało zapisane w lokalizacji:&lt;/p>'&#xa;                    '&lt;p>&lt;i>%s&lt;/i>&lt;/p>' % path)&#xa;&#xa;def toExcel():&#xa;    path, ok = QFileDialog.getSaveFileName(dialog, 'Wybierz plik', '', 'Excel (*.xlsx)')&#xa;    if ok:&#xa;        df = prepareExportData()&#xa;        with pd.ExcelWriter(path) as writer:&#xa;            df.to_excel(writer, sheet_name='Zestawienie EGiB - działka', index=False)&#xa;        showMessage('Zestawienie EGiB - działka',&#xa;                    '&lt;p>Zestawienie zostało zapisane w lokalizacji:&lt;/p>'&#xa;                    '&lt;p>&lt;i>%s&lt;/i>&lt;/p>' % path)&#xa;&#xa;def prepareExportData():&#xa;    data = []&#xa;    for row in range(table.rowCount()):&#xa;        rowData = []&#xa;        for column in range(table.columnCount()):&#xa;            widgetItem = table.item(row, column)&#xa;            if widgetItem and widgetItem.text:&#xa;                rowData.append(widgetItem.text())&#xa;            else:&#xa;                rowData.append('NULL')&#xa;        data.append(rowData)&#xa;    df = pd.DataFrame(data)&#xa;    df.columns = columns&#xa;    return df&#xa;&#xa;def getLayer(lname):&#xa;    try:&#xa;        return project.mapLayersByName(lname)[0]&#xa;    except:&#xa;        global missing_layers_message&#xa;        missing_layers_message += '&lt;p>Do projektu nie została wczytana warstwa %s&lt;/p>' % lname&#xa;&#xa;def getRelation(lname, relname, one_to_many=False):&#xa;    if one_to_many:&#xa;        relation = [None, None]&#xa;    else:&#xa;        relation = ''&#xa;    for relation_feature in relations_layer.getFeatures(&quot;Warstwa = '%s' AND Relacja = '%s'&quot; % (lname, relname)):&#xa;        attribute = relation_feature.attribute(&quot;Atrybut&quot;)&#xa;        if one_to_many:&#xa;            if relation[0]:&#xa;                relation[1] = attribute&#xa;            else:&#xa;                relation[0] = attribute&#xa;        else:&#xa;            relation = attribute&#xa;    return relation&#xa;&#xa;def getFeatureValue(f, a):&#xa;    try:&#xa;        v = f.attribute(a)&#xa;        if v == NULL or v.strip() == '':&#xa;            v = ' '&#xa;    except:&#xa;        v = ' '&#xa;    return v&#xa;&#xa;def getListValue(l, i):&#xa;    try:&#xa;        return l[i]&#xa;    except:&#xa;        return ' '&#xa;&#xa;iface = qgis.utils.iface&#xa;missing_layers_message = ''&#xa;project = QgsProject().instance()&#xa;&#xa;jrg_layer = getLayer('EGB_JednostkaRejestrowaGruntow')&#xa;ownership_layer = getLayer('EGB_UdzialWeWlasnosci')&#xa;district_layer = getLayer('EGB_ObrebEwidencyjny_powierzchnia')&#xa;owner_single_layer = getLayer('EGB_OsobaFizyczna')&#xa;owner_marriage_layer = getLayer('EGB_Malzenstwo')&#xa;owner_institution_layer = getLayer('EGB_Instytucja')&#xa;owner_group_layer = getLayer('EGB_PodmiotGrupowy')&#xa;relations_layer = getLayer('relacje')&#xa;&#xa;dialog, table = configureDialog()&#xa;if relations_layer:&#xa;    if missing_layers_message != '':&#xa;        showMessage('Zestawienie EGiB - działka', '%s&lt;p>Raport może nie zawierać pełej informacji&lt;/p>' % missing_layers_message)&#xa;    field_jrg_relation = getRelation('EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_JednostkaRejestrowaGruntow')&#xa;    field_district_relation = getRelation('EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_ObrebEwidencyjny_powierzchnia')&#xa;    ownership_jrg_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_JednostkaRejestrowaGruntow')&#xa;    ownership_single_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_OsobaFizyczna')&#xa;    ownership_marriage_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_Malzenstwo')&#xa;    ownership_intitution_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_Instytucja')&#xa;    ownership_group_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_PodmiotGrupowy')&#xa;    group_owner_single_owner_relation = getRelation('EGB_PodmiotGrupowy', 'EGB_OsobaFizyczna')&#xa;    marriage_owner_single_owner_relation = getRelation('EGB_Malzenstwo', 'EGB_OsobaFizyczna', True)&#xa;    landuses = []&#xa;    ownerships = []&#xa;    field_number = ' '&#xa;    district = ' '&#xa;    field_id = ' '&#xa;    field_area = ' '&#xa;    for field_layer in project.mapLayersByName('[% @layer_name %]'):&#xa;        if field_layer.id() == '[% @layer_id %]':&#xa;            field_feature = field_layer.getFeature([% $id %])&#xa;            field_geom = field_feature.geometry()&#xa;            field_geom_wkt = field_geom.asWkt() if not (field_geom.isNull() or field_geom.isEmpty()) else ''&#xa;            field_id = getFeatureValue(field_feature, 'idDzialki')&#xa;            field_number = re.sub(&quot;(.*)\\.(.*)$&quot;, r&quot;\2&quot;, field_id)&#xa;            field_area = getFeatureValue(field_feature, 'poleEwidencyjne')&#xa;            district_ids = &quot;'%s'&quot; % getFeatureValue(field_feature, field_district_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;            district_iter = district_layer.getFeatures(&quot;gml_id IN(%s)&quot; % district_ids) if district_layer else []&#xa;            for district_feature in district_iter:&#xa;                district = getFeatureValue(district_feature, 'nazwaWlasna')&#xa;            jrg_ids = getFeatureValue(field_feature, field_jrg_relation)&#xa;            for jrg_id in jrg_ids.split(', '):&#xa;                ownership_iter = ownership_layer.getFeatures(ownership_jrg_relation + &quot; LIKE '%&quot; + jrg_id + &quot;%'&quot;) if ownership_layer else []&#xa;                for ownership_feature in ownership_iter:&#xa;                    ownership_share = getFeatureValue(ownership_feature, 'licznikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    denominator = getFeatureValue(ownership_feature, 'mianownikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    if denominator != ' ':&#xa;                        ownership_share += '/%s' % denominator&#xa;                    ownership_single = getFeatureValue(ownership_feature, ownership_single_owner_relation)&#xa;                    ownership_marriage = getFeatureValue(ownership_feature, ownership_marriage_owner_relation)&#xa;                    ownership_institution = getFeatureValue(ownership_feature, ownership_intitution_owner_relation)&#xa;                    ownership_group = getFeatureValue(ownership_feature, ownership_group_owner_relation)&#xa;                    if ownership_single != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_single.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_single_layer else []&#xa;                        for owner_feature in owner_single_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'pierwszeImie')&#xa;                            surname_first = getFeatureValue(owner_feature, 'pierwszyCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                            surname_second = getFeatureValue(owner_feature, 'drugiCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                            ownerships.append((owner, ownership_share))&#xa;                    elif ownership_marriage != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_marriage.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_marriage_iter = owner_marriage_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_marriage_layer else []&#xa;                        for owner_feature in owner_marriage_iter:&#xa;                            marriage_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, marriage_owner_single_owner_relation[0])&#xa;                            marriage_partner = getFeatureValue(owner_feature, marriage_owner_single_owner_relation[1])&#xa;                            marriage_ids = &quot;%s, '%s'&quot; % (marriage_ids, marriage_partner) if marriage_ids != ' ' else &quot;'%s'&quot; % marriage_partner&#xa;                            owners = ''&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id in (%s)&quot; % marriage_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner,surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                owners += owner if owners == '' else &quot;\n%s&quot; % owner&#xa;                            ownerships.append((owners, ownership_share))&#xa;                    elif ownership_institution != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_institution.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_institution_iter = owner_institution_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_institution_layer else []&#xa;                        for owner_feature in owner_institution_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'nazwaPelna')&#xa;                            ownerships.append((owner, ownership_share))&#xa;                    elif ownership_group != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_group.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_group_iter = owner_group_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_group_layer else []&#xa;                        for owner_feature in owner_group_iter:&#xa;                            group_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, group_owner_single_owner_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id in (%s)&quot; % group_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                ownerships.append((owner, ownership_share))&#xa;            ofu = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_OFU')&#xa;            ozu = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_OZU')&#xa;            ozk = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_OZK')&#xa;            landuse_area = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_powierzchnia')&#xa;            ofu_list = str(ofu).split(', ')&#xa;            ozu_list = str(ozu).split(', ')&#xa;            ozk_list = str(ozk).split(', ')&#xa;            landuse_area_list = str(landuse_area).split(', ')&#xa;            for i in range(0, max([len(ofu_list), len(ozu_list), len(ozk_list), len(landuse_area_list)])):&#xa;                landuses.append(('OFU: %s, OZU: %s, OZK: %s' % (getListValue(ofu_list, i), getListValue(ozu_list, i), getListValue(ozk_list, i)), getListValue(landuse_area_list, i)))&#xa;    if len(landuses) > 0:&#xa;        for landuse in landuses:&#xa;            if len(ownerships) > 0:&#xa;                for ownership in ownerships:&#xa;                    rownum = table.rowCount()&#xa;                    table.insertRow(rownum)&#xa;                    district_item = QTableWidgetItem(district)&#xa;                    district_item.setWhatsThis(str([% $id %]))&#xa;                    table.setItem(rownum, 0, district_item)&#xa;                    table.setItem(rownum, 1, QTableWidgetItem(field_number))&#xa;                    table.setItem(rownum, 2, QTableWidgetItem(field_id))&#xa;                    table.setItem(rownum, 3, QTableWidgetItem(field_area))&#xa;                    table.setItem(rownum, 4, QTableWidgetItem(landuse[0]))&#xa;                    table.setItem(rownum, 5, QTableWidgetItem(landuse[1]))&#xa;                    table.setItem(rownum, 6, QTableWidgetItem(ownership[0]))&#xa;                    table.setItem(rownum, 7, QTableWidgetItem(ownership[1]))&#xa;                    table.setItem(rownum, 8, QTableWidgetItem(field_geom_wkt))&#xa;            else:&#xa;                rownum = table.rowCount()&#xa;                table.insertRow(rownum)&#xa;                district_item = QTableWidgetItem(district)&#xa;                district_item.setWhatsThis(str([% $id %]))&#xa;                table.setItem(rownum, 0, district_item)&#xa;                table.setItem(rownum, 1, QTableWidgetItem(field_number))&#xa;                table.setItem(rownum, 2, QTableWidgetItem(field_id))&#xa;                table.setItem(rownum, 3, QTableWidgetItem(field_area))&#xa;                table.setItem(rownum, 4, QTableWidgetItem(landuse[0]))&#xa;                table.setItem(rownum, 5, QTableWidgetItem(landuse[1]))&#xa;                table.setItem(rownum, 6, QTableWidgetItem(''))&#xa;                table.setItem(rownum, 7, QTableWidgetItem(''))&#xa;                table.setItem(rownum, 8, QTableWidgetItem(field_geom_wkt))&#xa;        dialog.show()&#xa;    else:&#xa;        showMessage('Zestawienie EGiB - działka', 'Brak obiektów do wyświetlenia')&#xa;else:&#xa;    showMessage('Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa relacji, utworzenie raportu jest niemożliwe')" id="{6f9f98b9-fe84-479c-afe9-de835b7c0d73}" shortTitle="Zestawienie EGiB - działka " notificationMessage="" name="Zestawienie EGiB - działka " type="1" capture="0" icon="">
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting isEnabledOnlyWhenEditable="0" action="import datetime&#xa;import re&#xa;import os&#xa;import csv&#xa;&#xa;from qgis.PyQt.QtCore import Qt&#xa;from qgis.PyQt.QtWidgets import QFileDialog, QMessageBox&#xa;&#xa;registration_group_map = {&quot;1&quot;: &quot;Skarb Państwa, jeżeli nie występuje w zbiegu z użytkownikami wieczystymi&quot;,&#xa;                          &quot;2&quot;: &quot;Skarb Państwa, jeżeli występuje w zbiegu z użytkownikami wieczystymi&quot;,&#xa;                          &quot;3&quot;: &quot;jednoosobowe spółki Skarbu Państwa, przedsiębiorstwa państwowe i inne państwowe osoby prawne&quot;,&#xa;                          &quot;4&quot;: &quot;gminy, związki międzygminne lub metropolitalne, jeżeli nie występują w zbiegu z użytkownikami wieczystymi&quot;,&#xa;                          &quot;5&quot;: &quot;gminy, związki międzygminne lub metropolitalne, jeżeli występują w zbiegu z użytkownikami wieczystymi&quot;,&#xa;                          &quot;6&quot;: &quot;jednoosobowe spółki jednostek samorządu terytorialnego i inne osoby prawne, których organami założycielskimi&quot;,&#xa;                          &quot;7&quot;: &quot;osoby fizyczne&quot;,&#xa;                          &quot;8&quot;: &quot;spółdzielnie&quot;,&#xa;                          &quot;9&quot;: &quot;kościoły i związki wyznaniowe&quot;,&#xa;                          &quot;10&quot;: &quot;wspólnoty gruntowe&quot;,&#xa;                          &quot;11&quot;: &quot;powiaty i związki powiatów, jeżeli nie występują w zbiegu z użytkownikami wieczystymi&quot;,&#xa;                          &quot;12&quot;: &quot;powiaty i związki powiatów, jeżeli występują w zbiegu z użytkownikami wieczystymi&quot;,&#xa;                          &quot;13&quot;: &quot;województwa, jeżeli nie występują w zbiegu z użytkownikami wieczystymi&quot;,&#xa;                          &quot;14&quot;: &quot;województwa, jeżeli występują w zbiegu z użytkownikami wieczystymi&quot;,&#xa;                          &quot;15&quot;: &quot;spółki prawa handlowego&quot;,&#xa;                          &quot;16&quot;: &quot;inne podmioty ewidencyjne&quot;}&#xa;&#xa;possession_map = {'1': 'użytkowanie wieczyste',&#xa;                   '2': 'trwały zarząd',&#xa;                   '3': 'zarząd',&#xa;                   '4': 'użytkowanie',&#xa;                   '5': 'inny rodzaj władania',&#xa;                   '6': 'wykonywanie prawa własności Skarbu Państwa i innych praw rzeczowych',&#xa;                   '7': 'gospodarowanie zasobem nieruchomości SP albo gminnym, powiatowym lub wojewódzkim zasobem nieruchomości',&#xa;                   '8': 'gospodarowanie gruntami SP pokrytymi wodami powierzchniowymi',&#xa;                   '9': 'wykonywanie zadań zarządcy dróg publicznych'}&#xa;&#xa;ownership_map = {'1': 'wlasnosc',&#xa;                 '2': 'wladanieSamoistne'}&#xa;&#xa;document_type_map = {&quot;1&quot;: &quot;Umowa, akt notarialny&quot;,&#xa;                     &quot;2&quot;: &quot;Akt własności ziemi&quot;,&#xa;                     &quot;3&quot;: &quot;Decyzja administracyjna inna niż akt własności ziemi&quot;,&#xa;                     &quot;4&quot;: &quot;Orzeczenie sądu, postanowienie, wyrok&quot;,&#xa;                     &quot;5&quot;: &quot;Wyciąg lub odpis z księgi wieczystej&quot;,&#xa;                     &quot;6&quot;: &quot;Wyciąg lub odpis z księgi hipotecznej&quot;,&#xa;                     &quot;7&quot;: &quot;Odpis z akt KW lub zbioru dokumentów&quot;,&#xa;                     &quot;8&quot;: &quot;Zawiadomienie z wydziału KW sądu rejonowego&quot;,&#xa;                     &quot;9&quot;: &quot;Wniosek (zawiadomienie) w sprawie zmiany&quot;,&#xa;                     &quot;10&quot;: &quot;Wyciąg (wypis) z dokumentacji budowy budynku&quot;,&#xa;                     &quot;11&quot;: &quot;Protokół&quot;,&#xa;                     &quot;12&quot;: &quot;Ustawa&quot;,&#xa;                     &quot;13&quot;: &quot;Rozporządzenie&quot;,&#xa;                     &quot;14&quot;: &quot;Uchwała&quot;,&#xa;                     &quot;15&quot;: &quot;Zarządzenie&quot;,&#xa;                     &quot;16&quot;: &quot;Odpis lub wyciąg z innego rejestru publicznego&quot;,&#xa;                     &quot;17&quot;: &quot;Pełnomocnictwo (upoważnienie)&quot;,&#xa;                     &quot;19&quot;: &quot;Inny dokument&quot;,&#xa;                     &quot;20&quot;: &quot;Dokumentacja architektoniczno-budowlana&quot;,&#xa;                     &quot;21&quot;: &quot;Dokumentacja planistyczna&quot;,&#xa;                     &quot;22&quot;: &quot;Akt poświadczenia dziedziczenia&quot;,&#xa;                     &quot;23&quot;: &quot;Zawiadomienie z PESEL&quot;,&#xa;                     &quot;24&quot;: &quot;Zgłoszenie zmiany sposobu użytkowania&quot;}&#xa;&#xa;building_kst_map = {&quot;m&quot;: &quot;budynki mieszkalne&quot;,&#xa;                    &quot;g&quot;: &quot;budynki produkcyjne, usługowe i gospodarcze&quot;,&#xa;                    &quot;t&quot;: &quot;budynki transportu i łączności&quot;,&#xa;                    &quot;k&quot;: &quot;budynki oświaty, nauki i kultury oraz budynki sportowe&quot;,&#xa;                    &quot;z&quot;: &quot;budynki szpitali i inne budynki opieki zdrowotnej&quot;,&#xa;                    &quot;b&quot;: &quot;biurowy&quot;,&#xa;                    &quot;h&quot;: &quot;budynki handlowo-usługowe&quot;,&#xa;                    &quot;p&quot;: &quot;przemyslowy&quot;,&#xa;                    &quot;s&quot;: &quot;zbiorniki, silosy i budynki magazynowe&quot;,&#xa;                    &quot;i&quot;: &quot;pozostałe budynki niemieszkalne&quot;}&#xa;&#xa;units = [&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'DOLNOŚLĄSKIE',&#xa;    'NAZWA_DOD': 'województwo',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '01',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'bolesławiecki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '01',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Bolesławiec',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '01',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Bolesławiec',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '01',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Gromadka',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '01',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Nowogrodziec',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '01',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Nowogrodziec',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '01',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Nowogrodziec',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '01',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Osiecznica',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '01',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Warta Bolesławiecka',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'dzierżoniowski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Bielawa',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '02',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Dzierżoniów',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Pieszyce',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Pieszyce',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Pieszyce',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '04',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Piława Górna',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Dzierżoniów',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Łagiewniki',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '07',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Niemcza',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '07',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Niemcza',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '02',&#xa;    'GMI': '07',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Niemcza',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '03',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'głogowski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '03',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Głogów',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '03',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Głogów',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '03',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Jerzmanowa',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '03',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Kotla',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '03',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Pęcław',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '03',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Żukowice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '04',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'górowski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '04',&#xa;    'GMI': '01',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Góra',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '04',&#xa;    'GMI': '01',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Góra',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '04',&#xa;    'GMI': '01',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Góra',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '04',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Jemielno',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '04',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Niechlów',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '04',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Wąsosz',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '04',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Wąsosz',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '04',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Wąsosz',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '05',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'jaworski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '05',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Jawor',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '05',&#xa;    'GMI': '02',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Bolków',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '05',&#xa;    'GMI': '02',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Bolków',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '05',&#xa;    'GMI': '02',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Bolków',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '05',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Męcinka',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '05',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Mściwojów',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '05',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Paszowice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '05',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Wądroże Wielkie',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'karkonoski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Karpacz',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '02',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Kowary',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '03',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Piechowice',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '04',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Szklarska Poręba',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Janowice Wielkie',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Jeżów Sudecki',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '07',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Mysłakowice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '08',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Podgórzyn',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '06',&#xa;    'GMI': '09',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Stara Kamienica',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '07',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'kamiennogórski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '07',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Kamienna Góra',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '07',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Kamienna Góra',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '07',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Lubawka',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '07',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Lubawka',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '07',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Lubawka',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '07',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Marciszów',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'kłodzki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Duszniki-Zdrój',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '02',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Kłodzko',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '03',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Kudowa-Zdrój',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '04',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Nowa Ruda',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '05',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Polanica-Zdrój',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '06',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Bystrzyca Kłodzka',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '06',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Bystrzyca Kłodzka',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '06',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Bystrzyca Kłodzka',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '07',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Kłodzko',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '08',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Lądek-Zdrój',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '08',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Lądek-Zdrój',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '08',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Lądek-Zdrój',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '09',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Lewin Kłodzki',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '10',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Międzylesie',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '10',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Międzylesie',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '10',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Międzylesie',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '11',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Nowa Ruda',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '12',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Radków',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '12',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Radków',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '12',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Radków',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '13',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Stronie Śląskie',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '13',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Stronie Śląskie',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '13',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Stronie Śląskie',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '14',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Szczytna',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '14',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Szczytna',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '08',&#xa;    'GMI': '14',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Szczytna',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'legnicki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Chojnów',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Chojnów',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Krotoszyce',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Kunice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Legnickie Pole',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Miłkowice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '07',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Prochowice',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '07',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Prochowice',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '07',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Prochowice',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '09',&#xa;    'GMI': '08',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Ruja',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'lubański',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Lubań',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '02',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Świeradów-Zdrój',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Leśna',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Leśna',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Leśna',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Lubań',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '05',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Olszyna',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '05',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Olszyna',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '05',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Olszyna',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Platerówka',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '10',&#xa;    'GMI': '07',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Siekierczyn',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '11',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'lubiński',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '11',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Lubin',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '11',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Lubin',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '11',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Rudna',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '11',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Ścinawa',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '11',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Ścinawa',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '11',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Ścinawa',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'lwówecki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '01',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Gryfów Śląski',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '01',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Gryfów Śląski',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '01',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Gryfów Śląski',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '02',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Lubomierz',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '02',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Lubomierz',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '02',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Lubomierz',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Lwówek Śląski',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Lwówek Śląski',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Lwówek Śląski',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Mirsk',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Mirsk',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Mirsk',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '05',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Wleń',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '05',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Wleń',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '12',&#xa;    'GMI': '05',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Wleń',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '13',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'milicki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '13',&#xa;    'GMI': '01',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Cieszków',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '13',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Krośnice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '13',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Milicz',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '13',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Milicz',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '13',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Milicz',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'oleśnicki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Oleśnica',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '02',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Bierutów',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '02',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Bierutów',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '02',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Bierutów',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Dobroszyce',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Dziadowa Kłoda',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '05',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Międzybórz',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '05',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Międzybórz',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '05',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Międzybórz',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Oleśnica',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '07',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Syców',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '07',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Syców',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '07',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Syców',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '08',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Twardogóra',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '08',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Twardogóra',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '14',&#xa;    'GMI': '08',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Twardogóra',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '15',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'oławski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '15',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Oława',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '15',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Domaniów',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '15',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Jelcz-Laskowice',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '15',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Jelcz-Laskowice',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '15',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Jelcz-Laskowice',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '15',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Oława',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'polkowicki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '01',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Chocianów',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '01',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Chocianów',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '01',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Chocianów',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Gaworzyce',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Grębocice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Polkowice',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Polkowice',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Polkowice',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '05',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Przemków',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '05',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Przemków',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '05',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Przemków',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '16',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Radwanice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'strzeliński',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '01',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Borów',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Kondratowice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Przeworno',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Strzelin',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Strzelin',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Strzelin',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '05',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Wiązów',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '05',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Wiązów',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '17',&#xa;    'GMI': '05',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Wiązów',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'średzki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '01',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Kostomłoty',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Malczyce',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Miękinia',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Miękinia',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Miękinia',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Środa Śląska',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Środa Śląska',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Środa Śląska',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '18',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Udanin',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'świdnicki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Świdnica',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '02',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Świebodzice',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Dobromierz',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Jaworzyna Śląska',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Jaworzyna Śląska',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Jaworzyna Śląska',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Marcinowice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '06',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Strzegom',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '06',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Strzegom',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '06',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Strzegom',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '07',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Świdnica',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '08',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Żarów',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '08',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Żarów',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '19',&#xa;    'GMI': '08',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Żarów',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'trzebnicki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '01',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Oborniki Śląskie',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '01',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Oborniki Śląskie',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '01',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Oborniki Śląskie',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '02',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Prusice',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '02',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Prusice',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '02',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Prusice',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Trzebnica',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Trzebnica',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Trzebnica',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Wisznia Mała',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Zawonia',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '06',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Żmigród',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '06',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Żmigród',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '20',&#xa;    'GMI': '06',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Żmigród',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'wałbrzyski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Boguszów-Gorce',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '02',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Jedlina-Zdrój',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '03',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Szczawno-Zdrój',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Czarny Bór',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '05',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Głuszyca',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '05',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Głuszyca',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '05',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Głuszyca',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '06',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Mieroszów',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '06',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Mieroszów',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '06',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Mieroszów',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '07',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Stare Bogaczowice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '21',&#xa;    'GMI': '08',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Walim',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '22',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'wołowski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '22',&#xa;    'GMI': '01',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Brzeg Dolny',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '22',&#xa;    'GMI': '01',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Brzeg Dolny',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '22',&#xa;    'GMI': '01',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Brzeg Dolny',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '22',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Wińsko',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '22',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Wołów',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '22',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Wołów',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '22',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Wołów',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'wrocławski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '01',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Czernica',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Długołęka',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Jordanów Śląski',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Kąty Wrocławskie',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Kąty Wrocławskie',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Kąty Wrocławskie',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Kobierzyce',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Mietków',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '07',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Sobótka',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '07',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Sobótka',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '07',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Sobótka',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '08',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Siechnice',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '08',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Siechnice',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '08',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Siechnice',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '23',&#xa;    'GMI': '09',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Żórawina',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'ząbkowicki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '01',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Bardo',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '01',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Bardo',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '01',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Bardo',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '02',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Ciepłowody',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Kamieniec Ząbkowicki',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Kamieniec Ząbkowicki',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Kamieniec Ząbkowicki',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '04',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Stoszowice',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '05',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Ząbkowice Śląskie',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '05',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Ząbkowice Śląskie',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '05',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Ząbkowice Śląskie',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '06',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Ziębice',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '06',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Ziębice',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '06',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Ziębice',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '07',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Złoty Stok',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '07',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Złoty Stok',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '24',&#xa;    'GMI': '07',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Złoty Stok',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'zgorzelecki',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Zawidów',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '02',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Zgorzelec',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '03',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Bogatynia',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '03',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Bogatynia',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '03',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Bogatynia',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Pieńsk',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Pieńsk',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Pieńsk',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Sulików',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '06',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Węgliniec',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '06',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Węgliniec',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '06',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Węgliniec',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '25',&#xa;    'GMI': '07',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Zgorzelec',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '26',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'złotoryjski',&#xa;    'NAZWA_DOD': 'powiat',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '26',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Wojcieszów',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '26',&#xa;    'GMI': '02',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Złotoryja',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '26',&#xa;    'GMI': '03',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Pielgrzymka',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '26',&#xa;    'GMI': '04',&#xa;    'RODZ': '3',&#xa;    'NAZWA': 'Świerzawa',&#xa;    'NAZWA_DOD': 'gmina miejsko-wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '26',&#xa;    'GMI': '04',&#xa;    'RODZ': '4',&#xa;    'NAZWA': 'Świerzawa',&#xa;    'NAZWA_DOD': 'miasto',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '26',&#xa;    'GMI': '04',&#xa;    'RODZ': '5',&#xa;    'NAZWA': 'Świerzawa',&#xa;    'NAZWA_DOD': 'obszar wiejski',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '26',&#xa;    'GMI': '05',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Zagrodno',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '26',&#xa;    'GMI': '06',&#xa;    'RODZ': '2',&#xa;    'NAZWA': 'Złotoryja',&#xa;    'NAZWA_DOD': 'gmina wiejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '61',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'Jelenia Góra',&#xa;    'NAZWA_DOD': 'miasto na prawach powiatu',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '61',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Jelenia Góra',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '62',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'Legnica',&#xa;    'NAZWA_DOD': 'miasto na prawach powiatu',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '62',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Legnica',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '64',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'Wrocław',&#xa;    'NAZWA_DOD': 'miasto na prawach powiatu',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '64',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Wrocław',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '64',&#xa;    'GMI': '02',&#xa;    'RODZ': '9',&#xa;    'NAZWA': 'Wrocław-Fabryczna',&#xa;    'NAZWA_DOD': 'delegatura',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '64',&#xa;    'GMI': '03',&#xa;    'RODZ': '9',&#xa;    'NAZWA': 'Wrocław-Krzyki',&#xa;    'NAZWA_DOD': 'delegatura',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '64',&#xa;    'GMI': '04',&#xa;    'RODZ': '9',&#xa;    'NAZWA': 'Wrocław-Psie Pole',&#xa;    'NAZWA_DOD': 'delegatura',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '64',&#xa;    'GMI': '05',&#xa;    'RODZ': '9',&#xa;    'NAZWA': 'Wrocław-Stare Miasto',&#xa;    'NAZWA_DOD': 'delegatura',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '64',&#xa;    'GMI': '06',&#xa;    'RODZ': '9',&#xa;    'NAZWA': 'Wrocław-Śródmieście',&#xa;    'NAZWA_DOD': 'delegatura',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '65',&#xa;    'GMI': '',&#xa;    'RODZ': '',&#xa;    'NAZWA': 'Wałbrzych',&#xa;    'NAZWA_DOD': 'miasto na prawach powiatu',&#xa;    'STAN_NA': '2023-01-01'&#xa;  },&#xa;  {&#xa;    'WOJ': '02',&#xa;    'POW': '65',&#xa;    'GMI': '01',&#xa;    'RODZ': '1',&#xa;    'NAZWA': 'Wałbrzych',&#xa;    'NAZWA_DOD': 'gmina miejska',&#xa;    'STAN_NA': '2023-01-01'&#xa;  }&#xa;]&#xa;&#xa;def showMessage(title, text):&#xa;    mbox = QMessageBox()&#xa;    mbox.setWindowTitle(title)&#xa;    mbox.setText(text)&#xa;    mbox.exec()&#xa;&#xa;def getLayer(lname):&#xa;    try:&#xa;        return project.mapLayersByName(lname)[0]&#xa;    except:&#xa;        global missing_layers_message&#xa;        missing_layers_message += '&lt;p>Do projektu nie została wczytana warstwa %s&lt;/p>' % lname&#xa;&#xa;def getRelation(lname, relname, one_to_many=False):&#xa;    if one_to_many:&#xa;        relation = [None, None]&#xa;    else:&#xa;        relation = ''&#xa;    for relation_feature in relations_layer.getFeatures(&quot;Warstwa = '%s' AND Relacja = '%s'&quot; % (lname, relname)):&#xa;        attribute = relation_feature.attribute(&quot;Atrybut&quot;)&#xa;        if one_to_many:&#xa;            if relation[0]:&#xa;                relation[1] = attribute&#xa;            else:&#xa;                relation[0] = attribute&#xa;        else:&#xa;            relation = attribute&#xa;    return relation&#xa;&#xa;def getFeatureValue(f, a):&#xa;    try:&#xa;        v = f.attribute(a)&#xa;        if v == NULL or v.strip() == '':&#xa;            v = ' '&#xa;    except:&#xa;        v = ' '&#xa;    return v&#xa;&#xa;def getListValue(l, i):&#xa;    try:&#xa;        return l[i]&#xa;    except:&#xa;        return ' '&#xa;&#xa;def fillDict(dicts_container, f, v, m):&#xa;    d = dicts_container.get(f, {})&#xa;    if m.get(v):&#xa;        d[v] = m.get(v)&#xa;        dicts_container[f] = d&#xa;&#xa;iface = qgis.utils.iface&#xa;missing_layers_message = ''&#xa;project = QgsProject().instance()&#xa;address_layer_name = 'EGB_AdresPodmiotu'&#xa;&#xa;jrg_layer = getLayer('EGB_JednostkaRejestrowaGruntow')&#xa;ownership_layer = getLayer('EGB_UdzialWeWlasnosci')&#xa;possession_layer = getLayer('EGB_UdzialWeWladaniu')&#xa;district_layer = getLayer('EGB_ObrebEwidencyjny_powierzchnia')&#xa;land_unit_layer = getLayer('EGB_JednostkaEwidencyjna_powierzchnia')&#xa;owner_single_layer = getLayer('EGB_OsobaFizyczna')&#xa;owner_marriage_layer = getLayer('EGB_Malzenstwo')&#xa;owner_institution_layer = getLayer('EGB_Instytucja')&#xa;owner_group_layer = getLayer('EGB_PodmiotGrupowy')&#xa;subject_address_layer = getLayer(address_layer_name)&#xa;if subject_address_layer is None:&#xa;    address_layer_name = 'EGB_AdresZameldowania'&#xa;    subject_address_layer = getLayer(address_layer_name)&#xa;property_address_layer = getLayer('EGB_AdresNieruchomosci')&#xa;building_layer = getLayer('EGB_Budynek_powierzchnia')&#xa;document_layer = getLayer('EGB_Dokument')&#xa;report_layer = getLayer('EGB_OperatTechniczny')&#xa;changes_layer = getLayer('EGB_Zmiana')&#xa;relations_layer = getLayer('relacje')&#xa;&#xa;if relations_layer:&#xa;    if missing_layers_message != '':&#xa;        showMessage('Informacja z rejestru gruntów', '%s&lt;p>Raport może nie zawierać pełej informacji&lt;/p>' % missing_layers_message)&#xa;    field_address_relation = getRelation('EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_AdresNieruchomosci')&#xa;    field_jrg_relation = getRelation('EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_JednostkaRejestrowaGruntow')&#xa;    field_changes_relation = getRelation('EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_Zmiana')&#xa;    field_district_relation = getRelation('EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_ObrebEwidencyjny_powierzchnia')&#xa;    district_land_unit_relation = getRelation('EGB_ObrebEwidencyjny_powierzchnia', 'EGB_JednostkaEwidencyjna_powierzchnia')&#xa;    changes_document_relation = getRelation('EGB_Zmiana', 'EGB_Dokument')&#xa;    changes_report_relation = getRelation('EGB_Zmiana', 'EGB_OperatTechniczny')&#xa;    building_field_relation = getRelation('EGB_Budynek_powierzchnia', 'EGB_DzialkaEwidencyjna_powierzchnia')&#xa;    building_address_relation = getRelation('EGB_Budynek_powierzchnia', 'EGB_AdresNieruchomosci')&#xa;    ownership_jrg_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_JednostkaRejestrowaGruntow')&#xa;    ownership_single_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_OsobaFizyczna')&#xa;    ownership_marriage_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_Malzenstwo')&#xa;    ownership_intitution_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_Instytucja')&#xa;    ownership_group_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_PodmiotGrupowy')&#xa;    ownership_address_relation = getRelation('EGB_UdzialWeWlasnosci', address_layer_name)&#xa;    possession_jrg_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_JednostkaRejestrowaGruntow')&#xa;    possession_single_owner_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_OsobaFizyczna')&#xa;    possession_marriage_owner_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_Malzenstwo')&#xa;    possession_intitution_owner_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_Instytucja')&#xa;    possession_group_owner_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_PodmiotGrupowy')&#xa;    possession_address_relation = getRelation('EGB_UdzialWeWladaniu', address_layer_name)&#xa;    single_owner_address_relation = getRelation('EGB_OsobaFizyczna', address_layer_name)&#xa;    institution_owner_address_relation = getRelation('EGB_Instytucja', address_layer_name)&#xa;    group_owner_single_owner_relation = getRelation('EGB_PodmiotGrupowy', 'EGB_OsobaFizyczna')&#xa;    marriage_owner_single_owner_relation = getRelation('EGB_Malzenstwo', 'EGB_OsobaFizyczna', True)&#xa;    landuses = []&#xa;    ownerships = []&#xa;    documents = []&#xa;    buildings = []&#xa;    dicts = {}&#xa;    jrg_code = ' '&#xa;    field_number = ' '&#xa;    land_unit = ' '&#xa;    district = ' '&#xa;    field_id = ' '&#xa;    field_area = ' '&#xa;    voivodeship = ' '&#xa;    county = ' '&#xa;    commune = ' '&#xa;    field_kw = ' '&#xa;    jrg_identity = ' '&#xa;    registration_group = ' '&#xa;    field_address = ' '&#xa;    for field_layer in project.mapLayersByName('[% @layer_name %]'):&#xa;        if field_layer.id() == '[% @layer_id %]':&#xa;            field_feature = field_layer.getFeature(int('[% $id %]'))&#xa;            field_id = getFeatureValue(field_feature, 'idDzialki')&#xa;            field_number = re.sub(&quot;(.*)\\.(.*)$&quot;, r&quot;\2&quot;, field_id)&#xa;            field_kw = getFeatureValue(field_feature, &quot;numerKW&quot;)&#xa;            field_area = getFeatureValue(field_feature, 'poleEwidencyjne')&#xa;            addresses_ids = &quot;'%s'&quot; % getFeatureValue(field_feature, field_address_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;            address_iter = property_address_layer.getFeatures(&quot;gml_id IN(%s)&quot; % addresses_ids) if property_address_layer else []&#xa;            for address_feature in address_iter:&#xa;                place = getFeatureValue(address_feature, &quot;nazwaMiejscowosci&quot;)&#xa;                street = getFeatureValue(address_feature, &quot;nazwaUlicy&quot;)&#xa;                house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                address = street&#xa;                address += ' %s' % house_number if house_number != ' ' else ''&#xa;                address += ', %s' % place if address != ' ' else place&#xa;                field_address = address if field_address == ' ' or field_address == address else &quot;%s&lt;br> %s&quot; % (field_address, address)&#xa;            district_ids = &quot;'%s'&quot; % getFeatureValue(field_feature, field_district_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;            district_iter = district_layer.getFeatures(&quot;gml_id IN(%s)&quot; % district_ids) if district_layer else []&#xa;            for district_feature in district_iter:&#xa;                district = getFeatureValue(district_feature, 'nazwaWlasna')&#xa;                land_unit_ids = &quot;'%s'&quot; % district_feature.attribute(district_land_unit_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                land_unit_iter = land_unit_layer.getFeatures(&quot;gml_id IN(%s)&quot; % land_unit_ids) if land_unit_layer else []&#xa;                for land_unit_feature in land_unit_iter:&#xa;                    land_unit = getFeatureValue(land_unit_feature, &quot;nazwaWlasna&quot;)&#xa;                    land_unit_id = getFeatureValue(land_unit_feature, &quot;idJednostkiEwid&quot;)&#xa;                    if len(land_unit_id) >= 6:&#xa;                        voivodeship_code = land_unit_id[0:2]&#xa;                        county_code = land_unit_id[2:4]&#xa;                        commune_code = land_unit_id[4:6]&#xa;                        voivodeship_list = list(map(lambda r: r['NAZWA'], filter(lambda row: row['NAZWA_DOD'] == 'województwo', units)))&#xa;                        county_list = list(map(lambda r: r['NAZWA'], filter(lambda row: row['POW'] == county_code and row['NAZWA_DOD'] == 'powiat', units)))&#xa;                        commune_list = list(map(lambda r: r['NAZWA'], filter(lambda row: row['POW'] == county_code and row['GMI'] == commune_code and row['NAZWA_DOD'] not in ('województwo', 'powiat'), units)))&#xa;                        voivodeship = getListValue(voivodeship_list, 0)&#xa;                        county = getListValue(county_list, 0)&#xa;                        commune = getListValue(commune_list, 0)&#xa;            jrg_ids = getFeatureValue(field_feature, field_jrg_relation)&#xa;            for jrg_id in jrg_ids.split(', '):&#xa;                jrg_iter = jrg_layer.getFeatures(&quot;gml_id = '%s'&quot; % jrg_id) if jrg_layer else []&#xa;                for jrg_feature in jrg_iter:&#xa;                    jrg_identity = getFeatureValue(jrg_feature, 'idJednostkiRejestrowej')&#xa;                    jrg_code = re.sub('^(.*)G(.*)$', r'G.\2', jrg_identity)&#xa;                    registration_group = getFeatureValue(jrg_feature, &quot;grupaRejestrowa&quot;)&#xa;                    fillDict(dicts, 'Grupa rej.', registration_group, registration_group_map)&#xa;                possesion_iter = possession_layer.getFeatures(possession_jrg_relation + &quot; LIKE '%&quot; + jrg_id + &quot;%'&quot;) if possession_layer else []&#xa;                for ownership_feature in possesion_iter:&#xa;                    possession_law = possession_map.get(getFeatureValue(ownership_feature, 'rodzajWladania'), ' ')&#xa;                    ownership_share = getFeatureValue(ownership_feature, 'licznikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    denominator = getFeatureValue(ownership_feature, 'mianownikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    if denominator != ' ':&#xa;                        ownership_share += '/%s' % denominator&#xa;                    ownership_single = getFeatureValue(ownership_feature, possession_single_owner_relation)&#xa;                    ownership_marriage = getFeatureValue(ownership_feature, possession_marriage_owner_relation)&#xa;                    ownership_institution = getFeatureValue(ownership_feature, possession_intitution_owner_relation)&#xa;                    ownership_group = getFeatureValue(ownership_feature, possession_group_owner_relation)&#xa;                    ownership_address = ' '&#xa;                    address_iter = subject_address_layer.getFeatures(&quot;gml_id = '%s'&quot; % getFeatureValue(ownership_feature, possession_address_relation)) if subject_address_layer else []&#xa;                    for address_feature in address_iter:&#xa;                        place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                        street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                        house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                        apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                        postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                        ownership_address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                    if ownership_single != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_single.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_single_layer else []&#xa;                        for owner_feature in owner_single_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'pierwszeImie')&#xa;                            surname_first = getFeatureValue(owner_feature, 'pierwszyCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                            surname_second = getFeatureValue(owner_feature, 'drugiCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                            if ownership_address == ' ':&#xa;                                address_iter = subject_address_layer.getFeatures(&#xa;                                    &quot;gml_id = '%s'&quot; % getFeatureValue(owner_feature, single_owner_address_relation)) if subject_address_layer else []&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                    ownership_address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                            ownerships.append((owner, ownership_address, possession_law, ownership_share))&#xa;                    elif ownership_marriage != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_marriage.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_marriage_iter = owner_marriage_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_marriage_layer else []&#xa;                        for owner_feature in owner_marriage_iter:&#xa;                            marriage_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, marriage_owner_single_owner_relation[0])&#xa;                            marriage_partner = getFeatureValue(owner_feature, marriage_owner_single_owner_relation[1])&#xa;                            marriage_ids = &quot;%s, '%s'&quot; % (marriage_ids, marriage_partner) if marriage_ids != ' ' else &quot;'%s'&quot; % marriage_partner&#xa;                            owners = ''&#xa;                            addresses_ids = []&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&#xa;                                &quot;gml_id in (%s)&quot; % marriage_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                owners += owner if owners == '' else &quot;&lt;br>%s&quot; % owner&#xa;                                addresses_ids.append(getFeatureValue(owner_sub_feature, single_owner_address_relation))&#xa;                            if ownership_address == ' ':&#xa;                                address_iter = subject_address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if subject_address_layer else []&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                    address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                                    ownership_address = address if ownership_address == ' ' or ownership_address == address else &quot;%s&lt;br> %s&quot; % (ownership_address, address)&#xa;                            ownerships.append((owners, ownership_address, possession_law, ownership_share))&#xa;                    elif ownership_institution != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_institution.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_institution_iter = owner_institution_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_institution_layer else []&#xa;                        for owner_feature in owner_institution_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'nazwaPelna')&#xa;                            if ownership_address == ' ':&#xa;                                address_iter = subject_address_layer.getFeatures(&#xa;                                    &quot;gml_id = '%s'&quot; % getFeatureValue(owner_feature, institution_owner_address_relation)) if subject_address_layer else []&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                    ownership_address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                            ownerships.append((owner, ownership_address, possession_law, ownership_share))&#xa;                    elif ownership_group != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_group.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_group_iter = owner_group_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_group_layer else []&#xa;                        for owner_feature in owner_group_iter:&#xa;                            group_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, group_owner_single_owner_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                            owners = []&#xa;                            addresses_ids = []&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id in (%s)&quot; % group_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                if ownership_address == ' ':&#xa;                                    owners.append(owner)&#xa;                                    addresses_ids.append(getFeatureValue(owner_sub_feature, single_owner_address_relation))&#xa;                                else:&#xa;                                    ownerships.append((owner, ownership_address, possession_law, ownership_share))&#xa;                            c = 0&#xa;                            address_iter = subject_address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if subject_address_layer else []&#xa;                            for address_feature in address_iter:&#xa;                                place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                                ownerships.append((owners[c], address, possession_law, ownership_share))&#xa;                                c += 1&#xa;                ownership_iter = ownership_layer.getFeatures(ownership_jrg_relation + &quot; LIKE '%&quot; + jrg_id + &quot;%'&quot;) if ownership_layer else []&#xa;                for ownership_feature in ownership_iter:&#xa;                    ownership_law = ownership_map.get(getFeatureValue(ownership_feature, 'rodzajPrawa'), ' ')&#xa;                    ownership_share = getFeatureValue(ownership_feature, 'licznikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    denominator = getFeatureValue(ownership_feature, 'mianownikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    if denominator != ' ':&#xa;                        ownership_share += '/%s' % denominator&#xa;                    ownership_single = getFeatureValue(ownership_feature, ownership_single_owner_relation)&#xa;                    ownership_marriage = getFeatureValue(ownership_feature, ownership_marriage_owner_relation)&#xa;                    ownership_institution = getFeatureValue(ownership_feature, ownership_intitution_owner_relation)&#xa;                    ownership_group = getFeatureValue(ownership_feature, ownership_group_owner_relation)&#xa;                    ownership_address = ' '&#xa;                    address_iter = subject_address_layer.getFeatures(&#xa;                      &quot;gml_id = '%s'&quot; % getFeatureValue(ownership_feature,&#xa;                                                        ownership_address_relation)) if subject_address_layer else []&#xa;                    for address_feature in address_iter:&#xa;                        place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                        street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                        house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                        apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                        postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                        ownership_address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                    if ownership_single != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_single.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_single_layer else []&#xa;                        for owner_feature in owner_single_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'pierwszeImie')&#xa;                            surname_first = getFeatureValue(owner_feature, 'pierwszyCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                            surname_second = getFeatureValue(owner_feature, 'drugiCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                            if ownership_address == ' ':&#xa;                                address_iter = subject_address_layer.getFeatures(&quot;gml_id = '%s'&quot; % getFeatureValue(owner_feature, single_owner_address_relation)) if subject_address_layer else []&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                ownership_address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                            ownerships.append((owner, ownership_address, ownership_law, ownership_share))&#xa;                    elif ownership_marriage != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_marriage.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_marriage_iter = owner_marriage_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_marriage_layer else []&#xa;                        for owner_feature in owner_marriage_iter:&#xa;                            marriage_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, marriage_owner_single_owner_relation[0])&#xa;                            marriage_partner = getFeatureValue(owner_feature, marriage_owner_single_owner_relation[1])&#xa;                            marriage_ids = &quot;%s, '%s'&quot; % (marriage_ids, marriage_partner) if marriage_ids != ' ' else &quot;'%s'&quot; % marriage_partner&#xa;                            owners = ''&#xa;                            addresses_ids = []&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id in (%s)&quot; % marriage_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner,surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                owners += owner if owners == '' else &quot;&lt;br>%s&quot; % owner&#xa;                                addresses_ids.append(getFeatureValue(owner_sub_feature, single_owner_address_relation))&#xa;                            if ownership_address == ' ':&#xa;                                address_iter = subject_address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if subject_address_layer else []&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                    address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                                    ownership_address = address if ownership_address == ' ' or ownership_address == address else &quot;%s&lt;br> %s&quot; % (ownership_address, address)&#xa;                            ownerships.append((owners, ownership_address, ownership_law, ownership_share))&#xa;                    elif ownership_institution != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_institution.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_institution_iter = owner_institution_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_institution_layer else []&#xa;                        for owner_feature in owner_institution_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'nazwaPelna')&#xa;                            if ownership_address == ' ':&#xa;                                address_iter = subject_address_layer.getFeatures(&quot;gml_id = '%s'&quot; % getFeatureValue(owner_feature, institution_owner_address_relation)) if subject_address_layer else []&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                    ownership_address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                            ownerships.append((owner, ownership_address, ownership_law, ownership_share))&#xa;                    elif ownership_group != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_group.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_group_iter = owner_group_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_group_layer else []&#xa;                        for owner_feature in owner_group_iter:&#xa;                            group_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, group_owner_single_owner_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                            owners = []&#xa;                            addresses_ids = []&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id in (%s)&quot; % group_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                if ownership_address == ' ':&#xa;                                    owners.append(owner)&#xa;                                    addresses_ids.append(getFeatureValue(owner_sub_feature, single_owner_address_relation))&#xa;                                else:&#xa;                                    ownerships.append((owner, ownership_address, ownership_law, ownership_share))&#xa;                            c = 0&#xa;                            address_iter = subject_address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if subject_address_layer else []&#xa;                            for address_feature in address_iter:&#xa;                                place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (place, street, house_number, apartment_number, postal_code)&#xa;                                ownerships.append((owners[c], address, ownership_law, ownership_share))&#xa;                                c += 1&#xa;            changes_ids = &quot;'%s'&quot; % getFeatureValue(field_feature, field_changes_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;            changes_iter = changes_layer.getFeatures(&quot;gml_id IN (%s)&quot; % changes_ids) if changes_layer else []&#xa;            for changes_feature in changes_iter:&#xa;                report_ids = &quot;'%s'&quot; % getFeatureValue(changes_feature, changes_report_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                report_iter = report_layer.getFeatures(&quot;gml_id IN (%s)&quot; % report_ids) if report_layer else []&#xa;                for report_feature in report_iter:&#xa;                    report_date = getFeatureValue(report_feature, 'dataPrzyjeciaDoPZGIK')&#xa;                    report_id = getFeatureValue(report_feature, 'identyfikatorOperatuWgPZGIK')&#xa;                    report_author = getFeatureValue(report_feature, 'nazwaTworcy')&#xa;                    report_desc = getFeatureValue(report_feature, 'opisOperatu')&#xa;                    documents.append(('Operat', 'Operat techniczny', report_date, report_id, report_author, report_desc))&#xa;                doc_ids = &quot;'%s'&quot; % getFeatureValue(changes_feature, changes_document_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                doc_iter = document_layer.getFeatures(&quot;gml_id IN (%s)&quot; % doc_ids) if document_layer else []&#xa;                for doc_feature in doc_iter:&#xa;                    doc_type = document_type_map.get(getFeatureValue(doc_feature, 'rodzajDokumentu'))&#xa;                    doc_date = getFeatureValue(doc_feature, 'dataDokumentu')&#xa;                    doc_id = getFeatureValue(doc_feature, 'sygnaturaDokumentu')&#xa;                    doc_author = getFeatureValue(doc_feature, 'nazwaTworcyDokumentu')&#xa;                    doc_desc = getFeatureValue(doc_feature, 'opisDokumentu')&#xa;                    documents.append(('Dokument', doc_type, doc_date, doc_id, doc_author, doc_desc))&#xa;            ofu = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_OFU')&#xa;            ozu = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_OZU')&#xa;            ozk = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_OZK')&#xa;            landuse_area = getFeatureValue(field_feature, 'klasouzytek_EGBKlasouzytek_powierzchnia')&#xa;            ofu_list = str(ofu).split(', ')&#xa;            ozu_list = str(ozu).split(', ')&#xa;            ozk_list = str(ozk).split(', ')&#xa;            landuse_area_list = str(landuse_area).split(', ')&#xa;            for i in range(0, max([len(ofu_list), len(ozu_list), len(ozk_list), len(landuse_area_list)])):&#xa;                landuses.append((getListValue(ofu_list, i), getListValue(ozu_list, i), getListValue(ozk_list, i), getListValue(landuse_area_list, i)))&#xa;            building_iter = building_layer.getFeatures(f'{building_field_relation} LIKE \'%{getFeatureValue(field_feature, &quot;gml_id&quot;)}%\'') if building_layer else []&#xa;            for building_feature in building_iter:&#xa;                building_id = getFeatureValue(building_feature, 'idBudynku')&#xa;                building_status = getFeatureValue(building_feature, 'statusBudynku')&#xa;                building_pkob = getFeatureValue(building_feature, 'klasaWgPKOB')&#xa;                building_fsb = getFeatureValue(building_feature, 'glownaFunkcjaBudynku')&#xa;                building_fsb = '-' if building_fsb == ' ' else building_fsb&#xa;                building_kst = getFeatureValue(building_feature, 'rodzajWgKST')&#xa;                building_kst = '-' if building_kst == ' ' else building_kst&#xa;                fillDict(dicts, 'KST', building_kst, building_kst_map)&#xa;                building_kw = getFeatureValue(building_feature, 'numerKW')&#xa;                building_walls = getFeatureValue(building_feature, 'materialScianZewn')&#xa;                building_agf = getFeatureValue(building_feature, 'liczbaKondygnacjiNadziemnych')&#xa;                building_agf = '-' if building_agf == ' ' else building_agf&#xa;                building_uf = getFeatureValue(building_feature, 'liczbaKondygnacjiPodziemnych')&#xa;                building_uf = '-' if building_uf == ' ' else building_uf&#xa;                building_area = getFeatureValue(building_feature, 'powZabudowy')&#xa;                building_usage_area = getFeatureValue(building_feature, 'powierzchniaUzytkowaBudynkuZObmiarow')&#xa;                building_completion_year = getFeatureValue(building_feature, 'rokZakonczeniaBudowy')&#xa;                address_iter = property_address_layer.getFeatures(&quot;gml_id = '%s'&quot; % getFeatureValue(building_feature, building_address_relation)) if property_address_layer else []&#xa;                building_address = ' '&#xa;                for address_feature in address_iter:&#xa;                    place = getFeatureValue(address_feature, &quot;nazwaMiejscowosci&quot;)&#xa;                    street = getFeatureValue(address_feature, &quot;nazwaUlicy&quot;)&#xa;                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                    address = street&#xa;                    address += ' %s' % house_number if house_number != ' ' else ''&#xa;                    address += ', %s' % place if address != ' ' else place&#xa;                    building_address = address if building_address == ' ' or building_address == address else &quot;%s&lt;br> %s&quot; % (building_address, address)&#xa;                buildings.append((building_id,&#xa;                                  building_status,&#xa;                                  building_pkob,&#xa;                                  building_fsb,&#xa;                                  building_kst,&#xa;                                  building_kw,&#xa;                                  building_walls,&#xa;                                  building_agf,&#xa;                                  building_uf,&#xa;                                  building_area,&#xa;                                  building_usage_area,&#xa;                                  building_completion_year,&#xa;                                  building_address))&#xa;&#xa;    ownerships_html = &quot;&quot;&#xa;    if len(ownerships) > 0:&#xa;        ownerships_html += f&quot;&quot;&quot;&#xa;        &lt;table>&#xa;            &lt;tr>&#xa;                &lt;th class=&quot;border&quot;>Właściciel&lt;/th>&#xa;                &lt;th class=&quot;border&quot;>Adres&lt;/th>&#xa;                &lt;th class=&quot;border&quot;>Rodzaj prawa&lt;/th>&#xa;                &lt;th class=&quot;border&quot;>Udział&lt;/th>&#xa;            &lt;/tr>&quot;&quot;&quot;&#xa;        for ownership in ownerships:&#xa;            ownerships_html += f&quot;&quot;&quot;&#xa;            &lt;tr>&#xa;                &lt;td class=&quot;border&quot;>{ownership[0]}&lt;/td>&#xa;                &lt;td class=&quot;border&quot;>{ownership[1]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{ownership[2]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{ownership[3]}&lt;/td>&#xa;            &lt;/tr>&quot;&quot;&quot;&#xa;        ownerships_html += &quot;&lt;/table>&quot;&#xa;&#xa;    documents_html = &quot;&quot;&#xa;    if len(documents) > 0:&#xa;        documents_html = f&quot;&quot;&quot;&#xa;        &lt;br>&#xa;        &lt;h2>DOKUMENTY&lt;/h2>&#xa;        &lt;table>&#xa;        &lt;tr>&#xa;            &lt;th class=&quot;border&quot;>Typ&lt;/th>&#xa;            &lt;th class=&quot;border&quot;>Rodzaj&lt;/th>&#xa;            &lt;th class=&quot;border&quot;>Data dok./przek. do zas.&lt;/th>&#xa;            &lt;th class=&quot;border&quot;>Sygnatura/ozn. kanc.&lt;/th>&#xa;            &lt;th class=&quot;border&quot;>Nazwa twórcy&lt;/th>&#xa;            &lt;th class=&quot;border&quot;>Opis dokumentu&lt;/th>&#xa;        &lt;/tr>&quot;&quot;&quot;&#xa;        for doc in documents:&#xa;            documents_html += f&quot;&quot;&quot;&#xa;            &lt;tr>&#xa;                &lt;td class=&quot;border center&quot;>{doc[0]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{doc[1]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{doc[2]}&lt;/td>&#xa;                &lt;td class=&quot;border break center&quot;>{doc[3]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{doc[4]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{doc[5]}&lt;/td>&#xa;            &lt;/tr>&quot;&quot;&quot;&#xa;        documents_html += &quot;&lt;/table>&quot;&#xa;&#xa;    landuses_html = &quot;&quot;&#xa;    if len(landuses) > 0:&#xa;        landuses_html += f&quot;&quot;&quot;&#xa;        &lt;br>&#xa;        &lt;h2>KLASOUŻYTKI&lt;/h2>&#xa;        &lt;table>&#xa;            &lt;tr>&#xa;                &lt;th class=&quot;border&quot; style=&quot;width:80px&quot;>Sposób&lt;br>zagospod.&lt;/th>&#xa;                &lt;th class=&quot;border&quot; style=&quot;width:80px&quot;>Rodzaj&lt;br>użytku&lt;/th>&#xa;                &lt;th class=&quot;border&quot; style=&quot;width:80px&quot;>Klasa&lt;br>bonitacyjna&lt;/th>&#xa;                &lt;th class=&quot;border&quot; style=&quot;width:100px&quot;>Powierzchnia&lt;br>ewidencyjna&lt;/th>&#xa;            &lt;/tr>&#xa;        &quot;&quot;&quot;&#xa;        landuses_area = 0&#xa;        for landuse in landuses:&#xa;            landuses_html += f&quot;&quot;&quot;&#xa;            &lt;tr>&#xa;                &lt;td class=&quot;border center&quot;>{landuse[0]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{landuse[1]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{landuse[2]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{landuse[3]}&lt;/td>&#xa;            &lt;/tr>&quot;&quot;&quot;&#xa;            try:&#xa;                landuse_area = round(float(landuse[3]), 4)&#xa;            except:&#xa;                landuse_area = 0&#xa;            landuses_area += landuse_area&#xa;        landuses_area = round(landuses_area, 4)&#xa;        landuses_html += f&quot;&quot;&quot;&#xa;            &lt;tr>&#xa;                &lt;td colspan=&quot;3&quot; align=&quot;right&quot; style=&quot;padding-right: 5px;padding-top: 5px&quot;>&lt;i>Suma powierzchni:&lt;/i>&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>&lt;b>{landuses_area}&lt;/b>&lt;/td>&#xa;            &lt;/tr>&#xa;        &lt;/table>&quot;&quot;&quot;&#xa;&#xa;    buildings_html = &quot;&quot;&#xa;    if len(buildings) > 0:&#xa;        buildings_html = &quot;&quot;&quot;&#xa;            &lt;br>&#xa;            &lt;h2>BUDYNKI&lt;/h2>&#xa;            &lt;table>&#xa;                &lt;tr>&#xa;                    &lt;th class=&quot;border&quot; style=&quot;width: 100px&quot; rowspan=&quot;2&quot;>Ident.&lt;/th>&#xa;                    &lt;th class=&quot;border&quot; rowspan=&quot;2&quot;>Status&lt;/th>&#xa;                    &lt;th class=&quot;border&quot; rowspan=&quot;2&quot;>PKOB&lt;/th>&#xa;                    &lt;th class=&quot;border&quot;>FSB&lt;/th>&#xa;                    &lt;th class=&quot;border&quot; style=&quot;width: 100px&quot; rowspan=&quot;2&quot;>Nr KW&lt;/th>&#xa;                    &lt;th class=&quot;border&quot; rowspan=&quot;2&quot;>Mat. ścian&lt;/th>&#xa;                    &lt;th class=&quot;border&quot;>Kond. naz.&lt;/th>&#xa;                    &lt;th class=&quot;border&quot; rowspan=&quot;2&quot;>P.&lt;br>zab.&lt;br>(m2).&lt;/th>&#xa;                    &lt;th class=&quot;border&quot; rowspan=&quot;2&quot;>P. uż.&lt;br>z obm.&lt;br>(m2).&lt;/th>&#xa;                    &lt;th class=&quot;border&quot; rowspan=&quot;2&quot;>Rok&lt;br>zak.&lt;br>bud.&lt;/th>&#xa;                    &lt;th class=&quot;border&quot; style=&quot;width: 120px&quot; rowspan=&quot;2&quot;>Adres budynku&lt;br>Nr rej. zabytków&lt;/th>&#xa;                &lt;/tr>&#xa;                &lt;tr>&#xa;                    &lt;th class=&quot;border&quot;>KST&lt;/th>&#xa;                    &lt;th class=&quot;border&quot;>Kond. podz.&lt;/th>&#xa;                &lt;/tr>&quot;&quot;&quot;&#xa;        for building in buildings:&#xa;            buildings_html += f&quot;&quot;&quot;&#xa;            &lt;tr>&#xa;                &lt;td class=&quot;border break&quot; rowspan=&quot;2&quot;>{building[0]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot; rowspan=&quot;2&quot;>{building[1]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot; rowspan=&quot;2&quot;>{building[2]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{building[3]}&lt;/td>&#xa;                &lt;td class=&quot;border break&quot; rowspan=&quot;2&quot;>{building[5]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot; rowspan=&quot;2&quot;>{building[6]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{building[7]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot; rowspan=&quot;2&quot;>{building[9]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot; rowspan=&quot;2&quot;>{building[10]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot; rowspan=&quot;2&quot;>{building[11]}&lt;/td>&#xa;                &lt;td class=&quot;border&quot; rowspan=&quot;2&quot;>{building[12]}&lt;/td>&#xa;            &lt;/tr>&#xa;            &lt;tr>&#xa;                &lt;td class=&quot;border center&quot;>{building[4]}&lt;/td>&#xa;                &lt;td class=&quot;border center&quot;>{building[8]}&lt;/td>&#xa;            &lt;/tr>&quot;&quot;&quot;&#xa;        buildings_html += &quot;&lt;/table>&quot;&#xa;    dicts_html = &quot;&quot;&#xa;    if len(dicts) > 0:&#xa;        dicts_html += &quot;&lt;h2>Oznaczenia&lt;/h2>&lt;ul>&quot;&#xa;        for dict_name, bdict in dicts.items():&#xa;            dicts_html += f&quot;&quot;&quot;&lt;li class=&quot;main&quot;>{dict_name}&lt;/li>&#xa;            &lt;ul>&quot;&quot;&quot;&#xa;            for k, v in bdict.items():&#xa;                dicts_html += f&quot;&lt;li>{k}: {v}&lt;/li>&quot;&#xa;            dicts_html += &quot;&lt;/ul>&quot;&#xa;        dicts_html += &quot;&lt;/ul>&quot;&#xa;&#xa;    report_html = f&quot;&quot;&quot;&#xa;&lt;html>&#xa;&lt;head>&#xa;&lt;meta charset=&quot;UTF-8&quot;>&#xa;&lt;/head>&#xa;&lt;style type=&quot;text/css&quot;>&#xa;body {{&#xa;    font-family: &quot;arial&quot;;&#xa;    font-size: 12px;&#xa;}}&#xa;h1 {{&#xa;    font-size: 20px;&#xa;}}&#xa;h2 {{&#xa;}}&#xa;h2.main {{&#xa;    text-align: center;&#xa;}}&#xa;table {{&#xa;    border-collapse: collapse;&#xa;}}&#xa;th {{&#xa;    font-size: 12px;&#xa;    vertical-align: middle;&#xa;}}&#xa;th.border {{&#xa;    border: 1px solid black;&#xa;    padding-top: 5px;&#xa;    padding-left: 2px;&#xa;    padding-right: 2px;&#xa;}}&#xa;td {{&#xa;    font-size: 11px;&#xa;    vertical-align: middle;&#xa;}}&#xa;td.border {{&#xa;    border: 1px solid black;&#xa;    padding-top: 5px;&#xa;    padding-left: 2px;&#xa;    padding-right: 2px;&#xa;}}&#xa;.break {{&#xa;    word-wrap: break-word;&#xa;}}&#xa;.center {{&#xa;    text-align: center;&#xa;}}&#xa;&lt;/style>&#xa;&lt;body>&#xa;&lt;h2 class=&quot;main&quot;>INFORMACJA Z REJESTRU GRUNTÓW&lt;/h2>&#xa;&lt;h1 align=&quot;right&quot;>&lt;u>{jrg_code}&lt;/u>&lt;br>&lt;span style=&quot;font-size: 16px&quot;>{field_number}&lt;span>&lt;/h1>&#xa;&lt;table>&#xa;    &lt;tr>&#xa;        &lt;td>&lt;i>Jedn. ew.:&lt;/i> {land_unit}&lt;/td>&#xa;        &lt;td style=&quot;width: 100px&quot;>&lt;/td>&#xa;        &lt;td>&lt;i>Jedn. rej.:&lt;/i> {jrg_identity}&lt;/td>&#xa;    &lt;/tr>&#xa;    &lt;tr>&#xa;        &lt;td>&lt;i>Obręb:&lt;/i> {district}&lt;/td>&#xa;        &lt;td style=&quot;width: 100px&quot;>&lt;/td>&#xa;        &lt;td>&lt;i>Grupa rej.:&lt;/i> {registration_group}&lt;/td>&#xa;    &lt;/tr>&#xa;    &lt;tr>&#xa;        &lt;td>&lt;i>Ident.:&lt;/i> {field_id}&lt;/td>&#xa;        &lt;td style=&quot;width: 100px&quot;>&lt;/td>&#xa;        &lt;td>&lt;i>Adres:&lt;/i> {field_address}&lt;/td>&#xa;    &lt;/tr>&#xa;    &lt;tr>&#xa;        &lt;td>&lt;i>Pow. ew.:&lt;/i> {field_area}&lt;/td>&#xa;    &lt;/tr>&#xa;    &lt;tr>&#xa;        &lt;td>&lt;i>Woj.:&lt;/i> {voivodeship}&lt;/td>&#xa;        &lt;td style=&quot;width: 100px&quot;>&lt;/td>&#xa;        &lt;td>&lt;i>Wydruk z dn.:&lt;/i> {datetime.date.today()}&lt;/td>&#xa;    &lt;/tr>&#xa;    &lt;tr>&#xa;        &lt;td>&lt;i>Powiat:&lt;/i> {county}&lt;/td>&#xa;        &lt;td style=&quot;width: 100px&quot;>&lt;/td>&#xa;        &lt;td>&lt;i>Uwagi:&lt;/i> {''}&lt;/td>&#xa;    &lt;/tr>&#xa;    &lt;tr>&#xa;        &lt;td>&lt;i>Gmina:&lt;/i> {commune}&lt;/td>&#xa;    &lt;/tr>&#xa;    &lt;tr>&#xa;        &lt;td>&lt;i>Nr KW:&lt;/i> {field_kw}&lt;/td>&#xa;    &lt;/tr>&#xa;&lt;/table>&#xa;{ownerships_html}&#xa;{landuses_html}&#xa;{documents_html}&#xa;{buildings_html}&#xa;{dicts_html}&#xa;&lt;/body>&#xa;&lt;/html>&#xa;&quot;&quot;&quot;&#xa;    html_filepath = QFileDialog.getSaveFileName(None, 'Wskaż ścieżkę zapisu', '', 'HyperText Markup Language (*.html)')[0]&#xa;    if html_filepath != '':&#xa;        with open(html_filepath, 'w') as f:&#xa;            f.write(report_html)&#xa;        showMessage('Informacja z rejestru gruntów',&#xa;                    '&lt;p>Dokument został zapisany w lokalizacji:&lt;/p>'&#xa;                    '&lt;p>&lt;i>%s&lt;/i>&lt;/p>' % html_filepath)&#xa;&#xa;else:&#xa;    showMessage('Informacja z rejestru gruntów', 'Do projektu nie została wczytana warstwa relacji, utworzenie raportu jest niemożliwe')" id="{7ea997e8-d4aa-439f-aa7b-2c35d9ef584d}" shortTitle="Informacja z rejestru gruntów " notificationMessage="" name="Informacja z rejestru gruntów " type="1" capture="0" icon="">
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting isEnabledOnlyWhenEditable="0" action="from qgis.PyQt.QtCore import Qt, QSize&#xa;from qgis.PyQt.QtWidgets import QDialog, QTableWidget, QHeaderView, QTableWidgetItem, QPushButton, QFileDialog,\&#xa;    QMessageBox, QVBoxLayout, QHBoxLayout, QSpacerItem, QSizePolicy&#xa;import pandas as pd&#xa;&#xa;building_kst_map = {&quot;m&quot;: &quot;budynki mieszkalne&quot;,&#xa;                    &quot;g&quot;: &quot;budynki produkcyjne, usługowe i gospodarcze&quot;,&#xa;                    &quot;t&quot;: &quot;budynki transportu i łączności&quot;,&#xa;                    &quot;k&quot;: &quot;budynki oświaty, nauki i kultury oraz budynki sportowe&quot;,&#xa;                    &quot;z&quot;: &quot;budynki szpitali i inne budynki opieki zdrowotnej&quot;,&#xa;                    &quot;b&quot;: &quot;biurowy&quot;,&#xa;                    &quot;h&quot;: &quot;budynki handlowo-usługowe&quot;,&#xa;                    &quot;p&quot;: &quot;przemyslowy&quot;,&#xa;                    &quot;s&quot;: &quot;zbiorniki, silosy i budynki magazynowe&quot;,&#xa;                    &quot;i&quot;: &quot;pozostałe budynki niemieszkalne&quot;}&#xa;columns = ['Id działki', 'Id budynku', 'KST', 'Kondygnacje nadziemne', 'Kondygnacje podziemne', 'Pow. zabudowy', 'Adres', 'Geometria']&#xa;&#xa;def configureDialog():&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Budynki przynależne do działki')&#xa;    dialog.setMinimumSize(QSize(1200, 405))&#xa;    layout = QVBoxLayout()&#xa;    button_layout = QHBoxLayout()&#xa;    csv_button = createButton(dialog, 'Eksport do csv', toCsv)&#xa;    excel_button = createButton(dialog, 'Eksport do excela', toExcel)&#xa;    button_layout.addWidget(csv_button)&#xa;    button_layout.addWidget(excel_button)&#xa;    button_layout.addItem(QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum))&#xa;    layout.addLayout(button_layout)&#xa;    table = QTableWidget(0, len(columns))&#xa;    horizontal_header = table.horizontalHeader()&#xa;    horizontal_header.setSectionResizeMode(QHeaderView.Stretch)&#xa;    horizontal_header.hideSection(len(columns) - 1)&#xa;    table.verticalHeader().setSectionResizeMode(QHeaderView.ResizeToContents)&#xa;    table.setHorizontalHeaderLabels(columns)&#xa;    table.itemSelectionChanged.connect(zoomToSelectedBuilding)&#xa;    layout.addWidget(table)&#xa;    dialog.setLayout(layout)&#xa;    return dialog, table&#xa;&#xa;&#xa;def createButton(dialog, text, func):&#xa;    button = QPushButton(dialog)&#xa;    button.setText(text)&#xa;    button.clicked.connect(func)&#xa;    return button&#xa;&#xa;&#xa;def zoomToSelectedBuilding():&#xa;    building_layer.removeSelection()&#xa;    building_layer.select(int(table.item(table.currentRow(), 0).whatsThis()))&#xa;    iface.mapCanvas().zoomToSelected(building_layer)&#xa;&#xa;def showMessage(title, text):&#xa;    mbox = QMessageBox(dialog)&#xa;    mbox.setWindowTitle(title)&#xa;    mbox.setText(text)&#xa;    mbox.exec()&#xa;&#xa;def toCsv():&#xa;    path, ok = QFileDialog.getSaveFileName(dialog, 'Wybierz plik', '', 'Comma Separated Values (*.csv)')&#xa;    if ok:&#xa;        df = prepareExportData()&#xa;        df.to_csv(path, sep=';')&#xa;        showMessage('Budynki przynależne do działki',&#xa;                    '&lt;p>Zestawienie zostało zapisane w lokalizacji:&lt;/p>'&#xa;                    '&lt;p>&lt;i>%s&lt;/i>&lt;/p>' % path)&#xa;&#xa;def toExcel():&#xa;    path, ok = QFileDialog.getSaveFileName(dialog, 'Wybierz plik', '', 'Excel (*.xlsx)')&#xa;    if ok:&#xa;        df = prepareExportData()&#xa;        with pd.ExcelWriter(path) as writer:&#xa;            df.to_excel(writer, sheet_name='Budynki przynależne do działki', index=False)&#xa;        showMessage('Budynki przynależne do działki',&#xa;                    '&lt;p>Zestawienie zostało zapisane w lokalizacji:&lt;/p>'&#xa;                    '&lt;p>&lt;i>%s&lt;/i>&lt;/p>' % path)&#xa;&#xa;def prepareExportData():&#xa;    data = []&#xa;    for row in range(table.rowCount()):&#xa;        rowData = []&#xa;        for column in range(table.columnCount()):&#xa;            widgetItem = table.item(row, column)&#xa;            if widgetItem and widgetItem.text:&#xa;                rowData.append(widgetItem.text())&#xa;            else:&#xa;                rowData.append('NULL')&#xa;        data.append(rowData)&#xa;    df = pd.DataFrame(data)&#xa;    df.columns = columns&#xa;    return df&#xa;&#xa;def getLayer(lname):&#xa;    try:&#xa;        return project.mapLayersByName(lname)[0]&#xa;    except:&#xa;        global missing_layers_message&#xa;        missing_layers_message += '&lt;p>Do projektu nie została wczytana warstwa %s&lt;/p>' % lname&#xa;&#xa;def getRelation(lname, relname, one_to_many=False):&#xa;    if one_to_many:&#xa;        relation = [None, None]&#xa;    else:&#xa;        relation = ''&#xa;    for relation_feature in relations_layer.getFeatures(&quot;Warstwa = '%s' AND Relacja = '%s'&quot; % (lname, relname)):&#xa;        attribute = relation_feature.attribute(&quot;Atrybut&quot;)&#xa;        if one_to_many:&#xa;            if relation[0]:&#xa;                relation[1] = attribute&#xa;            else:&#xa;                relation[0] = attribute&#xa;        else:&#xa;            relation = attribute&#xa;    return relation&#xa;&#xa;def getFeatureValue(f, a):&#xa;    try:&#xa;        v = f.attribute(a)&#xa;        if v == NULL or v.strip() == '':&#xa;            v = ' '&#xa;    except:&#xa;        v = ' '&#xa;    return v&#xa;&#xa;iface = qgis.utils.iface&#xa;missing_layers_message = ''&#xa;project = QgsProject().instance()&#xa;address_layer_name = 'EGB_AdresNieruchomosci'&#xa;&#xa;property_address_layer = getLayer(address_layer_name)&#xa;if not property_address_layer:&#xa;    property_address_layer = getLayer('EGB_AdresNieruchomosci_punkt')&#xa;    address_layer_name = 'EGB_AdresNieruchomosci_punkt'&#xa;building_layer = getLayer('EGB_Budynek_powierzchnia')&#xa;relations_layer = getLayer('relacje')&#xa;&#xa;dialog, table = configureDialog()&#xa;if relations_layer and building_layer:&#xa;    if missing_layers_message != '':&#xa;        showMessage('Budynki przynależne do działki', '%s&lt;p>Raport może nie zawierać pełej informacji&lt;/p>' % missing_layers_message)&#xa;    building_field_relation = getRelation('EGB_Budynek_powierzchnia', 'EGB_DzialkaEwidencyjna_powierzchnia')&#xa;    building_address_relation = getRelation('EGB_Budynek_powierzchnia', address_layer_name)&#xa;    buildings = []&#xa;    for field_layer in project.mapLayersByName('[% @layer_name %]'):&#xa;        if field_layer.id() == '[% @layer_id %]':&#xa;            field_feature = field_layer.getFeature([% $id %])&#xa;            field_id = getFeatureValue(field_feature, 'idDzialki')&#xa;            building_iter = building_layer.getFeatures(f'{building_field_relation} LIKE \'%{getFeatureValue(field_feature, &quot;gml_id&quot;)}%\'') if building_layer else []&#xa;            for building_feature in building_iter:&#xa;                building_geom = building_feature.geometry()&#xa;                building_geom_wkt = building_geom.asWkt() if not (building_geom.isNull() or building_geom.isEmpty()) else ''&#xa;                building_id = getFeatureValue(building_feature, 'idBudynku')&#xa;                building_kst = building_kst_map.get(getFeatureValue(building_feature, 'rodzajWgKST'))&#xa;                building_agf = getFeatureValue(building_feature, 'liczbaKondygnacjiNadziemnych')&#xa;                building_uf = getFeatureValue(building_feature, 'liczbaKondygnacjiPodziemnych')&#xa;                building_area = getFeatureValue(building_feature, 'powZabudowy')&#xa;                address_iter = property_address_layer.getFeatures(&quot;gml_id = '%s'&quot; % getFeatureValue(building_feature, building_address_relation)) if property_address_layer else []&#xa;                building_address = ' '&#xa;                for address_feature in address_iter:&#xa;                    place = getFeatureValue(address_feature, &quot;nazwaMiejscowosci&quot;)&#xa;                    street = getFeatureValue(address_feature, &quot;nazwaUlicy&quot;)&#xa;                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                    address = street&#xa;                    address += ' %s' % house_number if house_number != ' ' else ''&#xa;                    address += ', %s' % place if address != ' ' else place&#xa;                    building_address = address if building_address == ' ' or building_address == address else &quot;%s\n%s&quot; % (building_address, address)&#xa;                buildings.append((field_id,&#xa;                                  building_feature.id(),&#xa;                                  building_id,&#xa;                                  building_kst,&#xa;                                  building_agf,&#xa;                                  building_uf,&#xa;                                  building_area,&#xa;                                  building_address,&#xa;                                  building_geom_wkt))&#xa;    if len(buildings) > 0:&#xa;        for building in buildings:&#xa;            rownum = table.rowCount()&#xa;            table.insertRow(rownum)&#xa;            field_id_item = QTableWidgetItem(building[0])&#xa;            field_id_item.setWhatsThis(str(building[1]))&#xa;            table.setItem(rownum, 0, field_id_item)&#xa;            table.setItem(rownum, 1, QTableWidgetItem(building[2]))&#xa;            table.setItem(rownum, 2, QTableWidgetItem(building[3]))&#xa;            table.setItem(rownum, 3, QTableWidgetItem(building[4]))&#xa;            table.setItem(rownum, 4, QTableWidgetItem(building[5]))&#xa;            table.setItem(rownum, 5, QTableWidgetItem(building[6]))&#xa;            table.setItem(rownum, 6, QTableWidgetItem(building[7]))&#xa;            table.setItem(rownum, 7, QTableWidgetItem(building[8]))&#xa;        dialog.show()&#xa;    else:&#xa;        showMessage('Budynki przynależne do działki', 'Brak obiektów do wyświetlenia')&#xa;else:&#xa;    showMessage('Budynki przynależne do działki', 'Do projektu nie została wczytana warstwa relacji lub budynków, utworzenie raportu jest niemożliwe')" id="{37f20ec3-d7c9-41f1-8c2e-dea93d92f2fe}" shortTitle="Wyświetl budynki przynależne do działki " notificationMessage="" name="Wyświetl budynki przynależne do działki " type="1" capture="0" icon="">
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
    </actionsetting>
    <actionsetting isEnabledOnlyWhenEditable="0" action="from qgis.PyQt.QtCore import Qt, QSize&#xa;from qgis.PyQt.QtWidgets import QDialog, QTableWidget, QHeaderView, QTableWidgetItem, QPushButton, QFileDialog,\&#xa;    QMessageBox, QVBoxLayout, QHBoxLayout, QSpacerItem, QSizePolicy&#xa;import re&#xa;import pandas as pd&#xa;&#xa;ownership_map = {'1': 'wlasnosc',&#xa;                 '2': 'wladanieSamoistne'}&#xa;&#xa;possession_map = {'1': 'użytkowanie wieczyste',&#xa;                   '2': 'trwały zarząd',&#xa;                   '3': 'zarząd',&#xa;                   '4': 'użytkowanie',&#xa;                   '5': 'inny rodzaj władania',&#xa;                   '6': 'wykonywanie prawa własności Skarbu Państwa i innych praw rzeczowych',&#xa;                   '7': 'gospodarowanie zasobem nieruchomości SP albo gminnym, powiatowym lub wojewódzkim zasobem nieruchomości',&#xa;                   '8': 'gospodarowanie gruntami SP pokrytymi wodami powierzchniowymi',&#xa;                   '9': 'wykonywanie zadań zarządcy dróg publicznych'}&#xa;&#xa;def configureDialog():&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Właściciele działki ewidencyjnej')&#xa;    dialog.setMinimumSize(QSize(1200, 405))&#xa;    layout = QVBoxLayout()&#xa;    button_layout = QHBoxLayout()&#xa;    csv_button = createButton(dialog, 'Eksport do csv', toCsv)&#xa;    excel_button = createButton(dialog, 'Eksport do excela', toExcel)&#xa;    button_layout.addWidget(csv_button)&#xa;    button_layout.addWidget(excel_button)&#xa;    button_layout.addItem(QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum))&#xa;    layout.addLayout(button_layout)&#xa;    table = QTableWidget(0, 9)&#xa;    horizontal_header = table.horizontalHeader()&#xa;    horizontal_header.setSectionResizeMode(QHeaderView.Stretch)&#xa;    horizontal_header.hideSection(8)&#xa;    table.verticalHeader().setSectionResizeMode(QHeaderView.ResizeToContents)&#xa;    table.setHorizontalHeaderLabels(&#xa;        ['Id działki', 'Właściciel', 'Rodzaj prawa', 'Udział', 'Ulica', 'Numer', 'Kod Pocztowy', 'Miejscowość', 'Geometria'])&#xa;    table.itemSelectionChanged.connect(zoomToSelectedField)&#xa;    layout.addWidget(table)&#xa;    dialog.setLayout(layout)&#xa;    return dialog, table&#xa;&#xa;def createButton(dialog, text, func):&#xa;    button = QPushButton(dialog)&#xa;    button.setText(text)&#xa;    button.clicked.connect(func)&#xa;    return button&#xa;&#xa;&#xa;def zoomToSelectedField():&#xa;    for field_layer in project.mapLayersByName('[% @layer_name %]'):&#xa;        if field_layer.id() == '[% @layer_id %]':&#xa;            field_layer.removeSelection()&#xa;            field_layer.select(int(table.item(table.currentRow(),0).whatsThis()))&#xa;            iface.mapCanvas().zoomToSelected(field_layer)&#xa;&#xa;def showMessage(title, text):&#xa;    mbox = QMessageBox(dialog)&#xa;    mbox.setWindowTitle(title)&#xa;    mbox.setText(text)&#xa;    mbox.exec()&#xa;&#xa;def toCsv():&#xa;    path, ok = QFileDialog.getSaveFileName(dialog, 'Wybierz plik', '', 'Comma Separated Values (*.csv)')&#xa;    if ok:&#xa;        df = prepareExportData()&#xa;        df.to_csv(path, sep=';')&#xa;        showMessage('Właściciele działki',&#xa;                    '&lt;p>Zestawienie zostało zapisane w lokalizacji:&lt;/p>'&#xa;                    '&lt;p>&lt;i>%s&lt;/i>&lt;/p>' % path)&#xa;&#xa;def toExcel():&#xa;    path, ok = QFileDialog.getSaveFileName(dialog, 'Wybierz plik', '', 'Excel (*.xlsx)')&#xa;    if ok:&#xa;        df = prepareExportData()&#xa;        with pd.ExcelWriter(path) as writer:&#xa;            df.to_excel(writer, sheet_name='Właściciele działki', index=False)&#xa;        showMessage('Właściciele działki ewidencyjnej',&#xa;                    '&lt;p>Zestawienie zostało zapisane w lokalizacji:&lt;/p>'&#xa;                    '&lt;p>&lt;i>%s&lt;/i>&lt;/p>' % path)&#xa;&#xa;def prepareExportData():&#xa;    data = []&#xa;    for row in range(table.rowCount()):&#xa;        rowData = []&#xa;        for column in range(table.columnCount()):&#xa;            widgetItem = table.item(row, column)&#xa;            if widgetItem and widgetItem.text:&#xa;                rowData.append(widgetItem.text())&#xa;            else:&#xa;                rowData.append('NULL')&#xa;        data.append(rowData)&#xa;    df = pd.DataFrame(data)&#xa;    df.columns = ['Id działki', 'Właściciel', 'Rodzaj prawa', 'Udział', 'Ulica', 'Numer', 'Kod Pocztowy', 'Miejscowość', 'Geometria']&#xa;    return df&#xa;&#xa;def getLayer(lname):&#xa;    try:&#xa;        return project.mapLayersByName(lname)[0]&#xa;    except:&#xa;        global missing_layers_message&#xa;        missing_layers_message += '&lt;p>Do projektu nie została wczytana warstwa %s&lt;/p>' % lname&#xa;&#xa;def getRelation(lname, relname, one_to_many=False):&#xa;    if one_to_many:&#xa;        relation = [None, None]&#xa;    else:&#xa;        relation = ''&#xa;    for relation_feature in relations_layer.getFeatures(&quot;Warstwa = '%s' AND Relacja = '%s'&quot; % (lname, relname)):&#xa;        attribute = relation_feature.attribute(&quot;Atrybut&quot;)&#xa;        if one_to_many:&#xa;            if relation[0]:&#xa;                relation[1] = attribute&#xa;            else:&#xa;                relation[0] = attribute&#xa;        else:&#xa;            relation = attribute&#xa;    return relation&#xa;&#xa;def getFeatureValue(f, a):&#xa;    try:&#xa;        v = f.attribute(a)&#xa;        if v == NULL or v.strip() == '':&#xa;            v = ' '&#xa;    except:&#xa;        v = ' '&#xa;    return v&#xa;&#xa;iface = qgis.utils.iface&#xa;missing_layers_message = ''&#xa;project = QgsProject().instance()&#xa;address_layer_name = 'EGB_AdresPodmiotu'&#xa;&#xa;jrg_layer = getLayer('EGB_JednostkaRejestrowaGruntow')&#xa;ownership_layer = getLayer('EGB_UdzialWeWlasnosci')&#xa;possession_layer = getLayer('EGB_UdzialWeWladaniu')&#xa;owner_single_layer = getLayer('EGB_OsobaFizyczna')&#xa;owner_marriage_layer = getLayer('EGB_Malzenstwo')&#xa;owner_institution_layer = getLayer('EGB_Instytucja')&#xa;owner_group_layer = getLayer('EGB_PodmiotGrupowy')&#xa;subject_address_layer = getLayer(address_layer_name)&#xa;if subject_address_layer is None:&#xa;    address_layer_name = 'EGB_AdresZameldowania'&#xa;    subject_address_layer = getLayer(address_layer_name)&#xa;property_address_layer = getLayer('EGB_AdresNieruchomosci')&#xa;relations_layer = getLayer('relacje')&#xa;&#xa;dialog, table = configureDialog()&#xa;if relations_layer:&#xa;    if missing_layers_message != '':&#xa;        showMessage('Właściciele działki ewidencyjnej', '%s&lt;p>Raport może nie zawierać pełej informacji&lt;/p>' % missing_layers_message)&#xa;    field_address_relation = getRelation('EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_AdresNieruchomosci')&#xa;    field_jrg_relation = getRelation('EGB_DzialkaEwidencyjna_powierzchnia', 'EGB_JednostkaRejestrowaGruntow')&#xa;    ownership_jrg_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_JednostkaRejestrowaGruntow')&#xa;    ownership_single_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_OsobaFizyczna')&#xa;    ownership_marriage_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_Malzenstwo')&#xa;    ownership_intitution_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_Instytucja')&#xa;    ownership_group_owner_relation = getRelation('EGB_UdzialWeWlasnosci', 'EGB_PodmiotGrupowy')&#xa;    ownership_address_relation = getRelation('EGB_UdzialWeWlasnosci', address_layer_name)&#xa;    possession_jrg_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_JednostkaRejestrowaGruntow')&#xa;    possession_single_owner_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_OsobaFizyczna')&#xa;    possession_marriage_owner_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_Malzenstwo')&#xa;    possession_intitution_owner_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_Instytucja')&#xa;    possession_group_owner_relation = getRelation('EGB_UdzialWeWladaniu', 'EGB_PodmiotGrupowy')&#xa;    possession_address_relation = getRelation('EGB_UdzialWeWladaniu', address_layer_name)&#xa;    single_owner_address_relation = getRelation('EGB_OsobaFizyczna', address_layer_name)&#xa;    institution_owner_address_relation = getRelation('EGB_Instytucja', address_layer_name)&#xa;    group_owner_single_owner_relation = getRelation('EGB_PodmiotGrupowy', 'EGB_OsobaFizyczna')&#xa;    marriage_owner_single_owner_relation = getRelation('EGB_Malzenstwo', 'EGB_OsobaFizyczna', True)&#xa;&#xa;    ownerships = []&#xa;    field_id = ' '&#xa;    for field_layer in project.mapLayersByName('[% @layer_name %]'):&#xa;        if field_layer.id() == '[% @layer_id %]':&#xa;            field_feature = field_layer.getFeature([% $id %])&#xa;            field_geom = field_feature.geometry()&#xa;            field_geom_wkt = field_geom.asWkt() if not (field_geom.isNull() or field_geom.isEmpty()) else ''&#xa;            field_id = getFeatureValue(field_feature, 'idDzialki')&#xa;            jrg_ids = getFeatureValue(field_feature, field_jrg_relation)&#xa;            for jrg_id in jrg_ids.split(', '):&#xa;                jrg_iter = jrg_layer.getFeatures(&quot;gml_id = '%s'&quot; % jrg_id) if jrg_layer else []&#xa;                for jrg_feature in jrg_iter:&#xa;                    jrg_identity = getFeatureValue(jrg_feature, 'idJednostkiRejestrowej')&#xa;                    jrg_code = re.sub('^(.*)G(.*)$', r'G.\2', jrg_identity)&#xa;                    registration_group = getFeatureValue(jrg_feature, &quot;grupaRejestrowa&quot;)&#xa;                possesion_iter = possession_layer.getFeatures(possession_jrg_relation + &quot; LIKE '%&quot; + jrg_id + &quot;%'&quot;) if possession_layer else []&#xa;                for ownership_feature in possesion_iter:&#xa;                    possession_law = possession_map.get(getFeatureValue(ownership_feature, 'rodzajWladania'), ' ')&#xa;                    ownership_share = getFeatureValue(ownership_feature, 'licznikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    denominator = getFeatureValue(ownership_feature, 'mianownikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    if denominator != ' ':&#xa;                        ownership_share += '/%s' % denominator&#xa;                    ownership_single = getFeatureValue(ownership_feature, possession_single_owner_relation)&#xa;                    ownership_marriage = getFeatureValue(ownership_feature, possession_marriage_owner_relation)&#xa;                    ownership_institution = getFeatureValue(ownership_feature, possession_intitution_owner_relation)&#xa;                    ownership_group = getFeatureValue(ownership_feature, possession_group_owner_relation)&#xa;                    ownership_address = ' '&#xa;                    address_iter = subject_address_layer.getFeatures(&#xa;                        &quot;gml_id = '%s'&quot; % getFeatureValue(ownership_feature,&#xa;                                                          possession_address_relation)) if subject_address_layer else []&#xa;                    for address_feature in address_iter:&#xa;                        place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                        street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                        house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                        apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                        postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                        ownership_address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (&#xa;                        place, street, house_number, apartment_number, postal_code)&#xa;                    if ownership_single != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_single.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_single_layer else []&#xa;                        for owner_feature in owner_single_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'pierwszeImie')&#xa;                            surname_first = getFeatureValue(owner_feature, 'pierwszyCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                            surname_second = getFeatureValue(owner_feature, 'drugiCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                            address_iter = subject_address_layer.getFeatures(&#xa;                                &quot;gml_id = '%s'&quot; % getFeatureValue(owner_feature, single_owner_address_relation)) if subject_address_layer else []&#xa;                            if ownership_address == ' ':&#xa;                                place = street = house_number = postal_code = ''&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    house_number += '/%s' % apartment_number if apartment_number != ' ' else ''&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                            ownerships.append((owner, possession_law, ownership_share, street, house_number, postal_code, place))&#xa;                    elif ownership_marriage != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_marriage.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_marriage_iter = owner_marriage_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_marriage_layer else []&#xa;                        for owner_feature in owner_marriage_iter:&#xa;                            marriage_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, marriage_owner_single_owner_relation[0])&#xa;                            marriage_partner = getFeatureValue(owner_feature, marriage_owner_single_owner_relation[1])&#xa;                            marriage_ids = &quot;%s, '%s'&quot; % (&#xa;                            marriage_ids, marriage_partner) if marriage_ids != ' ' else &quot;'%s'&quot; % marriage_partner&#xa;                            owners = ''&#xa;                            addresses_ids = []&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&#xa;                                &quot;gml_id in (%s)&quot; % marriage_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                owners += owner if owners == '' else &quot;\n\n%s&quot; % owner&#xa;                                addresses_ids.append(getFeatureValue(owner_sub_feature, single_owner_address_relation))&#xa;                            if ownership_address == ' ':&#xa;                                address_iter = subject_address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if subject_address_layer else []&#xa;                                streets = house_numbers = postal_codes = places = ''&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    house_number += '/%s' % apartment_number if apartment_number != ' ' else ''&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                    streets += street if streets == '' else &quot;\n\n%s&quot; % street&#xa;                                    house_numbers += house_number if house_numbers == '' else &quot;\n\n%s&quot; % house_number&#xa;                                    postal_codes += postal_code if postal_codes == '' else &quot;\n\n%s&quot; % postal_code&#xa;                                    places += place if places == '' else &quot;\n\n%s&quot; % place&#xa;                                ownerships.append((owners, possession_law, ownership_share, streets, house_numbers, postal_codes, places))&#xa;                            else:&#xa;                                ownerships.append((owners, possession_law, ownership_share, street, house_number, postal_code, place))&#xa;                    elif ownership_institution != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_institution.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_institution_iter = owner_institution_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_institution_layer else []&#xa;                        for owner_feature in owner_institution_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'nazwaPelna')&#xa;                            address_iter = subject_address_layer.getFeatures(&#xa;                                &quot;gml_id = '%s'&quot; % getFeatureValue(owner_feature, institution_owner_address_relation)) if subject_address_layer else []&#xa;                            if ownership_address == ' ':&#xa;                                place = street = house_number = postal_code = ''&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    house_number += '/%s' % apartment_number if apartment_number != ' ' else ''&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                            ownerships.append((owner, possession_law, ownership_share, street, house_number, postal_code, place))&#xa;                    elif ownership_group != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_group.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_group_iter = owner_group_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_group_layer else []&#xa;                        for owner_feature in owner_group_iter:&#xa;                            group_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, group_owner_single_owner_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                            owners = []&#xa;                            addresses_ids = []&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id in (%s)&quot; % group_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                if ownership_address == ' ':&#xa;                                    owners.append(owner)&#xa;                                    addresses_ids.append(getFeatureValue(owner_sub_feature, single_owner_address_relation))&#xa;                                else:&#xa;                                    ownerships.append((owner, possession_law, ownership_share, street, house_number,postal_code, place))&#xa;                            c = 0&#xa;                            address_iter = subject_address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if subject_address_layer else []&#xa;                            for address_feature in address_iter:&#xa;                                place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                house_number += '/%s' % apartment_number if apartment_number != ' ' else ''&#xa;                                postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                ownerships.append((owners[c], possession_law, ownership_share, street, house_number, postal_code, place))&#xa;                                c += 1&#xa;                ownership_iter = ownership_layer.getFeatures(ownership_jrg_relation + &quot; LIKE '%&quot; + jrg_id + &quot;%'&quot;) if ownership_layer else []&#xa;                for ownership_feature in ownership_iter:&#xa;                    ownership_law = ownership_map.get(getFeatureValue(ownership_feature, 'rodzajPrawa'), ' ')&#xa;                    ownership_share = getFeatureValue(ownership_feature, 'licznikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    denominator = getFeatureValue(ownership_feature, 'mianownikUlamkaOkreslajacegoWartoscUdzialu')&#xa;                    if denominator != ' ':&#xa;                        ownership_share += '/%s' % denominator&#xa;                    ownership_single = getFeatureValue(ownership_feature, ownership_single_owner_relation)&#xa;                    ownership_marriage = getFeatureValue(ownership_feature, ownership_marriage_owner_relation)&#xa;                    ownership_institution = getFeatureValue(ownership_feature, ownership_intitution_owner_relation)&#xa;                    ownership_group = getFeatureValue(ownership_feature, ownership_group_owner_relation)&#xa;                    ownership_address = ' '&#xa;                    address_iter = subject_address_layer.getFeatures(&#xa;                        &quot;gml_id = '%s'&quot; % getFeatureValue(ownership_feature,&#xa;                                                          ownership_address_relation)) if subject_address_layer else []&#xa;                    for address_feature in address_iter:&#xa;                        place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                        street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                        house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                        apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                        postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                        ownership_address = 'miejscowość: %s&lt;br>ulica: %s&lt;br>numer domu: %s&lt;br>numer lokalu: %s&lt;br>kod pocztowy: %s' % (&#xa;                        place, street, house_number, apartment_number, postal_code)&#xa;                    if ownership_single != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_single.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_single_layer else []&#xa;                        for owner_feature in owner_single_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'pierwszeImie')&#xa;                            surname_first = getFeatureValue(owner_feature, 'pierwszyCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                            surname_second = getFeatureValue(owner_feature, 'drugiCzlonNazwiska')&#xa;                            owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                            address_iter = subject_address_layer.getFeatures(&#xa;                                &quot;gml_id = '%s'&quot; % getFeatureValue(owner_feature, single_owner_address_relation)) if subject_address_layer else []&#xa;                            if ownership_address == ' ':&#xa;                                place = street = house_number = postal_code = ''&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    house_number += '/%s' % apartment_number if apartment_number != ' ' else ''&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                            ownerships.append((owner, ownership_law, ownership_share, street, house_number, postal_code, place))&#xa;                    elif ownership_marriage != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_marriage.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_marriage_iter = owner_marriage_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_marriage_layer else []&#xa;                        for owner_feature in owner_marriage_iter:&#xa;                            marriage_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, marriage_owner_single_owner_relation[0])&#xa;                            marriage_partner = getFeatureValue(owner_feature, marriage_owner_single_owner_relation[1])&#xa;                            marriage_ids = &quot;%s, '%s'&quot; % (marriage_ids, marriage_partner) if marriage_ids != ' ' else &quot;'%s'&quot; % marriage_partner&#xa;                            owners = ''&#xa;                            addresses_ids = []&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id in (%s)&quot; % marriage_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner,surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                owners += owner if owners == '' else &quot;\n\n%s&quot; % owner&#xa;                                addresses_ids.append(getFeatureValue(owner_sub_feature, single_owner_address_relation))&#xa;                            if ownership_address == ' ':&#xa;                                streets = house_numbers = postal_codes = places = ''&#xa;                                address_iter = subject_address_layer.getFeatures(&#xa;                                    'gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if subject_address_layer else []&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    house_number += '/%s' % apartment_number if apartment_number != ' ' else ''&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                    streets += street if streets == '' else &quot;\n\n%s&quot; % street&#xa;                                    house_numbers += house_number if house_numbers == '' else &quot;\n\n%s&quot; % house_number&#xa;                                    postal_codes += postal_code if postal_codes == '' else &quot;\n\n%s&quot; % postal_code&#xa;                                    places += place if places == '' else &quot;\n\n%s&quot; % place&#xa;                                ownerships.append((owners, ownership_law, ownership_share, streets, house_numbers, postal_codes, places))&#xa;                            else:&#xa;                                ownerships.append((owners, ownership_law, ownership_share, street, house_number, postal_code, place))&#xa;                    elif ownership_institution != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_institution.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_institution_iter = owner_institution_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_institution_layer else []&#xa;                        for owner_feature in owner_institution_iter:&#xa;                            owner = getFeatureValue(owner_feature, 'nazwaPelna')&#xa;                            address_iter = subject_address_layer.getFeatures(&quot;gml_id = '%s'&quot; % getFeatureValue(owner_feature, institution_owner_address_relation)) if subject_address_layer else []&#xa;                            if ownership_address == ' ':&#xa;                                place = street = house_number = postal_code = ''&#xa;                                for address_feature in address_iter:&#xa;                                    place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                    street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                    house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                    apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                    house_number += '/%s' % apartment_number if apartment_number != ' ' else ''&#xa;                                    postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                            ownerships.append((owner, ownership_law, ownership_share, street, house_number, postal_code, place))&#xa;                    elif ownership_group != ' ':&#xa;                        owner_ids = &quot;'%s'&quot; % ownership_group.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                        owner_group_iter = owner_group_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids) if owner_group_layer else []&#xa;                        for owner_feature in owner_group_iter:&#xa;                            group_ids = &quot;'%s'&quot; % getFeatureValue(owner_feature, group_owner_single_owner_relation).replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                            owners = []&#xa;                            addresses_ids = []&#xa;                            owner_single_iter = owner_single_layer.getFeatures(&quot;gml_id in (%s)&quot; % group_ids) if owner_single_layer else []&#xa;                            for owner_sub_feature in owner_single_iter:&#xa;                                owner = getFeatureValue(owner_sub_feature, 'pierwszeImie')&#xa;                                surname_first = getFeatureValue(owner_sub_feature, 'pierwszyCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_first) if surname_first != ' ' else owner&#xa;                                surname_second = getFeatureValue(owner_sub_feature, 'drugiCzlonNazwiska')&#xa;                                owner = '%s %s' % (owner, surname_second) if surname_second != ' ' else owner&#xa;                                if ownership_address == ' ':&#xa;                                    owners.append(owner)&#xa;                                    addresses_ids.append(getFeatureValue(owner_sub_feature, single_owner_address_relation))&#xa;                                else:&#xa;                                    ownerships.append((owner, ownership_law, ownership_share, street, house_number, postal_code, place))&#xa;                            c = 0&#xa;                            address_iter = subject_address_layer.getFeatures('gml_id in(\'%s\')' % '\', \''.join(addresses_ids)) if subject_address_layer else []&#xa;                            for address_feature in address_iter:&#xa;                                place = getFeatureValue(address_feature, &quot;miejscowosc&quot;)&#xa;                                street = getFeatureValue(address_feature, &quot;ulica&quot;)&#xa;                                house_number = getFeatureValue(address_feature, &quot;numerPorzadkowy&quot;)&#xa;                                apartment_number = getFeatureValue(address_feature, &quot;numerLokalu&quot;)&#xa;                                house_number += '/%s' % apartment_number if apartment_number != ' ' else ''&#xa;                                postal_code = getFeatureValue(address_feature, &quot;kodPocztowy&quot;)&#xa;                                ownerships.append((owners[c], ownership_law, ownership_share, street, house_number, postal_code, place))&#xa;                                c += 1&#xa;    if len(ownerships) > 0:&#xa;        for ownership in ownerships:&#xa;            rownum = table.rowCount()&#xa;            table.insertRow(rownum)&#xa;            field_id_item = QTableWidgetItem(field_id)&#xa;            field_id_item.setWhatsThis(str([% $id %]))&#xa;            table.setItem(rownum, 0, field_id_item)&#xa;            table.setItem(rownum, 1, QTableWidgetItem(ownership[0]))&#xa;            table.setItem(rownum, 2, QTableWidgetItem(ownership[1]))&#xa;            table.setItem(rownum, 3, QTableWidgetItem(ownership[2]))&#xa;            table.setItem(rownum, 4, QTableWidgetItem(ownership[3]))&#xa;            table.setItem(rownum, 5, QTableWidgetItem(ownership[4]))&#xa;            table.setItem(rownum, 6, QTableWidgetItem(ownership[5]))&#xa;            table.setItem(rownum, 7, QTableWidgetItem(ownership[6]))&#xa;            table.setItem(rownum, 8, QTableWidgetItem(field_geom_wkt))&#xa;        dialog.show()&#xa;    else:&#xa;        showMessage('Właściciele działki ewidencyjnej', 'Brak obiektów do wyświetlenia')&#xa;else:&#xa;    showMessage('Właściciele działki ewidencyjnej',&#xa;                'Do projektu nie została wczytana warstwa relacji, utworzenie raportu jest niemożliwe')" id="{7cd909f3-0128-4489-a857-570153539c19}" shortTitle="Właściciele działki ewidencyjnej " notificationMessage="" name="Właściciele działki ewidencyjnej " type="1" capture="0" icon="">
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <layerGeometryType>2</layerGeometryType>
</qgis>
