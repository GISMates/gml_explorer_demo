<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.4-Białowieża" styleCategories="Symbology|Labeling|Actions" labelsEnabled="1">
  <renderer-v2 referencescale="-1" enableorderby="0" forceraster="0" symbollevels="0" type="RuleRenderer">
    <rules key="{b35af722-5cc3-4551-b2a3-fcd98ee65716}">
      <rule scalemindenom="1" symbol="0" filter="coalesce(&quot;istnienie&quot;, 'istniejacy') = 'istniejacy' AND &quot;rodzajBudowli&quot; = 'komoraPodziemna'" scalemaxdenom="1001" key="{eccf85ec-0830-43e7-b410-6c2a273c305f}" label="komora podziemna SUBP02_0x"/>
      <rule scalemindenom="1" symbol="1" filter="coalesce(&quot;istnienie&quot;, 'istniejacy') = 'istniejacy' AND &quot;rodzajBudowli&quot; = 'osadnik'" scalemaxdenom="2001" key="{85efca2c-4fff-480b-8831-9f6e60cd99c9}" label="osadnik SUBP03"/>
      <rule symbol="2" filter="coalesce(&quot;istnienie&quot;, 'istniejacy') = 'istniejacy' AND &quot;rodzajBudowli&quot; = 'przejsciePodziemne'" key="{639b0259-aa5c-42c3-88ae-70501585cd8a}" label="przejście podziemne SUBP05"/>
      <rule symbol="3" filter="coalesce(&quot;istnienie&quot;, 'istniejacy') = 'istniejacy' AND &quot;rodzajBudowli&quot; = 'tunelDrogowy'" key="{2d7c7ba5-d114-4d13-b6d3-8b7c3f4a2064}" label="tunel drogowy SUBP06"/>
      <rule symbol="4" filter="coalesce(&quot;istnienie&quot;, 'istniejacy') = 'istniejacy' AND &quot;rodzajBudowli&quot; = 'tunelKolejowy'" key="{fb7b2a7c-92f2-4c3c-8fac-a91a897fe13b}" label="tunel kolejowy SUBP07"/>
      <rule symbol="5" filter="coalesce(&quot;istnienie&quot;, 'istniejacy') = 'istniejacy' AND &quot;rodzajBudowli&quot; = 'tunelMetra'" key="{40b2b8ec-c730-4643-b593-06025fabfa1e}" label="tunel metra SUBP08"/>
      <rule symbol="6" filter="coalesce(&quot;istnienie&quot;, 'istniejacy') = 'istniejacy' AND &quot;rodzajBudowli&quot; = 'tunelTramwajowy'" key="{7d43d380-6a38-4023-8614-498331fe73ca}" label="tunel tramwajowy SUBP09"/>
      <rule symbol="7" filter="coalesce(&quot;istnienie&quot;, 'istniejacy') = 'istniejacy' AND &quot;rodzajBudowli&quot; = 'inna'" key="{e1bbd0e6-e7bb-47e1-9667-51ab62490544}" label="inna budowla podziemna SUBP10"/>
      <rule symbol="8" filter="coalesce(&quot;istnienie&quot;, 'istniejacy') IN('projektowany', 'wBudowie')" key="{afe29869-b057-4fb0-82f6-0b0505e2257b}" label="budowla podziemna - projektowana lub w budowie SUBP_P"/>
    </rules>
    <symbols>
      <symbol alpha="1" name="0" force_rhr="0" clip_to_extent="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="SimpleFill">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="243,166,178,0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="10,10,9,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.09" type="QString"/>
            <Option name="outline_width_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="243,166,178,0" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="10,10,9,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.09" k="outline_width"/>
          <prop v="RenderMetersInMapUnits" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="outlineColor" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="getLayerColorOld(  &quot;rodzajSieci&quot; )" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF( @map_scale &lt;= 500, 0.09, 0.18)" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" name="1" force_rhr="0" clip_to_extent="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="SimpleFill">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="color" value="243,166,178,0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="10,10,9,255" type="QString"/>
            <Option name="outline_style" value="solid" type="QString"/>
            <Option name="outline_width" value="0.09" type="QString"/>
            <Option name="outline_width_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="style" value="solid" type="QString"/>
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="243,166,178,0" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="10,10,9,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.09" k="outline_width"/>
          <prop v="RenderMetersInMapUnits" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="outlineWidth" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF( @map_scale &lt;= 500, 0.09, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 0.18, 0.36))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" name="2" force_rhr="0" clip_to_extent="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="1;0.5" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="10,10,9,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.09" type="QString"/>
            <Option name="line_width_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="1;0.5" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="RenderMetersInMapUnits" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="10,10,9,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.09" k="line_width"/>
          <prop v="RenderMetersInMapUnits" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF( @map_scale &lt;= 500, '1;0.5', IF( @map_scale > 500 AND @map_scale &lt;= 1000, '1.4;0.7', IF(@map_scale > 1000 AND @map_scale &lt;= 2000, '2.8;1.4', '5;2.5')))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.09, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.18, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 0.26, 0.65)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" name="3" force_rhr="0" clip_to_extent="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="1;0.5" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="10,10,9,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.09" type="QString"/>
            <Option name="line_width_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="1;0.5" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="RenderMetersInMapUnits" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="10,10,9,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.09" k="line_width"/>
          <prop v="RenderMetersInMapUnits" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF( @map_scale &lt;= 500, '1;0.5', IF( @map_scale > 500 AND @map_scale &lt;= 1000, '1.4;0.7', IF(@map_scale > 1000 AND @map_scale &lt;= 2000, '2.8;1.4', '5;2.5')))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.09, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.18, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 0.26, 0.65)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" name="4" force_rhr="0" clip_to_extent="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="1;0.5" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="10,10,9,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.09" type="QString"/>
            <Option name="line_width_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="1;0.5" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="RenderMetersInMapUnits" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="10,10,9,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.09" k="line_width"/>
          <prop v="RenderMetersInMapUnits" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF( @map_scale &lt;= 500, '1;0.5', IF( @map_scale > 500 AND @map_scale &lt;= 1000, '1.4;0.7', IF(@map_scale > 1000 AND @map_scale &lt;= 2000, '2.8;1.4', '5;2.5')))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.09, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.18, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 0.26, 0.65)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" name="5" force_rhr="0" clip_to_extent="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="1;0.5" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="10,10,9,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.09" type="QString"/>
            <Option name="line_width_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="1;0.5" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="RenderMetersInMapUnits" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="10,10,9,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.09" k="line_width"/>
          <prop v="RenderMetersInMapUnits" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF( @map_scale &lt;= 500, '1;0.5', IF( @map_scale > 500 AND @map_scale &lt;= 1000, '1.4;0.7', IF(@map_scale > 1000 AND @map_scale &lt;= 2000, '2.8;1.4', '5;2.5')))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.09, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.18, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 0.26, 0.65)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" name="6" force_rhr="0" clip_to_extent="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="1;0.5" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="10,10,9,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.09" type="QString"/>
            <Option name="line_width_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="1;0.5" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="RenderMetersInMapUnits" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="10,10,9,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.09" k="line_width"/>
          <prop v="RenderMetersInMapUnits" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF( @map_scale &lt;= 500, '1;0.5', IF( @map_scale > 500 AND @map_scale &lt;= 1000, '1.4;0.7', IF(@map_scale > 1000 AND @map_scale &lt;= 2000, '2.8;1.4', '5;2.5')))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.09, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.18, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 0.26, 0.65)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" name="7" force_rhr="0" clip_to_extent="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="1;0.5" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="10,10,9,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.09" type="QString"/>
            <Option name="line_width_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="1;0.5" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="RenderMetersInMapUnits" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="10,10,9,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.09" k="line_width"/>
          <prop v="RenderMetersInMapUnits" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF( @map_scale &lt;= 500, '1;0.5', IF( @map_scale > 500 AND @map_scale &lt;= 1000, '1.4;0.7', IF(@map_scale > 1000 AND @map_scale &lt;= 2000, '2.8;1.4', '5;2.5')))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.09, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.18, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 0.26, 0.65)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="1" name="8" force_rhr="0" clip_to_extent="1" type="fill">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="SimpleLine">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="2;0.5" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="10,10,9,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.09" type="QString"/>
            <Option name="line_width_unit" value="RenderMetersInMapUnits" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <prop v="0" k="align_dash_pattern"/>
          <prop v="square" k="capstyle"/>
          <prop v="2;0.5" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="RenderMetersInMapUnits" k="customdash_unit"/>
          <prop v="0" k="dash_pattern_offset"/>
          <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
          <prop v="MM" k="dash_pattern_offset_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="10,10,9,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.09" k="line_width"/>
          <prop v="RenderMetersInMapUnits" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="trim_distance_end"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
          <prop v="MM" k="trim_distance_end_unit"/>
          <prop v="0" k="trim_distance_start"/>
          <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
          <prop v="MM" k="trim_distance_start_unit"/>
          <prop v="0" k="tweak_dash_pattern_on_corners"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF( @map_scale &lt;= 500, '2;0.5', IF(@map_scale > 500 AND @map_scale &lt;= 1000, '2;1', IF(@map_scale > 1000 AND @map_scale &lt;= 2000, '4;2', '10;5')))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="outlineWidth" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.09, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.18, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 0.26, 0.65)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{cb3d569f-86c4-41d9-bd7f-b0fb4c3dbba4}">
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{ef36ac1d-898c-4a99-8084-3a7009213c22}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[0] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[0])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[0])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[0] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[0], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[1], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[2]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[0], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[1], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[2]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[0]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[0] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[0]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[0] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[0] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{2e6a69b9-dcbb-4563-9b5b-ea038f1c2477}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[1] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[1])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[1])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[1] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[3], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[4], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[5]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[3], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[4], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[5]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[1]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[1] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[1]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[1] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[1] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{de4828ab-df35-478a-ad3b-9d4cebc979bd}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[2] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[2])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[2])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[2] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[6], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[7], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[8]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[6], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[7], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[8]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[2]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[2] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[2]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[2] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[2] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{0597b4d7-0f3b-486b-a1f1-b8e8fe5eba81}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[3] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[3])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[3])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[3] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[9], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[10], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[11]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[9], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[10], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[11]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[3]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[3] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[3]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[3] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[3] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{0e2a8e1a-66bc-48a8-8337-edf896b0d5e6}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[4] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[4])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[4])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[4] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[12], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[13], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[14]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[12], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[13], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[14]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[4]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[4] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[4]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[4] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[4] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{5bf6238b-4528-4f22-a495-8a0f3ed32ce4}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[5] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[5])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[5])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[5] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[15], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[16], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[17]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[15], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[16], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[17]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[5]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[5] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[5]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[5] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[5] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{a13d23fd-b539-4166-9476-cbb81f737ede}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[6] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[6])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[6])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[6] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[18], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[19], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[20]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[18], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[19], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[20]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[6]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[6] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[6]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[6] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[6] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{505f0975-ccec-4baf-84df-3422e47b0538}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[7] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[7])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[7])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[7] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[21], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[22], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[23]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[21], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[22], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[23]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[7]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[7] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[7]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[7] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[7] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{dce491a6-1ae5-4678-8363-a91c72ab809f}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[8] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[8])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[8])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[8] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[24], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[25], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[26]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[24], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[25], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[26]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[8]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[8] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[8]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[8] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[8] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{eb9a8497-f9d0-468a-b458-5ef650e13bd2}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[9] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[9])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[9])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[9] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[27], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[28], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[29]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[27], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[28], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[29]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[9]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[9] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[9]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[9] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[9] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{fd618678-bb67-4d9b-aad7-4477109fed9a}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[10] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[10])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[10])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[10] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[30], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[31], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[32]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[30], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[31], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[32]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[10]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[10] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[10]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[10] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[10] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{dd292392-1d6a-480f-9047-8c67ab293ab8}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[11] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[11])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[11])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[11] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[33], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[34], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[35]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[33], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[34], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[35]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[11]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[11] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[11]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[11] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[11] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{445b46e0-6c39-4c40-ab4d-1ba32699c468}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[12] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[12])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[12])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[12] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[36], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[37], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[38]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[36], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[37], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[38]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[12]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[12] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[12]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[12] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[12] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{56f3cc79-13b6-4772-8d25-e278d84de8bf}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[13] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[13])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[13])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[13] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[39], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[40], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[41]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[39], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[40], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[41]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[13]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[13] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[13]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[13] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[13] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{0a208c31-4ad4-42fb-9de3-5f0ae2adf6ef}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[14] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[14])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[14])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[14] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[42], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[43], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[44]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[42], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[43], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[44]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[14]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[14] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[14]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[14] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[14] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule scalemindenom="1" description="KR_Etykieta" filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemaxdenom="5001" key="{165c7784-0e63-48bd-b772-8d4c600600ff}">
        <settings calloutType="simple">
          <text-style fontSizeUnit="RenderMetersInMapUnits" fieldName=" IF(string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[15] IS NULL,  IF(&quot;istnienie&quot; = 'projektowany', 'proj.', IF(&quot;istnienie&quot; = 'wBudowie', 'bud.', '')),string_to_array(  &quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[15])" textColor="0,0,0,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0" legendString="Aa" isExpression="1" multilineHeight="1" fontUnderline="0" fontWeight="50" fontKerning="1" textOpacity="1" previewBkgrdColor="255,255,255,255" fontStrikeout="0" fontLetterSpacing="0" textOrientation="horizontal" fontWordSpacing="0" fontFamily="Arial" blendMode="0" namedStyle="Normal" allowHtml="0" capitalization="0" fontItalic="0" fontSize="0.75">
            <families/>
            <text-buffer bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferBlendMode="0" bufferJoinStyle="128" bufferSize="0.25" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="RenderMetersInMapUnits" bufferNoFill="1"/>
            <text-mask maskOpacity="1" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSize="1.5" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRotation="0" shapeRadiiUnit="MM" shapeRotationType="0" shapeOffsetUnit="MM" shapeType="0" shapeSizeUnit="MM" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeY="0" shapeDraw="0" shapeSizeX="0" shapeBorderWidthUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeBorderColor="128,128,128,255">
              <symbol alpha="1" name="markerSymbol" force_rhr="0" clip_to_extent="1" type="marker">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleMarker">
                  <Option type="Map">
                    <Option name="angle" value="0" type="QString"/>
                    <Option name="cap_style" value="square" type="QString"/>
                    <Option name="color" value="213,180,60,255" type="QString"/>
                    <Option name="horizontal_anchor_point" value="1" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="name" value="circle" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="35,35,35,255" type="QString"/>
                    <Option name="outline_style" value="solid" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="scale_method" value="diameter" type="QString"/>
                    <Option name="size" value="2" type="QString"/>
                    <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="size_unit" value="MM" type="QString"/>
                    <Option name="vertical_anchor_point" value="1" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol alpha="1" name="fillSymbol" force_rhr="0" clip_to_extent="1" type="fill">
                <data_defined_properties>
                  <Option type="Map">
                    <Option name="name" value="" type="QString"/>
                    <Option name="properties"/>
                    <Option name="type" value="collection" type="QString"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" enabled="1" pass="0" class="SimpleFill">
                  <Option type="Map">
                    <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="color" value="255,255,255,255" type="QString"/>
                    <Option name="joinstyle" value="bevel" type="QString"/>
                    <Option name="offset" value="0,0" type="QString"/>
                    <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                    <Option name="offset_unit" value="MM" type="QString"/>
                    <Option name="outline_color" value="128,128,128,255" type="QString"/>
                    <Option name="outline_style" value="no" type="QString"/>
                    <Option name="outline_width" value="0" type="QString"/>
                    <Option name="outline_width_unit" value="MM" type="QString"/>
                    <Option name="style" value="solid" type="QString"/>
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
                      <Option name="name" value="" type="QString"/>
                      <Option name="properties"/>
                      <Option name="type" value="collection" type="QString"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowRadius="1.5" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetUnit="MM" shadowUnder="0" shadowColor="0,0,0,255" shadowScale="100"/>
            <dd_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" wrapChar="" addDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol=">" decimals="3" plussign="0"/>
          <placement fitInPolygonOnly="0" distMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" centroidWhole="0" lineAnchorType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" lineAnchorPercent="0.5" quadOffset="4" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" rotationUnit="AngleDegrees" dist="0" geometryGeneratorEnabled="1" rotationAngle="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorClipping="0" placement="1" maxCurvedCharAngleIn="25" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" overrunDistance="0" offsetType="0" distUnits="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" overrunDistanceUnit="MM" placementFlags="10" repeatDistance="0" polygonPlacementFlags="2" layerType="PolygonGeometry" offsetUnits="MM" preserveRotation="1" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[15])"/>
          <rendering labelPerPart="0" mergeLines="0" fontLimitPixelSize="0" scaleMin="0" zIndex="0" scaleMax="0" drawLabels="1" unplacedVisibility="0" obstacle="1" displayAll="1" maxNumLabels="2000" fontMinPixelSize="3" obstacleFactor="1" obstacleType="1" fontMaxPixelSize="10000" minFeatureSize="0" scaleVisibility="1" upsidedownLabels="0" limitNumLabels="0"/>
          <dd_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="Bold" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[15] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferSize" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="BufferUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Color" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[45], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[46], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[47]) IS NULL, getLayerColorOld( @layer_name), color_rgb(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[45], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[46], string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kolor&quot; , ', ')[47]))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Family" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[15]" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="FontSizeUnit" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="FontStyle" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="Italic" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[15] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="LabelRotation" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[15]) - 90" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="MultiLineAlignment" type="Map">
                  <Option name="active" value="false" type="bool"/>
                  <Option name="type" value="1" type="int"/>
                  <Option name="val" value="" type="QString"/>
                </Option>
                <Option name="OffsetQuad" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[15] + 1" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Size" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="IF(@map_scale&lt;=1000, 0.75, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 1.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 3, 7.5)))" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
                <Option name="Underline" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[15] = 'true'" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
              <Option name="blendMode" value="0" type="int"/>
              <Option name="ddProperties" type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
              <Option name="drawToAllParts" value="false" type="bool"/>
              <Option name="enabled" value="0" type="QString"/>
              <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
              <Option name="lineSymbol" value="&lt;symbol alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;capstyle&quot; value=&quot;square&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash&quot; value=&quot;5;2&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;customdash_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;joinstyle&quot; value=&quot;bevel&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_color&quot; value=&quot;60,60,60,255&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_style&quot; value=&quot;solid&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width&quot; value=&quot;0.3&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;line_width_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;offset_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;ring_filter&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;use_custom_dash&quot; value=&quot;0&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
              <Option name="minLength" value="0" type="double"/>
              <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="minLengthUnit" value="MM" type="QString"/>
              <Option name="offsetFromAnchor" value="0" type="double"/>
              <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
              <Option name="offsetFromLabel" value="0" type="double"/>
              <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
              <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction value="{b171b3a7-9c06-4a3e-93ef-f5f9df2148dd}" key="Canvas"/>
    <actionsetting shortTitle="Wyświetl relacje" capture="0" action="from qgis.PyQt.QtCore import Qt&#xa;from qgis.PyQt.QtGui import QCursor&#xa;from qgis.PyQt.QtWidgets import QApplication, QDialog, QTreeWidget, QTreeWidgetItem, QHeaderView, QMenu&#xa;&#xa;&#xa;iface = qgis.utils.iface&#xa;&#xa;def configureDialog(layer_name):&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Relacje obiektu klasy %s' % layer_name)&#xa;    dialog.setFixedHeight(405)&#xa;    tree = QTreeWidget(dialog)&#xa;    tree.move(5, 5)&#xa;    tree.setFixedHeight(400)&#xa;    tree.setColumnCount(1)&#xa;    tree.setHeaderHidden(True)&#xa;    tree.setAutoScroll(True)&#xa;    tree.header().setSectionResizeMode(0, QHeaderView.ResizeToContents)&#xa;    tree.itemExpanded.connect(adjustFormSize)&#xa;    tree.itemDoubleClicked.connect(zoomToReference)&#xa;    tree.setContextMenuPolicy(Qt.CustomContextMenu)&#xa;    tree.customContextMenuRequested.connect(showMenu)&#xa;    return dialog, tree&#xa;&#xa;def adjustFormSize():&#xa;    tree.resizeColumnToContents(0)&#xa;    column_width = tree.columnWidth(0)&#xa;    tree.setFixedWidth(column_width + 20)&#xa;    tree.header().resizeSection(0, column_width - 2)&#xa;    dialog.setFixedWidth(column_width + 25)&#xa;&#xa;def zoomToReference():&#xa;    current_item = tree.currentItem()&#xa;    if current_item.parent() is not None:&#xa;        layer_name = current_item.parent().text(0)&#xa;        identifier = current_item.text(0)&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            iface.mapCanvas().zoomToSelected(ref_layer)&#xa;&#xa;def showMenu():&#xa;    current_item = tree.currentItem()&#xa;    menu = QMenu('Menu', dialog)&#xa;    if current_item.data(1, 1) == 'href' and current_item is not None:&#xa;        menu.addAction('Identyfikuj')&#xa;        menu.addAction('Wyświetl relacje')&#xa;        menu.addAction('Kopiuj identyfikator')&#xa;    action = menu.exec(QCursor.pos())&#xa;    if action is not None:&#xa;        executeMenuAction(action, current_item)&#xa;&#xa;def executeMenuAction(action, current_item):&#xa;    layer_name = current_item.parent().text(0)&#xa;    identifier = current_item.text(0)&#xa;    if action.text() == 'Identyfikuj':&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            for feature in ref_layer.selectedFeatures():&#xa;                iface.mapCanvas().zoomToSelected(ref_layer)&#xa;                iface.mapCanvas().waitWhileRendering()&#xa;                iface.openFeatureForm(ref_layer, feature)&#xa;    if action.text() == 'Wyświetl relacje':&#xa;        ref_layer, field_names = getRefLayerAndFields(current_item.parent().text(0))&#xa;        if ref_layer is not None:&#xa;            getReferences(current_item, ref_layer, field_names)&#xa;            tree.expandItem(current_item)&#xa;    if action.text() == 'Kopiuj identyfikator':&#xa;        cb = QApplication.clipboard()&#xa;        cb.clear(mode=cb.Clipboard)&#xa;        cb.setText(identifier, mode=cb.Clipboard)&#xa;&#xa;def getRefLayerAndFields(layer_name):&#xa;    ref_layer = None&#xa;    field_names = {}&#xa;    layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;    if len(layers) == 1:&#xa;        ref_layer = layers[0]&#xa;        for field in ref_layer.fields():&#xa;            if field.comment() != '':&#xa;                field_names[field.name()] = field.comment()&#xa;    return ref_layer, field_names&#xa;&#xa;def getReferences(item, ref_layer, field_names):&#xa;    identifier = item.text(0)&#xa;    for feature in ref_layer.getFeatures(&quot;gml_id = '&quot; + identifier + &quot;'&quot;):&#xa;        for field_name in field_names.keys():&#xa;            field_value = feature.attribute(field_name)&#xa;            if field_value is not None and field_value:&#xa;                class_item = QTreeWidgetItem(item)&#xa;                class_item.setText(0, field_names[field_name])&#xa;                class_item.setData(1, 1, 'class')&#xa;                addReferences(class_item, field_value)&#xa;                tree.expandItem(class_item)&#xa;    for other_layer in QgsProject().instance().mapLayers().values():&#xa;        if other_layer.id() != ref_layer.id():&#xa;            for field in other_layer.fields():&#xa;                if field.comment() == ref_layer.name():&#xa;                    for other_feature in other_layer.getFeatures(&quot;\&quot;&quot; + field.displayName() + &quot;\&quot; LIKE '%&quot; + feature.attribute(&quot;gml_id&quot;) + &quot;%'&quot;):&#xa;                        class_item = QTreeWidgetItem(item)&#xa;                        class_item.setText(0, other_layer.name())&#xa;                        class_item.setData(1, 1, 'class')&#xa;                        addReferences(class_item, other_feature.attribute(&quot;gml_id&quot;))&#xa;                        tree.expandItem(class_item)&#xa;&#xa;def addReferences(class_item, field_value):&#xa;    for href in field_value.split(', '):&#xa;        ref_item = QTreeWidgetItem(class_item)&#xa;        ref_item.setText(0, href)&#xa;        ref_item.setData(1, 1, 'href')&#xa;&#xa;project = QgsProject.instance()&#xa;layers = project.mapLayersByName('[% @layer_name %]')&#xa;for layer in layers:&#xa;    if layer.id() == '[% @layer_id %]':&#xa;        dialog, tree = configureDialog('[% @layer_name %]')&#xa;        feature = layer.getFeature([% $id %])&#xa;        has_hrefs = False&#xa;        for field in layer.fields():&#xa;            if field.comment() != '':&#xa;                field_value = feature.attribute(field.name())&#xa;                if field_value is not None and field_value:&#xa;                    has_hrefs = True&#xa;                    class_item = QTreeWidgetItem()&#xa;                    class_item.setText(0, field.comment())&#xa;                    class_item.setData(1, 1, 'class')&#xa;                    tree.addTopLevelItem(class_item)&#xa;                    tree.resizeColumnToContents(0)&#xa;                    tree.setFixedWidth(tree.columnWidth(0) + 5)&#xa;                    dialog.setFixedWidth(tree.columnWidth(0) + 10)&#xa;                    addReferences(class_item, field_value)&#xa;        for other_layer in project.mapLayers().values():&#xa;            if other_layer.id() != layer.id():&#xa;                for field in other_layer.fields():&#xa;                    if field.comment() == layer.name():&#xa;                        class_item = QTreeWidgetItem()&#xa;                        class_item.setText(0, other_layer.name())&#xa;                        class_item.setData(1, 1, 'class')&#xa;                        for other_feature in other_layer.getFeatures(&quot;\&quot;&quot; + field.displayName() + &quot;\&quot; LIKE '%&quot; + feature.attribute(&quot;gml_id&quot;) + &quot;%'&quot;):&#xa;                            has_hrefs = True&#xa;                            tree.addTopLevelItem(class_item)&#xa;                            tree.resizeColumnToContents(0)&#xa;                            tree.setFixedWidth(tree.columnWidth(0) + 5)&#xa;                            dialog.setFixedWidth(tree.columnWidth(0) + 10)&#xa;                            addReferences(class_item, other_feature.attribute(&quot;gml_id&quot;))&#xa;        if has_hrefs:&#xa;            dialog.show()" name="Wyświetl relacje" icon="" isEnabledOnlyWhenEditable="0" id="{b171b3a7-9c06-4a3e-93ef-f5f9df2148dd}" notificationMessage="" type="1">
      <actionScope id="Field"/>
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <layerGeometryType>2</layerGeometryType>
</qgis>
