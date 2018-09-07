# 3D Content Creation for Virtual Reality

with Craig Barr

## Real World Scale (part2)

In Maya -> Windows -> Setting/Preferences -> Preferences -> Settings
In there we can tweak the linear, angular, and other **working units**.
(default in Maya is centimeters/degrees).

We can tweak the **Grid Options** to adjust the grid to our needs.

Create -> **Measure tools** -> Distance Tools

We can **group** (CTRL + G) together the Object, the locators, and the measure. Then we can resize and the measure change dynamically!

## Building efficient models

Geometry always must be clean with nice edge flow, subdivides efficiently, deforms properly, and with texture beautifully

* Always use quads, it keeps a nice clean uniform mesh. (we don't need triangulate meshes, at least in games, because the game engine does that for us when building the game). Avoid triangles and N-gons.
* Clean geometry - uniform and balanced.
* Merge or weld all vertices
* Check face normals - smooth mesh preview
* Display border edges

* Use Smooth Edge (press 3 - and 1 to get to "normal view") to detect problems with the mesh
* We can detect overlap edges using the Heads Up Display (Windows Menu).
* We can use Face Normals (Display -> Polygons -> Face Normals) to detect wrong normals. We can select them and revert it, going to **Mesh Display -> Reverse**
* **Texture atlasing** is a technique where you can take several objects and uso one texture map across several objects.
* In **Hypershade** we can deal with Materials and Textures
* We can have a Metal texture map sitting beside a wood texture map, all on the same layout (the same image)
* When painting a texture, paint it as big as you can, cause that way you have the power to always scale down. For Unity, Craig recommends PNGs (some texture maps might be in the way of 60 megs, but Unity will scale it down for us)

## Exporting and ideal file formats for VR

VR projects relies in a few tried and true formats from game development.

* For geometry FBX
  * can embed textures and animation
  * can combine models or scene into one file
* OBJ
  * Mesh and basic material settings (good for static objects)
* Maya Files
  * .ma (Maya Ascii format)
  * allow you to work directly with the file

* Send-to Workflows
  * direct to unity or Unreal
  * Maya Game Exporter (export direct with one click)

* PNG
  * Excellent format for textures for VR
  * Lossless and alpha
  * Big file with lots of details, and the Engine handles the compression
* TGA
  * old, tried
  * supports 32 bits (alpha channel as well)
* PSD (Photoshop)
  * allow you to work directly with the file

Avoid JPEG and JPG, they are compressed.

## Quality testing in VR

One simple rile defines all of our content creation: **WYSIWYG**  
Scale, clean models, good textures, good object placement are essential for VR.  
**Modify -> Snap Together** tool (select one face, then the other and press enter)

### To export to Unity

* Select what you want
* File -> Export Selection
* Select **Embed Media**

## Light (creating a mood)

There are some things to know with lighting for virtual reality. Bright lights and bold or harsh colors can very negatively impact the viewer experience in virtual reality. It's always good idea to err on the side of lower light and color values. Keep things more dim and subtle than you might in a game or visualization environment that would be viewed on a flat screen.

## Preventing "VR Sickness"

* Viewer Control (of the camera)
* Leave field of view alone
* Avoid camera movement: bob and shake
* Avoid depth of field and motion blur
* Dim the lights and cooler shades of color
* Avoid stairs and use lifts or elevators
* Maintain constant speeds
* Finally, check often with others - the best tester is not yourself

## Frame rate tools for VR

Profilers and FPS counters

Performance Profilers

* Unity, Unreal

FPS Counters

* FRAPS.com
* Nvidia Geforce Experience

## Creating VR in VR

* Google Tilt Brush
* SculptrVR
* MakeVR

Plugins

* mOculus for Maya
* 