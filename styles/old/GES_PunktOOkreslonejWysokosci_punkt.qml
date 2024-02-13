<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling|Actions" version="3.22.12-Białowieża" labelsEnabled="1">
  <renderer-v2 symbollevels="0" forceraster="0" type="RuleRenderer" enableorderby="0" referencescale="-1">
    <rules key="{3ca2be87-9416-4126-b7df-1063d3c95cd7}">
      <rule scalemindenom="1" scalemaxdenom="1001" label="punkt o określonej wysokości SUPS_0x" symbol="0" key="{2c714b7a-d6d1-4973-a97a-73eaf98a0501}"/>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" class="GeometryGenerator" pass="0" locked="0">
          <Option type="Map">
            <Option name="SymbolType" type="QString" value="Line"/>
            <Option name="geometryModifier" type="QString" value=" geom_from_wkt(  &quot;KR_ObiektKarto_odnosnik&quot; )"/>
            <Option name="units" type="QString" value="MapUnit"/>
          </Option>
          <prop k="SymbolType" v="Line"/>
          <prop k="geometryModifier" v=" geom_from_wkt(  &quot;KR_ObiektKarto_odnosnik&quot; )"/>
          <prop k="units" v="MapUnit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@0" clip_to_extent="1" force_rhr="0" type="line" alpha="1">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" class="SimpleLine" pass="0" locked="0">
              <Option type="Map">
                <Option name="align_dash_pattern" type="QString" value="0"/>
                <Option name="capstyle" type="QString" value="square"/>
                <Option name="customdash" type="QString" value="5;2"/>
                <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="customdash_unit" type="QString" value="MM"/>
                <Option name="dash_pattern_offset" type="QString" value="0"/>
                <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
                <Option name="draw_inside_polygon" type="QString" value="0"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="line_color" type="QString" value="10,9,9,255"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.09"/>
                <Option name="line_width_unit" type="QString" value="RenderMetersInMapUnits"/>
                <Option name="offset" type="QString" value="0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="ring_filter" type="QString" value="0"/>
                <Option name="trim_distance_end" type="QString" value="0"/>
                <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_end_unit" type="QString" value="MM"/>
                <Option name="trim_distance_start" type="QString" value="0"/>
                <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="trim_distance_start_unit" type="QString" value="MM"/>
                <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
                <Option name="use_custom_dash" type="QString" value="0"/>
                <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
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
              <prop k="line_color" v="10,9,9,255"/>
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
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineWidth" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="IF(@map_scale &lt;= 500, 0.09, 0.18)"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
          <Option type="Map">
            <Option name="angle" type="QString" value="0"/>
            <Option name="cap_style" type="QString" value="square"/>
            <Option name="color" type="QString" value="10,9,9,255"/>
            <Option name="horizontal_anchor_point" type="QString" value="1"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="name" type="QString" value="circle"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="10,9,9,0"/>
            <Option name="outline_style" type="QString" value="solid"/>
            <Option name="outline_width" type="QString" value="0"/>
            <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="scale_method" type="QString" value="diameter"/>
            <Option name="size" type="QString" value="0.09"/>
            <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="size_unit" type="QString" value="RenderMetersInMapUnits"/>
            <Option name="vertical_anchor_point" type="QString" value="1"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="10,9,9,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="10,9,9,0"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.09"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="RenderMetersInMapUnits"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="fillColor" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="getLayerColorOld(getHeightParentOld(@layer_id, @layer_name))"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="size" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="IF(@map_scale &lt;= 500, 0.09, 0.18)"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{4e6a2055-19ed-4981-b787-327e95660cf5}">
      <rule scalemindenom="1" scalemaxdenom="1001" key="{73e89744-922f-4310-b0b3-774b526af7ff}" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" description="KR_Etykieta">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" previewBkgrdColor="255,255,255,255" textOrientation="horizontal" blendMode="0" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[0] IS NULL, IF(&quot;rzednaGory&quot; IS NOT NULL AND &quot;rzednaDolu&quot; IS NULL, &quot;rzednaGory&quot;, IF(&quot;rzednaDolu&quot; IS NOT NULL AND &quot;rzednaGory&quot; IS NULL, &quot;rzednaDolu&quot;, IF(&quot;rzednaGory&quot; IS NOT NULL AND &quot;rzednaDolu&quot; IS NOT NULL, concat(&quot;rzednaGory&quot;, '&#xd;&#xa; ', &quot;rzednaDolu&quot;), ''))), wordwrap(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[0], 1, '\\n'))" useSubstitutions="0" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontLetterSpacing="0" fontWordSpacing="0" capitalization="0" legendString="Aa" multilineHeight="1" allowHtml="0" fontFamily="Arial" fontSizeUnit="MapUnit" fontWeight="50" fontStrikeout="0" isExpression="1" textColor="0,0,0,255" fontKerning="1" fontSize="0.75" fontItalic="0" textOpacity="1">
            <families/>
            <text-buffer bufferJoinStyle="128" bufferDraw="1" bufferColor="255,255,255,255" bufferNoFill="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferSize="0" bufferBlendMode="0" bufferSizeUnits="RenderMetersInMapUnits"/>
            <text-mask maskEnabled="0" maskJoinStyle="128" maskType="0" maskSizeUnits="MM" maskedSymbolLayers="" maskSize="1.5" maskOpacity="1" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRotation="0" shapeRadiiUnit="MM" shapeSVGFile="" shapeOffsetY="0" shapeOffsetUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeJoinStyle="64" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeSizeUnit="MM" shapeSizeX="0" shapeOffsetX="0" shapeBorderWidthUnit="MM" shapeSizeY="0" shapeBorderColor="128,128,128,255" shapeRadiiX="0" shapeSizeType="0" shapeFillColor="255,255,255,255" shapeBorderWidth="0" shapeRotationType="0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" class="SimpleMarker" pass="0" locked="0">
                  <Option type="Map">
                    <Option name="angle" type="QString" value="0"/>
                    <Option name="cap_style" type="QString" value="square"/>
                    <Option name="color" type="QString" value="213,180,60,255"/>
                    <Option name="horizontal_anchor_point" type="QString" value="1"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="name" type="QString" value="circle"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="35,35,35,255"/>
                    <Option name="outline_style" type="QString" value="solid"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="scale_method" type="QString" value="diameter"/>
                    <Option name="size" type="QString" value="2"/>
                    <Option name="size_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="size_unit" type="QString" value="MM"/>
                    <Option name="vertical_anchor_point" type="QString" value="1"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" type="QString" value=""/>
                    <Option name="properties"/>
                    <Option name="type" type="QString" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" class="SimpleFill" pass="0" locked="0">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="color" type="QString" value="255,255,255,255"/>
                    <Option name="joinstyle" type="QString" value="bevel"/>
                    <Option name="offset" type="QString" value="0,0"/>
                    <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                    <Option name="offset_unit" type="QString" value="MM"/>
                    <Option name="outline_color" type="QString" value="128,128,128,255"/>
                    <Option name="outline_style" type="QString" value="no"/>
                    <Option name="outline_width" type="QString" value="0"/>
                    <Option name="outline_width_unit" type="QString" value="MM"/>
                    <Option name="style" type="QString" value="solid"/>
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
                      <Option name="name" type="QString" value=""/>
                      <Option name="properties"/>
                      <Option name="type" type="QString" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowUnder="0" shadowOffsetAngle="135" shadowColor="0,0,0,255" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.69999999999999996" shadowOffsetDist="1" shadowRadiusUnit="MM" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowScale="100" shadowDraw="0"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" useMaxLineLengthForAutoWrap="1" wrapChar="" multilineAlign="0" placeDirectionSymbol="0" autoWrapLength="0" rightDirectionSymbol=">" reverseDirectionSymbol="0" decimals="3" plussign="0" addDirectionSymbol="0" formatNumbers="0"/>
          <placement maxCurvedCharAngleIn="25" centroidWhole="0" lineAnchorType="0" overrunDistanceUnit="MM" fitInPolygonOnly="0" quadOffset="8" geometryGeneratorType="PointGeometry" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="10" geometryGeneratorEnabled="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" rotationAngle="0" layerType="PointGeometry" yOffset="0" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[1])" centroidInside="0" xOffset="0" repeatDistance="0" preserveRotation="1" lineAnchorPercent="0.5" dist="0" polygonPlacementFlags="2" placement="1" repeatDistanceUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" offsetType="0" distUnits="MM" rotationUnit="AngleDegrees" lineAnchorClipping="0" overrunDistance="0"/>
          <rendering limitNumLabels="0" minFeatureSize="0" mergeLines="0" scaleMin="0" obstacle="1" zIndex="0" obstacleFactor="1" scaleMax="0" displayAll="1" upsidedownLabels="0" labelPerPart="0" obstacleType="1" fontMinPixelSize="3" drawLabels="1" fontLimitPixelSize="0" unplacedVisibility="0" maxNumLabels="2000" scaleVisibility="1" fontMaxPixelSize="10000"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[0] = 'true'"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[0], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[1], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[2]) IS NULL, getLayerColorOld(getHeightParentOld(@layer_id, @layer_name)), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[0], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[1], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[2]))"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[0]"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[0] = 'true'"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[0]) - 90"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" type="bool" value="false"/>
                  <Option name="type" type="int" value="1"/>
                  <Option name="val" type="QString" value=""/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot; + 1"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[0] = 'true'"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" type="QString" value="pole_of_inaccessibility"/>
              <Option name="blendMode" type="int" value="0"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
              <Option name="drawToAllParts" type="bool" value="false"/>
              <Option name="enabled" type="QString" value="0"/>
              <Option name="labelAnchorPoint" type="QString" value="point_on_exterior"/>
              <Option name="lineSymbol" type="QString" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option name="minLength" type="double" value="0"/>
              <Option name="minLengthMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="minLengthUnit" type="QString" value="MM"/>
              <Option name="offsetFromAnchor" type="double" value="0"/>
              <Option name="offsetFromAnchorMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromAnchorUnit" type="QString" value="MM"/>
              <Option name="offsetFromLabel" type="double" value="0"/>
              <Option name="offsetFromLabelMapUnitScale" type="QString" value="3x:0,0,0,0,0,0"/>
              <Option name="offsetFromLabelUnit" type="QString" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction key="Canvas" value="{2fa07010-d45b-4210-a7b2-b7116c84f5cc}"/>
    <actionsetting name="Wyświetl obiekty archiwalne" shortTitle="Wyświetl obiekty archiwalne" notificationMessage="" type="1" capture="0" id="{2fa07010-d45b-4210-a7b2-b7116c84f5cc}" isEnabledOnlyWhenEditable="0" icon="" action="from qgis.PyQt.QtCore import Qt&#xa;from qgis.PyQt.QtGui import QCursor&#xa;from qgis.PyQt.QtWidgets import QApplication, QDialog, QTreeWidget, QTreeWidgetItem, QHeaderView, QMenu, QMessageBox&#xa;&#xa;&#xa;iface = qgis.utils.iface&#xa;&#xa;def configureDialog(layer_name):&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Obiekty archiwalne obiektu klasy %s' % layer_name)&#xa;    dialog.setMinimumWidth(600)&#xa;    dialog.setMinimumHeight(400)&#xa;    dialog.resizeEvent = adjustSize&#xa;    tree = QTreeWidget(dialog)&#xa;    tree.move(5, 5)&#xa;    tree.setColumnCount(1)&#xa;    tree.setHeaderHidden(True)&#xa;    tree.setAutoScroll(True)&#xa;    tree.header().setSectionResizeMode(0, QHeaderView.ResizeToContents)&#xa;    tree.itemDoubleClicked.connect(zoomToReference)&#xa;    tree.setContextMenuPolicy(Qt.CustomContextMenu)&#xa;    tree.customContextMenuRequested.connect(showMenu)&#xa;    return dialog, tree&#xa;&#xa;def adjustSize(event):&#xa;    width = event.size().width()&#xa;    height = event.size().height()&#xa;    tree.resize(width - 10, height - 10)&#xa;&#xa;def zoomToReference():&#xa;    current_item = tree.currentItem()&#xa;    if current_item.parent() is not None:&#xa;        layer_name = current_item.parent().text(0)&#xa;        identifier = current_item.text(0)&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            iface.mapCanvas().zoomToSelected(ref_layer)&#xa;&#xa;def showMenu():&#xa;    current_item = tree.currentItem()&#xa;    menu = QMenu('Menu', dialog)&#xa;    if current_item.data(1, 1) == 'href' and current_item is not None:&#xa;        menu.addAction('Identyfikuj')&#xa;        menu.addAction('Kopiuj identyfikator')&#xa;    action = menu.exec(QCursor.pos())&#xa;    if action is not None:&#xa;        executeMenuAction(action, current_item)&#xa;&#xa;def executeMenuAction(action, current_item):&#xa;    layer_name = current_item.parent().text(0)&#xa;    identifier = current_item.text(0)&#xa;    if action.text() == 'Identyfikuj':&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            for feature in ref_layer.selectedFeatures():&#xa;                iface.mapCanvas().zoomToSelected(ref_layer)&#xa;                iface.mapCanvas().waitWhileRendering()&#xa;                iface.openFeatureForm(ref_layer, feature)&#xa;    if action.text() == 'Kopiuj identyfikator':&#xa;        cb = QApplication.clipboard()&#xa;        cb.clear(mode=cb.Clipboard)&#xa;        cb.setText(identifier, mode=cb.Clipboard)&#xa;&#xa;def getRefLayerAndFields(layer_name):&#xa;    ref_layer = None&#xa;    field_names = {}&#xa;    layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;    if len(layers) == 1:&#xa;        ref_layer = layers[0]&#xa;        for field in ref_layer.fields():&#xa;            if field.comment() != '':&#xa;                field_names[field.name()] = field.comment()&#xa;    return ref_layer, field_names&#xa;&#xa;def getReferences(item, ref_layer, field_names):&#xa;    identifier = item.text(0)&#xa;    for feature in ref_layer.getFeatures(&quot;gml_id = '&quot; + identifier + &quot;'&quot;):&#xa;        for field_name in field_names.keys():&#xa;            field_value = feature.attribute(field_name)&#xa;            if field_value is not None and field_value:&#xa;                class_item = QTreeWidgetItem(item)&#xa;                class_item.setText(0, field_names[field_name])&#xa;                class_item.setData(1, 1, 'class')&#xa;                addReferences(class_item, field_value)&#xa;                tree.expandItem(class_item)&#xa;    for other_layer in QgsProject().instance().mapLayers().values():&#xa;        if other_layer.id() != ref_layer.id():&#xa;            for field in other_layer.fields():&#xa;                if field.comment() == ref_layer.name():&#xa;                    for other_feature in other_layer.getFeatures(&quot;\&quot;&quot; + field.displayName() + &quot;\&quot; LIKE '%&quot; + feature.attribute(&quot;gml_id&quot;) + &quot;%'&quot;):&#xa;                        class_item = QTreeWidgetItem(item)&#xa;                        class_item.setText(0, other_layer.name())&#xa;                        class_item.setData(1, 1, 'class')&#xa;                        addReferences(class_item, other_feature.attribute(&quot;gml_id&quot;))&#xa;                        tree.expandItem(class_item)&#xa;&#xa;def addReferences(class_item, field_value):&#xa;    for href in field_value.split(', '):&#xa;        ref_item = QTreeWidgetItem(class_item)&#xa;        ref_item.setText(0, href)&#xa;        ref_item.setData(1, 1, 'href')&#xa;&#xa;def showMessage(title, text):&#xa;    mbox = QMessageBox(dialog)&#xa;    mbox.setWindowTitle(title)&#xa;    mbox.setText(text)&#xa;    mbox.exec()&#xa;&#xa;project = QgsProject.instance()&#xa;layers = project.mapLayersByName('[% @layer_name %]')&#xa;for layer in layers:&#xa;    if layer.id() == '[% @layer_id %]':&#xa;        dialog, tree = configureDialog('[% @layer_name %]')&#xa;        feature = layer.getFeature([% $id %])&#xa;        has_archival = False&#xa;        archival_layer_name = '%s_ARCH' % layer.name()&#xa;        if len(project.mapLayersByName(archival_layer_name)) == 1:&#xa;            archival_layer = project.mapLayersByName('%s_ARCH' % layer.name())[0]&#xa;            for field in layer.fields():&#xa;                if 'lokalnyId' in field.name() != '':&#xa;                    field_value = feature.attribute(field.name())&#xa;                    for archival_feature in archival_layer.getFeatures('&quot;%s&quot; = \'%s\'' %(field.name(), field_value)):&#xa;                        archival_id = archival_feature.attribute(&quot;gml_id&quot;)&#xa;                        if archival_id is not None and archival_id:&#xa;                            has_archival = True&#xa;                            class_item = QTreeWidgetItem()&#xa;                            class_item.setText(0, archival_layer_name)&#xa;                            class_item.setData(1, 1, 'class')&#xa;                            tree.addTopLevelItem(class_item)&#xa;                            addReferences(class_item, archival_id)&#xa;            if has_archival:&#xa;                dialog.show()&#xa;            else:&#xa;                showMessage('Obiekty archiwalne', 'Wskazany obiekt nie ma obiektów archiwalnych')&#xa;        else:&#xa;            showMessage('Obiekty archiwalne', 'Do projektu nie została wczytana warstwa archiwalna %s' % archival_layer_name)">
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
    </actionsetting>
  </attributeactions>
  <layerGeometryType>0</layerGeometryType>
</qgis>
