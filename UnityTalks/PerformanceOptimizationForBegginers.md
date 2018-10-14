# Performance Optimization for Begginers

## About

My notes from a talk from Unite Europe 2017

In this introductory talk, you'll learn the basics of performance optimization and how to use Unity's profiling tools to help get your game running quickly and smoothly. You'll also learn some useful best practice optimization tips.

Note: Around 24:00 we recommend using a StringBuilder to reduce garbage when building complex strings. We incorrectly state that this is because StringBuilder is a stack object. A StringBuilder is a heap object that is designed to be manipulated.

[Youtube Video](https://www.youtube.com/watch?v=1e5WY2qf600)

### Authors

Matt Schell - Unity Technologies 
Kerry Turner - Unity Technologies
For more information on Unite Europe and future Unite events visit this page. https://unite.unity.com/

## Can't you just tell me how to reduce my draw calls or something?

* No.
* Performance are unique to every game. There are no hard and fast rules.
* What helped other people won't necessarily help you.
* Don't try to fix anything until you know what's wrong.

## What should I be doing, then?

* Every time your game has a performance problem, you must:
  * profile your game
  * analyse the prfiling data
  * make a change
  * profile the effects of that change

## What even is performance?

* FPS - frames per second
  * 60 fps is desirable
  * 30 fps is ok, bellow that it becomes jerky and it's noticeable
  * **Consistency** is better yet, changes in refresh rates are noticeable by the player
* Games like puzzle doesn't require faster Frame rates as action games for instance. 

## What happens during a frame?

* The CPU updates the game state.
* The CPU works out what must be draw to the screen.
* The CPU sends instruction to the GPU.
* The GPU draws things accordingly to the CPU's instructions.

## What can make a frame slow?

* Trying to do too much (every system has its limits)
* Bottlenecks
  * CPU-bound
  * GPU-bound

## Profile, analyze, change, repeat

Profilling is the process measuring aspects of our game performance at runtime.

If possible you should profile using a build of your game, avoid using the Editor. The editor puts an overhead to it.

You should profile as close to the _real life_ as possible, especially for mobile, when some problems may appear only in the real device.

## How do I know what changes to make?

* If it's a Unity System like rendering or physics, search for it or ask for help.
* If it's code you wrote, work out which functions are causing the problem and why.

### Slow Scripts

You can use **Deep Profiling** and enable it in the Editor only, it has a big overhead, but it can show more details about what is happening inside your code.

### How can I write code that runs faster?

* Fix inefficient code
* Beware of expensive function calls
* Don't run code more frequently than it needs to
* Do less

## Garbage Collection

Unity manages memory using one.

Unity has two memory pools: Stack and Heap

Garbage is Heap memory that isn't used anymore.
The column GC ALOC is where you can seek for memory allocated.

### How do I reduce the impact of garbage collection?

* Replace heap allocations with stack allocations where you can
* Treat garbage-generating code like expensive code
* Read around the subject

StringBuilder in C# is a good tool to use for instance.

### I know you said there aren't any rules but tell me some anyway

* Profile, analyse, change, repeat
* Profile your game in worst-case conditions
* Don't worry about this stuff unless you actually need to (personally I don't agree 100% with this one)

Check more Performance Optimization in Unity Tutorials!