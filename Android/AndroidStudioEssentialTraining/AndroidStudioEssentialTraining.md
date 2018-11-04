# Android Studio Essential Training

https://www.linkedin.com/learning/android-studio-essential-training-2

by David Gassner

## Recommended Skills (and courses)

Java Programming

* Java Essential Training: Syntax and Structure
* Java Essential Training: Objects and APIs

Kotlin Programming

* Kotlin Essential Training

About Android Studio

* Based on IntelliJ IDEA Community Edition
* Announced at Google I/O 2013
* Version 1.0 released in late 2014
* Updated 2-4 times per year
* This course is using version: 3.1.1 (I'll be following with 3.1.4)
* Current "canary" version 3.2

Recent New Feature

* Java 8 language features
* Built-in support for Kotlin
* New layout editor
* Adaptive icon wizard
* XML and downloadable fonts

What about Eclipse?

* The original Android IDE was an Eclipse plugin
* No longer maintained
* Use Android Studio

## Installing Android Studio

* Don't leave any blank spaces in the Android SDK installation path (Windows)

## Hello World

* `MainActivity.java` controls the behavior of our activity
* `content_main.xml` xml layout file, viewed in design or text mode (tab in the bottom)

In the left panel we have the **Project scope** that shows us all the files on this project, while the **Android scope** (default) filters the most relevant files.

## Deploying to a real device

* To deploy to a real device on Windows we need the `Google USB Driver` from the SDK Tools. OSX works out-of-the-box, sorry!
* Update the phone driver with the one downloaded at `<sdk_path>/extras/google/usb_driver/`
* To enable developer mode, go to `Settting -> System -> About phone -> Advanced` and tap `Build number` seven times.
* Back one level to find Developer Mode
  * Disable `Stay Awake`
  * Enable `USB Debugging`
* With a real device connected we should see a Unauthorized device connected in the logcat on the Android Studio. (We should allow USB Debugging for this machine on the Android)

## Deploying to virtual devices

* When using Intel processors we can use INTEL HAXM (Hardware Accelerated Execution Manager), install this under `Tools -> SDK Manager -> SDK Tools`
* Then to install it, go to `<sdk_path>/extras/intel/Hardware_Accelerated_Execution_Manager/`. There is a .DMG for Mac and in Windows run `intelhaxm_android`

## Google Samples

[www.github.com/googlesamples](www.github.com/googlesamples) or inside Android Studio, at the startup screen, there we can see images and descriptions of these repositories.

## Instant Run

Supports **Hot**, **cool**, and **cold swaps** to speeds up deployment to Android devices.

**Hot Swap** - text changes
**Cool Swap** - add a new function, change strings in XML, adding or removing graphic files
**Cold Swap** - 

One limitation of this feature is when we work with multiple devices at same time.

## Tracing code execution with Logcat

"**Logcat Filters**", they have a priority order.

(Using Kotlin)
v - Verbose
d - Debug
i - Info
w - Warn
e - Error
a - Assert

`Log.d( tag: "MainActivity", msg: "onCreate")`

## Breakpoints and watch expressions

* Breakpoints only run in Debug Mode
* Similar to Visual Studio and other IDE's

## Monitor memory and CPU usage

There is a set of monitor tools in Android Studio. It's recommended to profile a real device, not a emulated one.

We can deploy this app to test this tools
[github.com/davidgassner/MemoryEater](https://github.com/davidgassner/MemoryEater)

In the **Android Profiler Window** select the device and app that is running.

## Exploring the UI

The Android Scope is very useful to show relevant files.
In the Gradle Scripts we find `build.gradle` files.
We have one for each module of your app and one for our project.

## Run commands in the terminal window

Add to your environment variable `$PATH` the path to `<sdk_path>\platform-tools`
There we have the `adb` command (Android Debug Bridge)
With it we can communicate to device for deploy and debugging.

`$adb devices`

App running in virtual device, uninstall app from terminal
`$adb uninstall <devices_package_name>`
`$adb uninstall com.example.helloworld>`

## Manage Project Dependencies

### Add Maven library dependencies

In an "empty" project, we have initially two `build.gradle` files. In the project-level script has setting that apply to all modules throughout our project.
There are declarations for Maven repositories here
`google()
jcenter()`
google and jcenter are places where libraries are stored online

google repository
jcenter is an open source collection

In our app-level `build.gradle` file, you'll find your `compileSdkVersion`, your `targetSdkVersion`, and your `minimum SdkVersion`. Your apps version, code and version name, and critically dow n here, your dependencies.

With every change to gradle files we need to resync our build.

We can change many of these settings, through a GUI, in the **Project Structure** (from the `File` menu). 

Example adding a JSON library from Google `gson`.

In the **Project Structure**, into the desired module, select the `Dependencies` tab and type part of the dependency name (all lowercase).

### Add JAR files with dependencies

To add JAR files that aren't in a repository (like in the previous section) we are going to exemplify with a JDOM library (JDOM.org). Is one of most popular ways of working with XML in Java, Kotlin, and other JVM languages.

binaries and download the last stable build from JDOM.
Extract it.
Using **Project Scope**, go to `app\libs` directory and drag the JAR file here.
We still not there yet, right click in the JAR file and select `Add as Libraty...`

### Create a module dependency

In the Project Scope, right click in our defeault `app` module and select `New -> Module`
To create reference to this new module we go to `File -> Project Structure`, we select the origin module (that will receive this depency, in our case the `app` module), then in the `Dependecies` tab we hit the `+` button, and select `Module dependency`, then we select the desired module.

## Edit Code and Layout files

### Convert Java to Kotlin

We can automatically convert Java to Kotlin in `Code -> Convert Java to Kotlin`  
In our `build.gradle` app file we may need to change the `compile` keyword to `implementation`  

If we want to keep both Java and (the new) Kotlin files, other approach is to create an new empty Kotlin file, with a similar name (implementing the same interfaces if needed), and the we copy/paste the original Java code to this new Kotlin file, a pop-up will ask to convert the pasted code to Kotlin. We may need to do some 'clean-up', like some any references not declared, but we can convert the most part successfully.

### Inspect and decompile Kotlin bytecode

With a Kotlin file selected, choose `Tools -> Kotlin -> Show Kotlin Bytecode`, the bytecode it's not 'human-readable', we click `Decompile` and we'll see an equivalent version in Java.

A simple data class in Kotlin, will generate getters, setters, equals, hashes and many other implementations in their Java equivalent. Pretty handy!

### Useful code editing shortcuts

We can print an awesome Cheat Sheet from `Help -> Keymap reference`

### Create and use live template

In Android Studio (and IntelliJ) **live template** is a **code snipet**

In java

* for a **toast** message: we type `toast` and press `Tab`
* logcat info: `logi` or 'log<letter_that_we_want>` and press `Tab`

There are tons of other useful Live Templates available in `Settings -> Editor -> Live Templates` and they are separated by cathegories. You can even create your own Live Templates.

### Code Refactor

This is one of the best things an IDE could do for us!

Rename (Shift + F6)  
Extract to a method - Selected the portion of the code to be extracted, `Refactor -> Refactor this -> Method`
We can **Clean Up Code** to automatically solve lots of problems in our code, like removing redundant casts.

### Layout Editor

This is one of the Android Studio's most valuable tools, you can create design using a WYSIWYG interface.

### Create vector and bitmap graphics

Project Windows `res -> drawable`, right click, `new -> Image Asset` or `Vector Asset`. We can use some Vector graphics that are bundled with Android Studio.

To use it in our Activity we put an `ImageView` component into it and then assign a drawable to it.
