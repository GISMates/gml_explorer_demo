<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.4-Białowieża" styleCategories="Symbology|Labeling|Actions" labelsEnabled="0">
  <renderer-v2 symbollevels="0" forceraster="0" enableorderby="0" referencescale="-1" type="RuleRenderer">
    <rules key="{3f860538-a5c8-4c08-bc7f-95a60578d86a}">
      <rule symbol="0" key="{01600035-79be-406d-8e47-237ba5660729}" label="bagno OBMO01" scalemindenom="1" scalemaxdenom="1001" filter=" &quot;rodzajMokradla&quot; = 'bagno' "/>
      <rule symbol="1" key="{9dce5d11-bdaa-418a-93ce-a8b0757b6d27}" label="teren podmokły OBMO02" scalemindenom="1" scalemaxdenom="1001" filter=" &quot;rodzajMokradla&quot; = 'terenPodmokly' "/>
    </rules>
    <symbols>
      <symbol name="0" type="fill" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="PointPatternFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option value="0" name="displacement_x" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="displacement_x_map_unit_scale" type="QString"/>
            <Option value="MapUnit" name="displacement_x_unit" type="QString"/>
            <Option value="0" name="displacement_y" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="displacement_y_map_unit_scale" type="QString"/>
            <Option value="MM" name="displacement_y_unit" type="QString"/>
            <Option value="16" name="distance_x" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="distance_x_map_unit_scale" type="QString"/>
            <Option value="MapUnit" name="distance_x_unit" type="QString"/>
            <Option value="8" name="distance_y" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="distance_y_map_unit_scale" type="QString"/>
            <Option value="MapUnit" name="distance_y_unit" type="QString"/>
            <Option value="0" name="offset_x" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_x_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_x_unit" type="QString"/>
            <Option value="0" name="offset_y" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_y_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_y_unit" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
          </Option>
          <prop k="displacement_x" v="0"/>
          <prop k="displacement_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="displacement_x_unit" v="MapUnit"/>
          <prop k="displacement_y" v="0"/>
          <prop k="displacement_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="displacement_y_unit" v="MM"/>
          <prop k="distance_x" v="16"/>
          <prop k="distance_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_x_unit" v="MapUnit"/>
          <prop k="distance_y" v="8"/>
          <prop k="distance_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_y_unit" v="MapUnit"/>
          <prop k="offset_x" v="0"/>
          <prop k="offset_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_x_unit" v="MM"/>
          <prop k="offset_y" v="0"/>
          <prop k="offset_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_y_unit" v="MM"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="displacementX" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF( @map_scale &lt;= 500, 8, 12)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="distanceX" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF( @map_scale &lt;= 500, 16, 24)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="distanceY" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF( @map_scale &lt;= 500, 4, 6)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@0" type="marker" alpha="1" force_rhr="0" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer class="SvgMarker" enabled="1" locked="0" pass="0">
              <Option type="Map">
                <Option value="0" name="angle" type="QString"/>
                <Option value="10,9,9,255" name="color" type="QString"/>
                <Option value="0" name="fixedAspectRatio" type="QString"/>
                <Option value="1" name="horizontal_anchor_point" type="QString"/>
                <Option value="C:/Users/wizipisi/AppData/Roaming/QGIS/QGIS3/profiles/default/python/plugins/gml_explorer_dev/symbols/bagno.svg" name="name" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="35,35,35,255" name="outline_color" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option name="parameters"/>
                <Option value="diameter" name="scale_method" type="QString"/>
                <Option value="2" name="size" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                <Option value="RenderMetersInMapUnits" name="size_unit" type="QString"/>
                <Option value="1" name="vertical_anchor_point" type="QString"/>
              </Option>
              <prop k="angle" v="0"/>
              <prop k="color" v="10,9,9,255"/>
              <prop k="fixedAspectRatio" v="0"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="name" v="C:/Users/wizipisi/AppData/Roaming/QGIS/QGIS3/profiles/default/python/plugins/gml_explorer_dev/symbols/bagno.svg"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="35,35,35,255"/>
              <prop k="outline_width" v="0"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="parameters" v=""/>
              <prop k="scale_method" v="diameter"/>
              <prop k="size" v="2"/>
              <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="size_unit" v="RenderMetersInMapUnits"/>
              <prop k="vertical_anchor_point" v="1"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties" type="Map">
                    <Option name="width" type="Map">
                      <Option value="true" name="active" type="bool"/>
                      <Option value="IF( @map_scale &lt;= 500, 13, 18.2)" name="expression" type="QString"/>
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
      <symbol name="1" type="fill" alpha="1" force_rhr="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="PointPatternFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option value="5" name="displacement_x" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="displacement_x_map_unit_scale" type="QString"/>
            <Option value="MapUnit" name="displacement_x_unit" type="QString"/>
            <Option value="0" name="displacement_y" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="displacement_y_map_unit_scale" type="QString"/>
            <Option value="MM" name="displacement_y_unit" type="QString"/>
            <Option value="10" name="distance_x" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="distance_x_map_unit_scale" type="QString"/>
            <Option value="MapUnit" name="distance_x_unit" type="QString"/>
            <Option value="2.5" name="distance_y" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="distance_y_map_unit_scale" type="QString"/>
            <Option value="MapUnit" name="distance_y_unit" type="QString"/>
            <Option value="0" name="offset_x" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_x_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_x_unit" type="QString"/>
            <Option value="0" name="offset_y" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_y_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_y_unit" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
          </Option>
          <prop k="displacement_x" v="5"/>
          <prop k="displacement_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="displacement_x_unit" v="MapUnit"/>
          <prop k="displacement_y" v="0"/>
          <prop k="displacement_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="displacement_y_unit" v="MM"/>
          <prop k="distance_x" v="10"/>
          <prop k="distance_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_x_unit" v="MapUnit"/>
          <prop k="distance_y" v="2.5"/>
          <prop k="distance_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="distance_y_unit" v="MapUnit"/>
          <prop k="offset_x" v="0"/>
          <prop k="offset_x_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_x_unit" v="MM"/>
          <prop k="offset_y" v="0"/>
          <prop k="offset_y_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_y_unit" v="MM"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="displacementX" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF( @map_scale &lt;= 500, 5, 7)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="distanceX" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF( @map_scale &lt;= 500, 10, 14)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
                <Option name="distanceY" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="IF( @map_scale &lt;= 500, 2.5, 3.5)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@1@0" type="marker" alpha="1" force_rhr="0" clip_to_extent="1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer class="SvgMarker" enabled="1" locked="0" pass="0">
              <Option type="Map">
                <Option value="0" name="angle" type="QString"/>
                <Option value="10,9,9,255" name="color" type="QString"/>
                <Option value="0" name="fixedAspectRatio" type="QString"/>
                <Option value="1" name="horizontal_anchor_point" type="QString"/>
                <Option value="C:/Users/wizipisi/AppData/Roaming/QGIS/QGIS3/profiles/default/python/plugins/gml_explorer_dev/symbols/terenPodmokly.svg" name="name" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="35,35,35,255" name="outline_color" type="QString"/>
                <Option value="0" name="outline_width" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option name="parameters"/>
                <Option value="diameter" name="scale_method" type="QString"/>
                <Option value="4.5" name="size" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
                <Option value="RenderMetersInMapUnits" name="size_unit" type="QString"/>
                <Option value="1" name="vertical_anchor_point" type="QString"/>
              </Option>
              <prop k="angle" v="0"/>
              <prop k="color" v="10,9,9,255"/>
              <prop k="fixedAspectRatio" v="0"/>
              <prop k="horizontal_anchor_point" v="1"/>
              <prop k="name" v="C:/Users/wizipisi/AppData/Roaming/QGIS/QGIS3/profiles/default/python/plugins/gml_explorer_dev/symbols/terenPodmokly.svg"/>
              <prop k="offset" v="0,0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="outline_color" v="35,35,35,255"/>
              <prop k="outline_width" v="0"/>
              <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="outline_width_unit" v="MM"/>
              <prop k="parameters" v=""/>
              <prop k="scale_method" v="diameter"/>
              <prop k="size" v="4.5"/>
              <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="size_unit" v="RenderMetersInMapUnits"/>
              <prop k="vertical_anchor_point" v="1"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties" type="Map">
                    <Option name="width" type="Map">
                      <Option value="true" name="active" type="bool"/>
                      <Option value="IF( @map_scale &lt;= 500, 4.5, 6.8)" name="expression" type="QString"/>
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
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <layerGeometryType>2</layerGeometryType>
</qgis>
