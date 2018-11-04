# iOS 11 Development Essential Training: Application Architecture

by Todd Perkins
[www.linkedin.com/learning/ios-11-development-essential-training-application-architecture](https://www.linkedin.com/learning/ios-11-development-essential-training-application-architecture)

44m 58s  Beginner  Released: October 9, 2017

Understanding the architecture of iOS applications is key to building better apps. There is an organized flow behind the scenes: the application life cycle, which drives the sequence of events and tasks. Learning about these elements and their interactions is critical for any new developer. That's why this course is part of the iOS 11 Development Essential Training series. Join Todd Perkins, as he takes you through the life cycle; explains the difference between foreground and background events, view events, and background tasks; and shows how to find hidden bugs by viewing the true structure of your code with the Xcode Debugger.

## iOS application life cycle

[developer.apple.com/documentation/uikit/core_app/managing_your_app_s_life_cycle](https://developer.apple.com/documentation/uikit/core_app/managing_your_app_s_life_cycle)

## Foreground and Background events

Launching the app

* didFinishLaunchingWithOptions (only call the first time)
* applicationDidBecomeActive

Pressing home button

* applicationWillResignActive
* applicationDidEnterBackground

Reopening the application

* applicationWillEnterForeground
* applicationDidBecomeActive

Killing the application

* applicationWillTerminate

## View Events

viewWillDisappear(_ animated: Bool)
viewDidDisappear(_ animated: Bool)
viewWillAppear(_ animated: Bool)
viewDidAppear(_ animated: Bool)

When overriding the methods above it's important (a good practice) to **always call the super method beforehand**.

When running the applications, these methods are called (in these order)

1. didDinishLaunchingWithOptions
2. viewDIdLoad
3. viewWillAppear
4. viewDidAppear
5. applicationDidBecomeActive

Pressing Home Button

6. applicationWillResignActive
7. applicationDidEnterBackground

Reopening the application

8. applicationWillEnterForeground
9. applicationDidBecomeActive

## Backgroud tasks

Select your app in the *Project Navigator* and select the *Capabilities* tab.

Some options are available on;y to paid Apple Developers

Background Modes and other sub-options are there to be enabled.

## Finite Background tasks

In *AppDelegate.swift*

```swift

    // variable to hold our identifier
    var bgTask: UIBackgroundTaskIdentifier = UIBackgroundTaskInvalid

    // runs a timer (as a background task) when the app enters background
   func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

        var count = 0
        let timer = Timer.scheduledTimer

        bgTask = application.beginBackgroundTask(expirationHandler: {
            self.endBackground()
        })

        print("applicationDidEnterBackground")
    }

   func endBackground() {
        UIApplication.shared.endBackgroundTask(bgTask)
        bgTask = UIBackgroundTaskInvalid
    }

```

## Debugging view hierarchies

When the app is running we can click in the **Debug View Hierarchy** to get more details about our Views and even a 3D visualization of our app UI
