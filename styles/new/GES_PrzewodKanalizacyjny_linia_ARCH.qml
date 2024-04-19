<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.12-Białowieża" labelsEnabled="1" styleCategories="Symbology|Labeling|Actions">
  <renderer-v2 forceraster="0" symbollevels="0" referencescale="-1" type="RuleRenderer" enableorderby="0">
    <rules key="{71b7bbce-494c-4b4c-a9ad-89f3ba342d8d}">
      <rule symbol="0" key="{8c80f01e-83b3-454a-b47d-edd8e6de6143}" filter=" &quot;status&quot; = 'i' OR &quot;status&quot; IS NULL" label="przewód kanalizacyjny SUKP" scalemindenom="1" scalemaxdenom="2001"/>
      <rule symbol="1" key="{9f7b1189-8c11-44ee-9db0-349f420427df}" filter=" &quot;status&quot; = 'p'" label="przewód kanalizacyjny SUKP-projektowany" scalemindenom="1" scalemaxdenom="2001"/>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" force_rhr="0" type="line" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
            <Option value="125,125,125,255" name="line_color" type="QString"/>
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
          <prop k="line_color" v="125,125,125,255"/>
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
                <Option name="enabled" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="array_max(array(IF(attribute('srednica') IS NOT NULL, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy'), to_int(&quot;wymiarPionowy&quot;), 0))) / @map_scale >= 1.5" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="offset" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="array_max(array(IF(attribute('srednica') IS NOT NULL AND attribute('srednica') > 750, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL AND attribute('wymiarPoziomy') > 750, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy') IS NOT NULL AND attribute('wymiarPionowy') > 750, to_int(&quot;wymiarPionowy&quot;), 0))) / (2 * @map_scale)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.09, IF(@map_scale &lt;= 1000, 0.18, 0.36))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
            <Option value="125,125,125,255" name="line_color" type="QString"/>
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
          <prop k="line_color" v="125,125,125,255"/>
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
                <Option name="enabled" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="array_max(array(IF(attribute('srednica') IS NOT NULL, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy'), to_int(&quot;wymiarPionowy&quot;), 0))) / @map_scale >= 1.5" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="offset" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-array_max(array(IF(attribute('srednica') IS NOT NULL AND attribute('srednica') > 750, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL AND attribute('wymiarPoziomy') > 750, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy') IS NOT NULL AND attribute('wymiarPionowy') > 750, to_int(&quot;wymiarPionowy&quot;), 0))) / (2 * @map_scale)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.09, IF(@map_scale &lt;= 1000, 0.18, 0.36))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
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
            <Option value="125,125,125,255" name="line_color" type="QString"/>
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
          <prop k="line_color" v="125,125,125,255"/>
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
                <Option name="enabled" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="array_max(array(IF(attribute('srednica') IS NOT NULL, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy'), to_int(&quot;wymiarPionowy&quot;), 0))) / @map_scale &lt; 1.5" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.09, IF(@map_scale &lt;= 1000, 0.18, 0.36))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" clip_to_extent="1" force_rhr="0" type="line" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option value="0" name="align_dash_pattern" type="QString"/>
            <Option value="square" name="capstyle" type="QString"/>
            <Option value="1.5;0.5" name="customdash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
            <Option value="RenderMetersInMapUnits" name="customdash_unit" type="QString"/>
            <Option value="0" name="dash_pattern_offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
            <Option value="0" name="draw_inside_polygon" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="125,125,125,255" name="line_color" type="QString"/>
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
            <Option value="1" name="use_custom_dash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="1.5;0.5"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="RenderMetersInMapUnits"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="125,125,125,255"/>
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
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, '1.5;0.5', IF(@map_scale &lt;= 1000, '3;1', IF(@map_scale &lt;= 2000, '6;2', '15;3')))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="enabled" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="array_max(array(IF(attribute('srednica') IS NOT NULL, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy'), to_int(&quot;wymiarPionowy&quot;), 0))) / @map_scale >= 1.5" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="offset" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="array_max(array(IF(attribute('srednica') IS NOT NULL AND attribute('srednica') > 750, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL AND attribute('wymiarPoziomy') > 750, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy') IS NOT NULL AND attribute('wymiarPionowy') > 750, to_int(&quot;wymiarPionowy&quot;), 0))) / (2 * @map_scale)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.09, IF(@map_scale &lt;= 1000, 0.18, 0.36))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option value="0" name="align_dash_pattern" type="QString"/>
            <Option value="square" name="capstyle" type="QString"/>
            <Option value="1.5;0.5" name="customdash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
            <Option value="RenderMetersInMapUnits" name="customdash_unit" type="QString"/>
            <Option value="0" name="dash_pattern_offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
            <Option value="0" name="draw_inside_polygon" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="125,125,125,255" name="line_color" type="QString"/>
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
            <Option value="1" name="use_custom_dash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="1.5;0.5"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="RenderMetersInMapUnits"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="125,125,125,255"/>
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
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, '1.5;0.5', IF(@map_scale &lt;= 1000, '3;1', IF(@map_scale &lt;= 2000, '6;2', '15;3')))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="enabled" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="array_max(array(IF(attribute('srednica') IS NOT NULL, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy'), to_int(&quot;wymiarPionowy&quot;), 0))) / @map_scale >= 1.5" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="offset" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="-array_max(array(IF(attribute('srednica') IS NOT NULL AND attribute('srednica') > 750, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL AND attribute('wymiarPoziomy') > 750, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy') IS NOT NULL AND attribute('wymiarPionowy') > 750, to_int(&quot;wymiarPionowy&quot;), 0))) / (2 * @map_scale)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.09, IF(@map_scale &lt;= 1000, 0.18, 0.36))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer enabled="1" locked="0" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option value="0" name="align_dash_pattern" type="QString"/>
            <Option value="square" name="capstyle" type="QString"/>
            <Option value="1.5;0.5" name="customdash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale" type="QString"/>
            <Option value="RenderMetersInMapUnits" name="customdash_unit" type="QString"/>
            <Option value="0" name="dash_pattern_offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="dash_pattern_offset_unit" type="QString"/>
            <Option value="0" name="draw_inside_polygon" type="QString"/>
            <Option value="bevel" name="joinstyle" type="QString"/>
            <Option value="125,125,125,255" name="line_color" type="QString"/>
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
            <Option value="1" name="use_custom_dash" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="width_map_unit_scale" type="QString"/>
          </Option>
          <prop k="align_dash_pattern" v="0"/>
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="1.5;0.5"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="RenderMetersInMapUnits"/>
          <prop k="dash_pattern_offset" v="0"/>
          <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="dash_pattern_offset_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="125,125,125,255"/>
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
          <prop k="use_custom_dash" v="1"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, '1.5;0.5', IF(@map_scale &lt;= 1000, '3;1', IF(@map_scale &lt;= 2000, '6;2', '15;3')))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="enabled" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="array_max(array(IF(attribute('srednica') IS NOT NULL, to_int(&quot;srednica&quot;), 0), IF(attribute('wymiarPoziomy') IS NOT NULL, to_int(&quot;wymiarPoziomy&quot;), 0), IF(attribute('wymiarPionowy'), to_int(&quot;wymiarPionowy&quot;), 0))) / @map_scale &lt; 1.5" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="outlineColor" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineStyle" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.09, IF(@map_scale &lt;= 1000, 0.18, 0.36))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{18ad2209-bacf-439d-a08c-173903a37faf}">
      <rule key="{30e48da6-5fa3-4904-89b4-fd1696bf86c3}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[0]), line_interpolate_point(intersection(@map_extent, $geometry), length(intersection(@map_extent, $geometry)) / 2))" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="IF(&quot;PrezentacjaGraficzna_geometria&quot;, -to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[0]), azimuth(line_interpolate_point(intersection(@map_extent, $geometry), length(intersection(@map_extent, $geometry)) / 2), line_interpolate_point(intersection(@map_extent, $geometry), length(intersection(@map_extent, $geometry)) / 2 + 0.1)) + radians(90))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{c3e4c545-0f76-4682-8f31-00641a7fe44f}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[1])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{859516b2-418a-456e-ac8c-7fd72cfa9c5c}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[2])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{d9f06566-f7fc-44a8-8449-7b527f881a56}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[3])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[3])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{5e2fc8e9-6b96-4738-b9b6-271e0cb8f9d9}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[4])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{b3fd91e0-9802-4f0f-8e38-637c65f48f47}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[5])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{57cb4ac0-78f9-4a32-bf20-6e8e5ec93f3c}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[6])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{5ea5e879-8ab3-489d-a5d4-53613a278e1a}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[7])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{912824b6-b87b-42f4-92be-ba99ad929f62}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[8])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{f3f46380-5dbd-4847-b0dd-0b1d714268c0}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[9])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{1a208976-b6f2-4172-93c3-6a53751e74c7}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[10])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[10])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{99243ab8-584e-4f54-bf4d-4fb5436b4e43}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[11])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[11])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{7d30d004-556b-4ccd-aa84-072bded825b2}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[12])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[12])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{934b3af0-5cba-4dad-96d6-db2d903ceefa}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[13])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[13])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{61832502-8eda-435f-a548-3c4caad76f38}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[14])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[14])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{7ad3ef85-1d19-422f-a760-deff7253e476}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[15])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[15])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{41d93838-8258-4d37-afd8-ccdd34c1b8c9}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[16])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[16])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{a0d9d51a-9220-485c-bb46-eaed477af05b}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[17])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[17])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{9c3dfebc-bda9-4467-8113-ddb638ddebbb}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[18])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[18])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
      <rule key="{d07a2cac-2b18-45c7-87d1-b670bbe1272b}" filter=" IF(&quot;PrezentacjaGraficzna_geometria&quot;, &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL, True)" scalemindenom="1" scalemaxdenom="2001" description="Prezentacja graficzna">
        <settings calloutType="simple">
          <text-style previewBkgrdColor="255,255,255,255" fontItalic="0" fontWeight="50" fontStrikeout="0" fontSizeUnit="RenderMetersInMapUnits" textColor="125,125,125,255" textOpacity="1" textOrientation="horizontal" fontSize="0.75" fontWordSpacing="0" useSubstitutions="0" multilineHeight="1" legendString="Aa" blendMode="0" fontFamily="Arial" fontLetterSpacing="0" isExpression="1" fontUnderline="0" namedStyle="Normal" fieldName="generateWireLabelNew( @layer_name )" fontSizeMapUnitScale="3x:0,0,0,0,0,0" capitalization="0" fontKerning="1" allowHtml="0">
            <families/>
            <text-buffer bufferSize="0.25" bufferSizeUnits="RenderMetersInMapUnits" bufferOpacity="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferNoFill="1" bufferJoinStyle="128"/>
            <text-mask maskType="0" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskSize="1.5" maskSizeUnits="MM" maskedSymbolLayers=""/>
            <background shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeOffsetY="0" shapeType="0" shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeBorderColor="125,125,125,255" shapeSizeY="0" shapeDraw="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSVGFile="" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeSizeType="0" shapeRadiiUnit="MM" shapeBorderWidth="0" shapeRadiiX="0" shapeOffsetX="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0">
              <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" type="marker" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option value="0" name="angle" type="QString"/>
                    <Option value="square" name="cap_style" type="QString"/>
                    <Option value="125,125,125,255" name="color" type="QString"/>
                    <Option value="1" name="horizontal_anchor_point" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="circle" name="name" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
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
              <symbol name="fillSymbol" clip_to_extent="1" force_rhr="0" type="fill" alpha="1">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" name="name" type="QString"/>
                    <Option name="properties"/>
                    <Option value="collection" name="type" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer enabled="1" locked="0" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                    <Option value="255,255,255,255" name="color" type="QString"/>
                    <Option value="bevel" name="joinstyle" type="QString"/>
                    <Option value="0,0" name="offset" type="QString"/>
                    <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                    <Option value="MM" name="offset_unit" type="QString"/>
                    <Option value="125,125,125,255" name="outline_color" type="QString"/>
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
                  <prop k="outline_color" v="125,125,125,255"/>
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
            <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetGlobal="1" shadowScale="100" shadowUnder="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowOffsetDist="1" shadowRadius="1.5" shadowDraw="0" shadowBlendMode="6" shadowColor="125,125,125,255" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" placeDirectionSymbol="0" reverseDirectionSymbol="0" plussign="0" autoWrapLength="0" formatNumbers="0" rightDirectionSymbol=">" leftDirectionSymbol="&lt;" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" multilineAlign="0"/>
          <placement lineAnchorClipping="0" centroidWhole="0" rotationUnit="AngleRadians" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" priority="5" rotationAngle="0" dist="0" layerType="LineGeometry" polygonPlacementFlags="2" maxCurvedCharAngleOut="-25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorEnabled="1" preserveRotation="1" lineAnchorType="0" centroidInside="0" distUnits="MM" quadOffset="4" offsetUnits="MM" lineAnchorPercent="0.5" xOffset="0" yOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" repeatDistance="0" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[19])" overrunDistance="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" offsetType="0" fitInPolygonOnly="0" overrunDistanceUnit="MM" placement="1" maxCurvedCharAngleIn="25" placementFlags="10" geometryGeneratorType="PointGeometry"/>
          <rendering fontLimitPixelSize="0" labelPerPart="0" obstacleFactor="1" minFeatureSize="0" scaleMax="0" obstacle="1" displayAll="1" zIndex="0" limitNumLabels="0" upsidedownLabels="0" unplacedVisibility="0" scaleVisibility="1" fontMinPixelSize="3" drawLabels="1" scaleMin="0" fontMaxPixelSize="10000" obstacleType="1" maxNumLabels="2000" mergeLines="0"/>
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
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="getLayerColorNew(@layer_name)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
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
                  <Option value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[19])" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF(@map_scale &lt;= 500, 0.75, IF(@map_scale &lt;= 1000, 1.5, IF(@map_scale &lt;= 2000, 3, 7.5)))" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option value="false" name="active" type="bool"/>
                  <Option value="1" name="type" type="int"/>
                  <Option value="" name="val" type="QString"/>
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
              <Option value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; type=&quot;line&quot; alpha=&quot;1&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; name=&quot;align_dash_pattern&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;square&quot; name=&quot;capstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;5;2&quot; name=&quot;customdash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;customdash_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;bevel&quot; name=&quot;joinstyle&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;60,60,60,255&quot; name=&quot;line_color&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;solid&quot; name=&quot;line_style&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0.3&quot; name=&quot;line_width&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;line_width_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;offset&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;offset_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;ring_filter&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_end&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;trim_distance_start&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;MM&quot; name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;0&quot; name=&quot;use_custom_dash&quot; type=&quot;QString&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; name=&quot;name&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; name=&quot;type&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol" type="QString"/>
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
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <layerGeometryType>1</layerGeometryType>
</qgis>
