# Building a Note Taking App for iOS 11 with Swift

by Todd Perkins

2h 2m  Beginner  Released: February 26, 2018
Create your first iPhone app while you learn the basics of Swift and Xcode. In this course, Todd Perkins shows how to create iOS 11 apps using the Swift programming language and the Apple integrated development environment, Xcode 9. First, learn how to build a simple user interface from a table view controller and connect the view to a data source. Find out how to build the functionality to allow users to delete, edit, and save notes, and discover how to transition between different views in your app. Todd also shows you how to display an on-screen keyboard and dynamically control the size of text. By the end of the course, you'll have built a fully functional iPhone app and developed the skills to build out your own app ideas.

Source code for the final version (Xcode project) [github.com/daltonbr/ToDoApp](https://github.com/daltonbr/ToDoApp)

## Get Started

### Features

* Creating and editing simple text-based notes
* Navigating and data sharing between multiple screens
* Saving data to a mobile device's persistent storage
* Easily discoverable command patterns to accept user input

### Cross-Platform Goals

* Same app on multiple operating systems
* Best performance
* Broadest access to device features
* Direct support from vendor

We can have most of these benefits using Native Tools like Swift and XCode

### Optional values in Swift

**Optionals** are variables that could not have a value

```swift
//: Playground - noun: a place where people can play

import UIKit

// standard variable
var str1:String = "Example"
str1.replacingOccurrences(of: "Ex", with: "S")

// optional (?) variable
var str2:String? = nil
str2?.replacingOccurrences(of: "Ex", with: "S") // standard unwrap
//str2!.replacingOccurrences(of: "Ex", with: "S") // force unwrap

// implicitly unwrapped optional (!) variable
var str3:String! = "Example"
str3.replacingOccurrences(of: "Ex", with: "S")
```

### Apply an app icon

Select `Assets.xcassets` into our project and the fill the icons in there.

Apple has some guidelines regarding icons and other forms of visual styling.
Apple recommends to NOT use transparency, not creating borders around these images.

## Create the Table and a Data Source

After inserting a **Table View** to our app, expand it to the borders of the device and press `Shift + Opt + Cmd + =` (`Editor -> Resolve Auto Layout Issues -> Reset to Suggested Constraints`) to apply Constraints to it, this way our Table view will automatically resize to other devices.

### Reuse Cells

When you create UItable view cells, Apple recommends that you don't create a new one for every cell in your table view. Rather, the recommended way, by Apple, to create UItable view cells is to create a reusable table view cell. To do that, you need an identifier for the table view cell.

## Wrap a table view in a navigation controller

Select the *Table View* and click `Editor -> Embed in -> Navigation Controller`
