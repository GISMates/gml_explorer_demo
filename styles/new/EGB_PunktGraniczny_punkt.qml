<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling|Actions" labelsEnabled="1" version="3.22.12-Białowieża">
  <renderer-v2 type="RuleRenderer" symbollevels="0" forceraster="0" enableorderby="0" referencescale="-1">
    <rules key="{42085a9a-a016-41ac-ba52-cb6612b26008}">
      <rule key="{a4b5d650-3c6b-40d1-a6d8-b5ea6cfc8077}" scalemaxdenom="1001" scalemindenom="1" filter=" &quot;rodzajStabilizacji&quot; IN(3, 4, 5)" label="stabilizowany trwale EGPG_A" symbol="0"/>
      <rule key="{ad57b04b-2646-4bab-a613-caafd7078730}" scalemaxdenom="1001" scalemindenom="1" filter=" &quot;rodzajStabilizacji&quot; IN(1, 2)" label="niestabilizowany EGPG_B" symbol="1"/>
    </rules>
    <symbols>
      <symbol type="marker" force_rhr="0" alpha="1" name="0" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleMarker" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="255,255,255,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="miter" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0,0,0,255" name="outline_color"/>
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0.09" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="RenderMetersInMapUnits" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.5" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="RenderMetersInMapUnits" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="miter"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.09"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="RenderMetersInMapUnits"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.5"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="RenderMetersInMapUnits"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="outlineWidth">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="IF(@map_scale &lt;= 500, 0.09, 0.18)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
                <Option type="Map" name="size">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="IF(@map_scale &lt;= 500, 0.5, 1)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" force_rhr="0" alpha="1" name="1" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleMarker" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="255,255,255,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,0" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.5" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="RenderMetersInMapUnits" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,0"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.5"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="RenderMetersInMapUnits"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="size">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="IF(@map_scale &lt;= 500, 0.5, 1)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer pass="0" class="SimpleMarker" enabled="1" locked="0">
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
            <Option type="QString" value="solid" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="0.09" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="RenderMetersInMapUnits" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <prop k="angle" v="0"/>
          <prop k="cap_style" v="square"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="0.09"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="RenderMetersInMapUnits"/>
          <prop k="vertical_anchor_point" v="1"/>
          <effect type="effectStack" enabled="0">
            <effect type="dropShadow">
              <Option type="Map">
                <Option type="QString" value="13" name="blend_mode"/>
                <Option type="QString" value="2.645" name="blur_level"/>
                <Option type="QString" value="MM" name="blur_unit"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                <Option type="QString" value="0,0,0,255" name="color"/>
                <Option type="QString" value="2" name="draw_mode"/>
                <Option type="QString" value="0" name="enabled"/>
                <Option type="QString" value="135" name="offset_angle"/>
                <Option type="QString" value="2" name="offset_distance"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                <Option type="QString" value="1" name="opacity"/>
              </Option>
              <prop k="blend_mode" v="13"/>
              <prop k="blur_level" v="2.645"/>
              <prop k="blur_unit" v="MM"/>
              <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="color" v="0,0,0,255"/>
              <prop k="draw_mode" v="2"/>
              <prop k="enabled" v="0"/>
              <prop k="offset_angle" v="135"/>
              <prop k="offset_distance" v="2"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="opacity" v="1"/>
            </effect>
            <effect type="color">
              <Option type="Map">
                <Option type="QString" value="22" name="blend_mode"/>
                <Option type="QString" value="255" name="brightness"/>
                <Option type="QString" value="0" name="colorize"/>
                <Option type="QString" value="255,128,128,255" name="colorize_color"/>
                <Option type="QString" value="100" name="colorize_strength"/>
                <Option type="QString" value="0" name="contrast"/>
                <Option type="QString" value="2" name="draw_mode"/>
                <Option type="QString" value="1" name="enabled"/>
                <Option type="QString" value="0" name="grayscale_mode"/>
                <Option type="QString" value="1" name="opacity"/>
                <Option type="QString" value="1" name="saturation"/>
              </Option>
              <prop k="blend_mode" v="22"/>
              <prop k="brightness" v="255"/>
              <prop k="colorize" v="0"/>
              <prop k="colorize_color" v="255,128,128,255"/>
              <prop k="colorize_strength" v="100"/>
              <prop k="contrast" v="0"/>
              <prop k="draw_mode" v="2"/>
              <prop k="enabled" v="1"/>
              <prop k="grayscale_mode" v="0"/>
              <prop k="opacity" v="1"/>
              <prop k="saturation" v="1"/>
            </effect>
            <effect type="drawSource">
              <Option type="Map">
                <Option type="QString" value="0" name="blend_mode"/>
                <Option type="QString" value="2" name="draw_mode"/>
                <Option type="QString" value="1" name="enabled"/>
                <Option type="QString" value="1" name="opacity"/>
              </Option>
              <prop k="blend_mode" v="0"/>
              <prop k="draw_mode" v="2"/>
              <prop k="enabled" v="1"/>
              <prop k="opacity" v="1"/>
            </effect>
            <effect type="innerShadow">
              <Option type="Map">
                <Option type="QString" value="13" name="blend_mode"/>
                <Option type="QString" value="2.645" name="blur_level"/>
                <Option type="QString" value="MM" name="blur_unit"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                <Option type="QString" value="0,0,0,255" name="color"/>
                <Option type="QString" value="2" name="draw_mode"/>
                <Option type="QString" value="0" name="enabled"/>
                <Option type="QString" value="135" name="offset_angle"/>
                <Option type="QString" value="2" name="offset_distance"/>
                <Option type="QString" value="MM" name="offset_unit"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_unit_scale"/>
                <Option type="QString" value="1" name="opacity"/>
              </Option>
              <prop k="blend_mode" v="13"/>
              <prop k="blur_level" v="2.645"/>
              <prop k="blur_unit" v="MM"/>
              <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="color" v="0,0,0,255"/>
              <prop k="draw_mode" v="2"/>
              <prop k="enabled" v="0"/>
              <prop k="offset_angle" v="135"/>
              <prop k="offset_distance" v="2"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="offset_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="opacity" v="1"/>
            </effect>
            <effect type="innerGlow">
              <Option type="Map">
                <Option type="QString" value="0" name="blend_mode"/>
                <Option type="QString" value="2.645" name="blur_level"/>
                <Option type="QString" value="MM" name="blur_unit"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="blur_unit_scale"/>
                <Option type="QString" value="69,116,40,255" name="color1"/>
                <Option type="QString" value="188,220,60,255" name="color2"/>
                <Option type="QString" value="0" name="color_type"/>
                <Option type="QString" value="0" name="discrete"/>
                <Option type="QString" value="2" name="draw_mode"/>
                <Option type="QString" value="0" name="enabled"/>
                <Option type="QString" value="0.5" name="opacity"/>
                <Option type="QString" value="gradient" name="rampType"/>
                <Option type="QString" value="255,255,255,255" name="single_color"/>
                <Option type="QString" value="2" name="spread"/>
                <Option type="QString" value="MM" name="spread_unit"/>
                <Option type="QString" value="3x:0,0,0,0,0,0" name="spread_unit_scale"/>
              </Option>
              <prop k="blend_mode" v="0"/>
              <prop k="blur_level" v="2.645"/>
              <prop k="blur_unit" v="MM"/>
              <prop k="blur_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="color1" v="69,116,40,255"/>
              <prop k="color2" v="188,220,60,255"/>
              <prop k="color_type" v="0"/>
              <prop k="discrete" v="0"/>
              <prop k="draw_mode" v="2"/>
              <prop k="enabled" v="0"/>
              <prop k="opacity" v="0.5"/>
              <prop k="rampType" v="gradient"/>
              <prop k="single_color" v="255,255,255,255"/>
              <prop k="spread" v="2"/>
              <prop k="spread_unit" v="MM"/>
              <prop k="spread_unit_scale" v="3x:0,0,0,0,0,0"/>
            </effect>
          </effect>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="size">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="IF(@map_scale &lt;= 500, 0.09, 0.18)" name="expression"/>
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
    <rules key="{5ef81c07-9b46-46fb-ae64-1b0ec0aeeeb5}"/>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction key="Canvas" value="{dd5f1595-3e77-4035-9840-6da346310f7b}"/>
    <actionsetting shortTitle="Wyświetl obiekty archiwalne" action="from qgis.PyQt.QtCore import Qt&#xa;from qgis.PyQt.QtGui import QCursor&#xa;from qgis.PyQt.QtWidgets import QApplication, QDialog, QTreeWidget, QTreeWidgetItem, QHeaderView, QMenu, QMessageBox&#xa;&#xa;&#xa;iface = qgis.utils.iface&#xa;&#xa;def configureDialog(layer_name):&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Obiekty archiwalne obiektu klasy %s' % layer_name)&#xa;    dialog.setMinimumWidth(600)&#xa;    dialog.setMinimumHeight(400)&#xa;    dialog.resizeEvent = adjustSize&#xa;    tree = QTreeWidget(dialog)&#xa;    tree.move(5, 5)&#xa;    tree.setColumnCount(1)&#xa;    tree.setHeaderHidden(True)&#xa;    tree.setAutoScroll(True)&#xa;    tree.header().setSectionResizeMode(0, QHeaderView.ResizeToContents)&#xa;    tree.itemDoubleClicked.connect(zoomToReference)&#xa;    tree.setContextMenuPolicy(Qt.CustomContextMenu)&#xa;    tree.customContextMenuRequested.connect(showMenu)&#xa;    return dialog, tree&#xa;&#xa;def adjustSize(event):&#xa;    width = event.size().width()&#xa;    height = event.size().height()&#xa;    tree.resize(width - 10, height - 10)&#xa;&#xa;def zoomToReference():&#xa;    current_item = tree.currentItem()&#xa;    if current_item.parent() is not None:&#xa;        layer_name = current_item.parent().text(0)&#xa;        identifier = current_item.text(0)&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            iface.mapCanvas().zoomToSelected(ref_layer)&#xa;&#xa;def showMenu():&#xa;    current_item = tree.currentItem()&#xa;    menu = QMenu('Menu', dialog)&#xa;    if current_item.data(1, 1) == 'href' and current_item is not None:&#xa;        menu.addAction('Identyfikuj')&#xa;        menu.addAction('Kopiuj identyfikator')&#xa;    action = menu.exec(QCursor.pos())&#xa;    if action is not None:&#xa;        executeMenuAction(action, current_item)&#xa;&#xa;def executeMenuAction(action, current_item):&#xa;    layer_name = current_item.parent().text(0)&#xa;    identifier = current_item.text(0)&#xa;    if action.text() == 'Identyfikuj':&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            for feature in ref_layer.selectedFeatures():&#xa;                iface.mapCanvas().zoomToSelected(ref_layer)&#xa;                iface.mapCanvas().waitWhileRendering()&#xa;                iface.openFeatureForm(ref_layer, feature)&#xa;    if action.text() == 'Kopiuj identyfikator':&#xa;        cb = QApplication.clipboard()&#xa;        cb.clear(mode=cb.Clipboard)&#xa;        cb.setText(identifier, mode=cb.Clipboard)&#xa;&#xa;def getRefLayerAndFields(layer_name):&#xa;    ref_layer = None&#xa;    field_names = {}&#xa;    layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;    if len(layers) == 1:&#xa;        ref_layer = layers[0]&#xa;        for field in ref_layer.fields():&#xa;            if field.comment() != '':&#xa;                field_names[field.name()] = field.comment()&#xa;    return ref_layer, field_names&#xa;&#xa;def getReferences(item, ref_layer, field_names):&#xa;    identifier = item.text(0)&#xa;    for feature in ref_layer.getFeatures(&quot;gml_id = '&quot; + identifier + &quot;'&quot;):&#xa;        for field_name in field_names.keys():&#xa;            field_value = feature.attribute(field_name)&#xa;            if field_value is not None and field_value:&#xa;                class_item = QTreeWidgetItem(item)&#xa;                class_item.setText(0, field_names[field_name])&#xa;                class_item.setData(1, 1, 'class')&#xa;                addReferences(class_item, field_value)&#xa;                tree.expandItem(class_item)&#xa;    for other_layer in QgsProject().instance().mapLayers().values():&#xa;        if other_layer.id() != ref_layer.id():&#xa;            for field in other_layer.fields():&#xa;                if field.comment() == ref_layer.name():&#xa;                    for other_feature in other_layer.getFeatures(&quot;\&quot;&quot; + field.displayName() + &quot;\&quot; LIKE '%&quot; + feature.attribute(&quot;gml_id&quot;) + &quot;%'&quot;):&#xa;                        class_item = QTreeWidgetItem(item)&#xa;                        class_item.setText(0, other_layer.name())&#xa;                        class_item.setData(1, 1, 'class')&#xa;                        addReferences(class_item, other_feature.attribute(&quot;gml_id&quot;))&#xa;                        tree.expandItem(class_item)&#xa;&#xa;def addReferences(class_item, field_value):&#xa;    for href in field_value.split(', '):&#xa;        ref_item = QTreeWidgetItem(class_item)&#xa;        ref_item.setText(0, href)&#xa;        ref_item.setData(1, 1, 'href')&#xa;&#xa;def showMessage(title, text):&#xa;    mbox = QMessageBox(dialog)&#xa;    mbox.setWindowTitle(title)&#xa;    mbox.setText(text)&#xa;    mbox.exec()&#xa;&#xa;project = QgsProject.instance()&#xa;layers = project.mapLayersByName('[% @layer_name %]')&#xa;for layer in layers:&#xa;    if layer.id() == '[% @layer_id %]':&#xa;        dialog, tree = configureDialog('[% @layer_name %]')&#xa;        feature = layer.getFeature([% $id %])&#xa;        has_archival = False&#xa;        archival_layer_name = '%s_ARCH' % layer.name()&#xa;        if len(project.mapLayersByName(archival_layer_name)) == 1:&#xa;            archival_layer = project.mapLayersByName('%s_ARCH' % layer.name())[0]&#xa;            for field in layer.fields():&#xa;                if 'lokalnyId' in field.name() != '':&#xa;                    field_value = feature.attribute(field.name())&#xa;                    for archival_feature in archival_layer.getFeatures('&quot;%s&quot; = \'%s\'' %(field.name(), field_value)):&#xa;                        archival_id = archival_feature.attribute(&quot;gml_id&quot;)&#xa;                        if archival_id is not None and archival_id:&#xa;                            has_archival = True&#xa;                            class_item = QTreeWidgetItem()&#xa;                            class_item.setText(0, archival_layer_name)&#xa;                            class_item.setData(1, 1, 'class')&#xa;                            tree.addTopLevelItem(class_item)&#xa;                            addReferences(class_item, archival_id)&#xa;            if has_archival:&#xa;                dialog.show()&#xa;            else:&#xa;                showMessage('Obiekty archiwalne', 'Wskazany obiekt nie ma obiektów archiwalnych')&#xa;        else:&#xa;            showMessage('Obiekty archiwalne', 'Do projektu nie została wczytana warstwa archiwalna %s' % archival_layer_name)" type="1" capture="0" isEnabledOnlyWhenEditable="0" id="{dd5f1595-3e77-4035-9840-6da346310f7b}" name="Wyświetl obiekty archiwalne" notificationMessage="" icon="">
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
      <actionScope id="Feature"/>
    </actionsetting>
  </attributeactions>
  <layerGeometryType>0</layerGeometryType>
</qgis>
