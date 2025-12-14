
# QGIS SmartLineLabeler Plugin

This is a QGIS Python plugin that helps us to dynamically create stacked line labels.
It is very useful for labeling pipes and cables (especially when several lines overlap).

Since the configuration requires several steps, I would like to demonstrate the functionality of the plugin using the sample project (`./examples/SmartLineLabeler_Example.gpkg`).

![SmartLineLabeler Example](../main/images/image1.png)

This sample project includes some underline telecom cables from ArcGIS Online (https://services.arcgis.com/nzS0F0zdNLvs7nc8/arcgis/rest/services/UnderseaTelecomCables_2018/FeatureServer)

## Basic Plugin Usage

I start with a simple demonstration of the basic plugin usage.
Let’s open the QGIS project “No Labels” from the included GeoPackage file “SmartLineLabeler_Example.gpkg”. As baselayer we can load the Natural Earth World Map by typing the keyword “world” in the QGIS coordinates bar.

After activating the SmartLineLabeler plugin (![SmartLineLabeler Icon](../main/images/image2.png)) a toolbar will appear on top of map canvas.

![SmartLineLabeler Toolbar](../main/images/image3.png)

The Source Layer “underline_telecom_cables” is automatically selected, because it is the only Line Layer in the project. We can ignore the “Label Layer” selection because we will be creating a new temporary label layer. The “Label Layer” selection is required if we want to save the labels in an existing label layer.

With “ID Column”, we can select an attribute field from the Source Layer that is needed to connect the Label Layer to the Source Layer (the primary key is automatically selected).

That’s all for now, we can create the first label stack.
We pick a point on the map and drag the rubber band line over a cable bundle.
The direction of the right angle indicates the label direction. When we select a second point, a new temporary label layer (“undersea_telecom_cables_labels (memory)”) is created and the first label stack is inserted.

![SmartLineLabeler first label stack](../main/images/basic1.gif)

The feature IDs are displayed as defaults.
Next, we select the new label layer in the “Layers” panel and open the Layer Labeling Options.

![Layer Labeling Options](../main/images/image5.png)

Here we can replace the feature ID with a different attribute using the 
Expression Builder (![Expression Builder Icon](../main/images/image6.png)).

![Expression Builder](../main/images/image7.png)

![Expression Builder Detail](../main/images/image8.png)

The plugin uses HTML label formatting because it offers many more style options than labels without HTML formatting (e.g., bold font, underlining, etc.).

![SmartLineLabeler Basic Labeling](../main/images/image9.png)

If we want to adjust the direction of the labels to the line direction, we can do so before picking the second point by using the <kdb>Shift</kbd> key and simultaneously selecting a line feature.

But first, let's delete the label stack we just created: toggle the label layer into Editing mode, select the leader lines and press the <kbd>Delete</kbd> button.

![SmartLineLabeler adjust Label Direction](../main/images/basic2.gif)

While dragging the rubber band line, we can press the <kbd>F5</kbd> key to toggle the text alignment.

![SmartLineLabeler toggle Text Alignment](../main/images/basic3.gif)

If we press the <kbd>Ctrl</kbd> key while picking the second point, we create an additional fixed reference point. We can again use the <kbd>F5</kbd> key to toggle the text alignment.

![SmartLineLabeler use Reference Point](../main/images/basic4.gif)

Now that we have created several stacks of labels, we can observe their behavior during a zoom.

![SmartLineLabeler Zoom Behavior with MM Units](../main/images/basic5.gif)

We note that the text height on screen does not change. This is because the text size units are set to MM units by default. This is very useful if we want to use smart labels in a Web Mapping project. However, if we want to use text sizes as in a CAD system, we have to change the text size units to Map Units.

We open the Layer Labeling Options of the label layer again and set the Text Size to 5000 Map Units.

![SmartLineLabeler change Label Units](../main/images/image14.png)

Then, we press the “Label Settings” tool button to adapt the plugin settings:

![SmartLineLabeler Label Settings Icon](../main/images/image15.png)

![SmartLineLabeler Label Settings](../main/images/image16.png)

As a final step, we need to update the existing labels by pressing the “Update Labels” button in the plugin toolbar.
![SmartLineLabeler Update Labels Button](../main/images/image17.png)

When we zoom in now, the size of the label texts changes.

![SmartLineLabeler Zoom Behavior with Map Units](../main/images/basic6.gif)

That's it for the basic usage, but there's more…

## Advanced Plugin Usage

Of course, we are not satisfied with single-line labels. We want label blocks that contain any number of line breaks.

![SmartLineLabeler Advanced Labeling](../main/images/image19.png)

There is a field called “owners” in the “undersea_telecom_cables” layer, which we want to insert under the name of the cable, as shown in the figure above.

The problem we are facing here is that some cables have a large number of owner names separated by commas. In this case, it would be helpful if we could insert a line break after every third comma, for example.

To be completely honest, I searched the internet for a solution and came across a corresponding regular expression (I use ‘||’ instead of ‘\n’ as line feed character and remove the last comma with the rtrim function).

`regexp_replace( rtrim("owners",','),'((?:.*?,){4}.*?),','\\1  ||')`

I think there are other solutions that could work, but this regex serves its purpose.
Next, we add a new field “txt” to the cable layer. If we don't label too many cables, the field can also be virtual.

To add the field, we open the Field Calculator of the cable layer (Layer Properties > Fields > Field Calculator).

![Field Calculator - field "txt"](../main/images/image20.png)

To support multiline text fields, the plugin looks for a number field called “label_offset”. If it is available and includes a valid value, the plugin takes the offset from there. And, best of all, the “label_offset” field can be virtual as well.

So, let’s add the virtual integer field “label_offset” to the cable layer with the following expression value to calculate each label offset:

`(1 + array_length( string_to_array("txt",'||'))) * 7000 + 8000`

![Field Calculator - field "label_offset"](../main/images/image21.png)

Now, we must adapt the expression for the label text…

```
CASE WHEN "x" IS NOT NULL THEN  '<h2 style="color:#2b435d; text-decoration: underline;">'
|| "undersea_telecom_cables_Name" || '</h2><div>&nbsp;' 
|| "undersea_telecom_cables_txt" || '</div>'
END
```

![Expression Builder](../main/images/image22.png)

…and configure the characters for the line wrap (“||”).

![Configure Characters for Line Wrap](../main/images/image23.png)

If we like, we can configure a background to our labels.

![Configure Label Background](../main/images/image24.png)

As a final step, we need to click on the “Update Labels” button in the plugin toolbar.

> [!TIP]
> We should also limit the display of labels to a certain scale range (Label Layer Properties > Rendering)
>
> ![Scale Dependent Visibility for the Label Layer](../main/images/image25.png)

If we make a mistake and select the wrong starting point, we can press the right mouse button to cancel the current operation.

![SmartLineLabeler Advanced Usage](../main/images/advanced1.gif)

If the labels are too close to the cables, we can change the initial distance to the cables (This only works for labels that do not have a fixed reference point.). In addition, we can change the length of the labeling ticks at any time.

![SmartLineLabeler Change Distance and Tick Length](../main/images/advanced2.gif)

And we can automatically remove labels, if we filter the cable layer.

![SmartLineLabeler filter Source Layer](../main/images/advanced3.gif)

To update the labels, we must click on “Update Labels” after each change.

## Saving the Labels permanently

So far, we have created all labels on a memory layer. A few additional steps are required to save the labels permanently.

First, we open the Layer Property dialog of the memory layer and remove all layer joins.

![SmartLineLabeler Layer Join](../main/images/image29.png)

Then we save the memory layer to the GeoPackage file of the example project (SmartLineLabeler_Example.gpkg). We could save the memory layer to a different file or into a database as well. We use the same name as the cable layer with suffix ‘_labels’ (“undersee_telecom_cables_labels”).

If the Source Layer is connected to the Label Layer via the `fid` field, we need to assign a different name for FID in the Layer Options (e.g. “newfid”).

![Export Label Layer](../main/images/image30.png)

After the new label layer is loaded into the layer tree, we must copy the style settings from the old label layer, join the new label layer with the source layer, rename the new label layer and update the selections in the plugin toolbar.

![SmartLineLabeler make Label Layer permanent](../main/images/advanced4.gif)

> [!TIP]
> If you save your QGIS project as .qgs or .qgz file, you can use the Memory Layer Saver plugin to make the label layer permanent. At the time of writing, the Memory Layer Saver plugin did not work with projects stored in GeoPackage files.

## Known Problems and Limitations ##

In most cases, the plugin works as expected. However, sometimes there are problems with text length due to different fonts. It seems that QGIS (Qt) has difficulty calculating the exact text length when we select Meter Units.

![SmartLineLabeler Problems](../main/images/image32.png)

I have achieved good results with the Open Sans font from Google (Medium Style).
https://fonts.google.com/specimen/Open+Sans

It should also be noted that line layers with a geographic coordinate system (i.e. `EPSG:4326`) cannot be selected. They must first be projected onto the plane.



