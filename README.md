# ut4_skeet_garden
Competition map for skeet shooting modification to ioq3.

You can create a ready to play .pk3 from this repository, zip the following folders:

* env
* scripts
* maps
* models
* textures
* sound
* video
* levelshots

Rename the .zip to be ut4_skeet_garden.pk3 and copy to your maps folder.

The repository also includes a "additional_resources" folder, this folder includes the .map file so you can examine how the skeet objects are placed in the editor. The folder also includes the models you will need if you want to re-compile the map.

How to add a skeet to your own map using gtkRadiant (1.65):

1) Place a misc_model, select the model models/mapobject/skeetshoot/skeetmodel.md3
2) Copy the models origin key value. This is required in the next step
3) Create a brush which fits this model and texture with common/weaponclip
4) Right click the brush in the 2d view and select func_static from the entities options
5) Press n key to bring up the entity properties box and add the following key pairs

model2 : /models/mapobjects/skeetshoot/skeetmodel.md3
noise: sound/skeet_garden/launcher.wav
origin: (paste the value copied from the skeet model), 3 pairs of numbers eg. -32 736 -8

6) Close the entity properties window. That's a single skeet placed. You will need to repeat this for each skeet you wish to add to the map.

The model can be any model you want, you can create your own model and add it to your own map. The sound effect isn't currently used but included in case the mode is further developed.

If you do add your own model, it will need to be a .md3 with a shader or simple texture. Other formats are not allowed.

OPENGL2 RENDERER

This map also includes a shader file that supports the sunlight features in the renderer.
