# Cert Prep: Unity Particle Systems, AI, and Audio

by Alan Torn

[www.linkedin.com/learning/cert-prep-unity-particle-systems-ai-and-audio](https://www.linkedin.com/learning/cert-prep-unity-particle-systems-ai-and-audio)

A great example of lots of great Particle Systems is available in the Asset Store

## AI

### Pathfinding with Navmesh

Every **Nav Mesh Agent** should be facing the **Z** Axis.

Create a NavMesh into the scene, tweak and bake the parameters.
Add a NavMeshAgent to the NPC, tweak and bake the parameters.

[Example of NavMeshAgent use](AgentAI.cs)

#### Moving Objects into the Environment (NavMeshObstacles)

Just add a `NavMeshObstacle` to an GameObject (`Component -> Navigation -> NavMeshObstacle`).

#### Disconnected navigation meshes

We can set _teleportation Pads_ or _jumping points_ as a way to plug together disconnected nav meshes.

We use `Offmesh Links`

### Finite State Machines (FSM)

-> Idle <-> Chase <-> Attack <-

[An example of a FSM](AgentAI2.cs)

## Audio

We can use `.wav` and `.ogg`

For short, very used sounds like footsteps, gun shots, pickups, we can use some settings like these:

```
Load Type = Decompress On Load
Preload Audio Data = true
```

For other tracks, like background music we can use these settings:

```
Load Type = Streaming
Preload Audio Data = false
```

This breaks the music into chunks, and make our loading times much faster.

### Audio Sources and Listeners

