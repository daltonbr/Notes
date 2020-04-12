# Maya to Unity

[learn.unity.com/tutorial/maya-to-unity](https://learn.unity.com/tutorial/maya-to-unity)

## Exporting Dwarf Rig as FBX

We are going to export only the model without any animations.
For this process we are using a referenced model.

1. Certified that Maya FBX plugin is loaded.
2. Set the timeline to **show only the 2 first frames**.
      * We just need the joints and the geometry, so we need to get rid of the controls curves and the constrains. Still is not just deleting them. We are going to bake all this joints down to work independently of the controls and constrains.
3. Show the skeleton layer (joints), and remove the reference from the layer.
4. To select all the joints easily go to **Select -> All by type -> Joints**.
5. Ctrl + click in the geometry.
6. **Edit -> Keys -> Bake Simulation**, then reset the settings in the pop up and hit **Bake**.
7. Delete all Control curves, but first we need to **Import Objects from Reference**, because this rig is referenced in the scene.
    * **File -> Reference Editor -> Choose again the rig file -> Right Click on it -> File -> Import Objects from Reference**.
8. Now we can delete all the Control Curves and Constrains.
9. We can delete all other strange objects than Joints and Geometry, like lights.
10. **Select -> All by type -> Joints**
11. Ctrl + click in the geometry.
12. File -> Export Selection
     * Name it accordingly (e.g. DwarfModel)
     * Disable Animation export, since we don't want any animations here.
     * Hit Export Selection button.

## Exporting the Run Cycle as FBX (an animation from the previous rig)

1. Show the skeleton layer (joints), and remove the reference from the layer.
2. To select all the joints easily go to **Select -> All by type -> Joints**.
3. Ctrl + click in the geometry.
4. **Edit -> Keys -> Bake Simulation**, then reset the settings in the pop up.
     * Before hitting **Bake**, we may need to adjust the timeline to get the appropriate frames that we want to export. One possible issue is to remove duplicated frames in the begin and end of the timeline.
     * We are going to bake again in the export step (last one), but this bake is more to verify quality of the animation.
5. Delete all Control curves (and other things that we don't need like Constrains), but first we need to **Import Objects from Reference**, because this rig is referenced in the scene.
      * **File -> Reference Editor -> Choose again the rig file -> Right Click on it -> File -> Import Objects from Reference**.
6. Now we can delete all the Control Curves and Constrains.
7. We can delete all other strange objects than Joints and Geometry, like lights.
8. **Select -> All by type -> Joints**
9. Ctrl + click in the geometry.
10. File -> Export Selection
     * Name it accordingly (e.g. RunCycle)
     * Enable Animation export.
       * Select the start/end frames desired to bake (we are baking once again here).
     * Hit Export Selection button.
