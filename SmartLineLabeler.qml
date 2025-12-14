<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="1" simplifyLocal="1" readOnly="0" styleCategories="LayerConfiguration|Symbology|Symbology3D|Labeling|Fields|Rendering" simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" autoRefreshTime="0" maxScale="0" labelsEnabled="1" simplifyAlgorithm="0" simplifyMaxScale="1" symbologyReferenceScale="-1" version="3.44.3-Solothurn" minScale="0" autoRefreshMode="Disabled">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <renderer-v2 enableorderby="0" forceraster="0" symbollevels="0" referencescale="-1" type="singleSymbol">
    <symbols>
      <symbol alpha="1" is_animated="0" frame_rate="10" force_rhr="0" name="0" clip_to_extent="1" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer id="{55040da4-e774-4865-8d10-2ea9a14856dd}" enabled="1" locked="0" pass="0" class="GeometryGenerator">
          <Option type="Map">
            <Option name="SymbolType" type="QString" value="Line"/>
            <Option name="geometryModifier" type="QString" value=" with_variable( 's',if( @sll_label_units in ('MapUnits','MetersInMapUnits'),1,@map_scale/1000),&#xd;&#xa;if( &quot;nearest&quot;,&#xd;&#xa;if( &quot;label_align&quot; != 'C',&#xd;&#xa;make_line( start_point(  $geometry ), make_point(&quot;x&quot; + ($x_at(1) - &quot;x&quot;)* @s,&quot;y&quot; + ($y_at(1)-&quot;y&quot;)* @s), make_point(  &quot;x&quot; + ($x_at(2)-&quot;x&quot;)* @s,&quot;y&quot;+ ($y_at(2)-&quot;y&quot;)* @s)),&#xd;&#xa;make_line( start_point(  $geometry ), make_point(&quot;x&quot; + ($x_at(1) - &quot;x&quot;)* @s,&quot;y&quot; + ($y_at(1)-&quot;y&quot;)* @s))),&#xd;&#xa;with_variable( 'pt3',make_point($x_at(1) + ($x_at(2) - $x_at(1))* @s,$y_at(1) + ($y_at(2)-$y_at(1))* @s),&#xd;&#xa;make_line( start_point(  $geometry ), point_n( $geometry, 2),@pt3, make_point( x(@pt3) + (&quot;x&quot; - $x_at(2))* @s,y(@pt3) + (&quot;y&quot; - $y_at(2))* @s)))))&#xd;&#xa;&#xd;&#xa;"/>
            <Option name="units" type="QString" value="MapUnit"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" type="bool" value="true"/>
                  <Option name="expression" type="QString" value="if( &quot;x&quot; and  &quot;y&quot; ,1,0)"/>
                  <Option name="type" type="int" value="3"/>
                </Option>
              </Option>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol alpha="1" is_animated="0" frame_rate="10" force_rhr="0" name="@0@0" clip_to_extent="1" type="line">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer id="{040786c5-ccc1-410a-a4da-4ac0235d3dd8}" enabled="1" locked="0" pass="0" class="SimpleLine">
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
                <Option name="line_color" type="QString" value="200,200,200,255,rgb:0.7843137,0.7843137,0.7843137,1"/>
                <Option name="line_style" type="QString" value="solid"/>
                <Option name="line_width" type="QString" value="0.26"/>
                <Option name="line_width_unit" type="QString" value="MM"/>
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
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties" type="Map">
                    <Option name="outlineStyle" type="Map">
                      <Option name="active" type="bool" value="true"/>
                      <Option name="expression" type="QString" value="if( &quot;label_align&quot; = 'C','no','solid')"/>
                      <Option name="type" type="int" value="3"/>
                    </Option>
                  </Option>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
    <data-defined-properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </data-defined-properties>
  </renderer-v2>
  <selection mode="Default">
    <selectionColor invalid="1"/>
    <selectionSymbol>
      <symbol alpha="1" is_animated="0" frame_rate="10" force_rhr="0" name="" clip_to_extent="1" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer id="{566d0d9d-4643-43bb-9006-dc8fc866601e}" enabled="1" locked="0" pass="0" class="SimpleLine">
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
            <Option name="line_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.26"/>
            <Option name="line_width_unit" type="QString" value="MM"/>
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
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </selectionSymbol>
  </selection>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fontKerning="1" legendString="Aa" textOrientation="horizontal" textColor="0,0,0,255,rgb:0,0,0,1" fontWordSpacing="0" fontFamily="Arial" forcedBold="0" tabStopDistance="80" allowHtml="1" fontSizeUnit="MM" isExpression="1" previewBkgrdColor="255,255,255,255,rgb:1,1,1,1" capitalization="0" fontUnderline="0" fontStrikeout="0" forcedItalic="0" textOpacity="1" namedStyle="Standard" useSubstitutions="0" tabStopDistanceMapUnitScale="3x:0,0,0,0,0,0" fieldName="CASE WHEN &quot;x&quot; IS NOT NULL THEN  '&lt;div>' || @id || '&lt;/div>' END" multilineHeightUnit="Percentage" multilineHeight="1" tabStopDistanceUnit="Point" fontItalic="0" fontWeight="50" stretchFactor="100" fontLetterSpacing="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" blendMode="0" fontSize="4.5">
        <families/>
        <text-buffer bufferDraw="0" bufferJoinStyle="64" bufferOpacity="1" bufferNoFill="0" bufferColor="255,255,255,255,rgb:1,1,1,1" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="1" bufferSizeUnits="MM"/>
        <text-mask maskType="0" maskSize="1.5" maskSizeUnits="MM" maskEnabled="0" maskSize2="1.5" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1" maskedSymbolLayers="" maskJoinStyle="128"/>
        <background shapeRadiiY="0" shapeFillColor="255,255,255,255,rgb:1,1,1,1" shapeRotationType="0" shapeSizeX="0" shapeSizeUnit="MM" shapeBlendMode="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeJoinStyle="64" shapeSizeY="0" shapeOffsetY="0" shapeOffsetUnit="MM" shapeBorderColor="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeRotation="0" shapeOpacity="1" shapeBorderWidthUnit="MM" shapeRadiiUnit="MM" shapeRadiiX="0" shapeType="0" shapeDraw="0" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0">
          <symbol alpha="1" is_animated="0" frame_rate="10" force_rhr="0" name="markerSymbol" clip_to_extent="1" type="marker">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer id="" enabled="1" locked="0" pass="0" class="SimpleMarker">
              <Option type="Map">
                <Option name="angle" type="QString" value="0"/>
                <Option name="cap_style" type="QString" value="square"/>
                <Option name="color" type="QString" value="114,155,111,255,rgb:0.4470588,0.6078431,0.4352941,1"/>
                <Option name="horizontal_anchor_point" type="QString" value="1"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="name" type="QString" value="circle"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="35,35,35,255,rgb:0.1372549,0.1372549,0.1372549,1"/>
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
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" type="QString" value=""/>
                  <Option name="properties"/>
                  <Option name="type" type="QString" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
          <symbol alpha="1" is_animated="0" frame_rate="10" force_rhr="0" name="fillSymbol" clip_to_extent="1" type="fill">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" type="QString" value=""/>
                <Option name="properties"/>
                <Option name="type" type="QString" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer id="" enabled="1" locked="0" pass="0" class="SimpleFill">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="color" type="QString" value="255,255,255,255,rgb:1,1,1,1"/>
                <Option name="joinstyle" type="QString" value="bevel"/>
                <Option name="offset" type="QString" value="0,0"/>
                <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
                <Option name="offset_unit" type="QString" value="MM"/>
                <Option name="outline_color" type="QString" value="128,128,128,255,rgb:0.5019608,0.5019608,0.5019608,1"/>
                <Option name="outline_style" type="QString" value="no"/>
                <Option name="outline_width" type="QString" value="0"/>
                <Option name="outline_width_unit" type="QString" value="MM"/>
                <Option name="style" type="QString" value="solid"/>
              </Option>
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
        <shadow shadowScale="100" shadowUnder="0" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetUnit="MM" shadowRadius="1.5" shadowColor="0,0,0,255,rgb:0,0,0,1" shadowBlendMode="6" shadowRadiusAlphaOnly="0" shadowOpacity="0.69999999999999996" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
        <dd_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format multilineAlign="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0" wrapChar="" plussign="0" placeDirectionSymbol="0" decimals="3" formatNumbers="0"/>
      <placement preserveRotation="1" centroidWhole="1" maximumDistance="0" distUnits="MM" lineAnchorClipping="0" repeatDistanceUnits="MM" maxCurvedCharAngleOut="-20" overlapHandling="AllowOverlapAtNoCost" prioritization="PreferCloser" allowDegraded="0" maximumDistanceMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" maximumDistanceUnit="MM" geometryGeneratorType="PointGeometry" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" geometryGenerator="" maxCurvedCharAngleIn="20" geometryGeneratorEnabled="0" rotationUnit="AngleDegrees" polygonPlacementFlags="2" rotationAngle="0" overrunDistanceUnit="MapUnit" yOffset="0" offsetUnits="MapUnit" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5" lineAnchorTextPoint="FollowPlacement" lineAnchorType="0" layerType="LineGeometry" placement="4" quadOffset="4" overrunDistance="0" fitInPolygonOnly="0" repeatDistance="0" lineAnchorPercent="0.5" dist="0" centroidInside="0"/>
      <rendering maxNumLabels="2000" upsidedownLabels="0" scaleMax="10000000" mergeLines="0" minFeatureSize="0" fontMinPixelSize="3" obstacleType="0" zIndex="0" fontMaxPixelSize="10000" obstacle="1" drawLabels="1" limitNumLabels="0" scaleMin="1" obstacleFactor="1" fontLimitPixelSize="0" unplacedVisibility="0" labelPerPart="0" scaleVisibility="0"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" type="QString" value=""/>
          <Option name="properties" type="Map">
            <Option name="Color" type="Map">
              <Option name="active" type="bool" value="false"/>
              <Option name="type" type="int" value="1"/>
              <Option name="val" type="QString" value=""/>
            </Option>
            <Option name="Hali" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="CASE&#xd;&#xa;&#x9;WHEN &quot;label_align&quot; = 'L' THEN 'Left'&#xd;&#xa;&#x9;WHEN &quot;label_align&quot; = 'R' THEN 'Right'&#xd;&#xa;&#x9;WHEN &quot;label_align&quot; = 'C' THEN 'Center'&#xd;&#xa;&#x9;ELSE 'Left'&#xd;&#xa;END"/>
              <Option name="type" type="int" value="3"/>
            </Option>
            <Option name="LabelRotation" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="360 - (&quot;angle&quot;)"/>
              <Option name="type" type="int" value="3"/>
            </Option>
            <Option name="PositionPoint" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="with_variable( 's',if( @sll_label_units in ('MapUnits','MetersInMapUnits'),1,@map_scale/1000),&#xd;&#xa;CASE WHEN &quot;x&quot; IS NOT NULL THEN&#xd;&#xa;&#x9;if (&quot;nearest&quot;,&#xd;&#xa;&#x9;&#x9;if( &quot;label_align&quot; != 'C',&#xd;&#xa;&#x9;&#x9;&#x9;make_point(&quot;x&quot;+(x_at(@geometry,2) - &quot;x&quot;) * @s,&quot;y&quot;+(y_at(@geometry,2) - &quot;y&quot;) * @s),&#xd;&#xa;&#x9;&#x9;&#x9;make_point(&quot;x&quot;+(x_at(@geometry,1) - &quot;x&quot;) * @s,&quot;y&quot;+(y_at(@geometry,1) - &quot;y&quot;) * @s)&#xd;&#xa;&#x9;&#x9;),&#xd;&#xa;with_variable( 'pt3', make_point(x_at(@geometry,1) + (x_at(@geometry,2) - x_at(@geometry,1))* @s,y_at(@geometry,1) + (y_at(@geometry,2)-y_at(@geometry,1))* @s),&#xd;&#xa;make_point( x(@pt3) + (&quot;x&quot; - x_at(@geometry,2))* @s,y(@pt3) + (&quot;y&quot; - y_at(@geometry,2))* @s)))&#xd;&#xa;END)"/>
              <Option name="type" type="int" value="3"/>
            </Option>
            <Option name="PositionX" type="Map">
              <Option name="active" type="bool" value="false"/>
              <Option name="type" type="int" value="1"/>
              <Option name="val" type="QString" value=""/>
            </Option>
            <Option name="PositionY" type="Map">
              <Option name="active" type="bool" value="false"/>
              <Option name="type" type="int" value="1"/>
              <Option name="val" type="QString" value=""/>
            </Option>
            <Option name="Size" type="Map">
              <Option name="active" type="bool" value="false"/>
              <Option name="type" type="int" value="1"/>
              <Option name="val" type="QString" value=""/>
            </Option>
            <Option name="Vali" type="Map">
              <Option name="active" type="bool" value="true"/>
              <Option name="expression" type="QString" value="'Half'"/>
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
          <Option name="lineSymbol" type="QString" value="&lt;symbol alpha=&quot;1&quot; is_animated=&quot;0&quot; frame_rate=&quot;10&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer id=&quot;{8bfd277e-931e-428c-a8cc-6a2fb858ae4e}&quot; enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;align_dash_pattern&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;capstyle&quot; type=&quot;QString&quot; value=&quot;square&quot;/>&lt;Option name=&quot;customdash&quot; type=&quot;QString&quot; value=&quot;5;2&quot;/>&lt;Option name=&quot;customdash_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;customdash_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;dash_pattern_offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;dash_pattern_offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;dash_pattern_offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;draw_inside_polygon&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;joinstyle&quot; type=&quot;QString&quot; value=&quot;bevel&quot;/>&lt;Option name=&quot;line_color&quot; type=&quot;QString&quot; value=&quot;60,60,60,255,rgb:0.2352941,0.2352941,0.2352941,1&quot;/>&lt;Option name=&quot;line_style&quot; type=&quot;QString&quot; value=&quot;solid&quot;/>&lt;Option name=&quot;line_width&quot; type=&quot;QString&quot; value=&quot;0.3&quot;/>&lt;Option name=&quot;line_width_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;offset&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;offset_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;offset_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;ring_filter&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_end_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_end_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;trim_distance_start&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;trim_distance_start_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option name=&quot;trim_distance_start_unit&quot; type=&quot;QString&quot; value=&quot;MM&quot;/>&lt;Option name=&quot;tweak_dash_pattern_on_corners&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;use_custom_dash&quot; type=&quot;QString&quot; value=&quot;0&quot;/>&lt;Option name=&quot;width_map_unit_scale&quot; type=&quot;QString&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; type=&quot;QString&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; type=&quot;QString&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
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
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <fieldConfiguration>
    <field configurationFlags="NoFlag" name="fid"/>
    <field configurationFlags="NoFlag" name="x"/>
    <field configurationFlags="NoFlag" name="y"/>
    <field configurationFlags="NoFlag" name="angle"/>
    <field configurationFlags="NoFlag" name="label_align"/>
    <field configurationFlags="NoFlag" name="nearest"/>
  </fieldConfiguration>
  <aliases>
    <alias name="" index="0" field="fid"/>
    <alias name="" index="1" field="x"/>
    <alias name="" index="2" field="y"/>
    <alias name="" index="3" field="angle"/>
    <alias name="" index="4" field="label_align"/>
    <alias name="" index="5" field="nearest"/>
  </aliases>
  <defaults>
    <default expression="" applyOnUpdate="0" field="fid"/>
    <default expression="" applyOnUpdate="0" field="x"/>
    <default expression="" applyOnUpdate="0" field="y"/>
    <default expression="" applyOnUpdate="0" field="angle"/>
    <default expression="" applyOnUpdate="0" field="label_align"/>
    <default expression="" applyOnUpdate="0" field="nearest"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" field="fid" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="x" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="y" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="angle" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="label_align" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint notnull_strength="0" field="nearest" exp_strength="0" constraints="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="fid"/>
    <constraint desc="" exp="" field="x"/>
    <constraint desc="" exp="" field="y"/>
    <constraint desc="" exp="" field="angle"/>
    <constraint desc="" exp="" field="label_align"/>
    <constraint desc="" exp="" field="nearest"/>
  </constraintExpressions>
  <expressionfields/>
  <previewExpression>"fid"</previewExpression>
  <layerGeometryType>1</layerGeometryType>
</qgis>
