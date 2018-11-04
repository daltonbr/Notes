/*:
 # Basic Operators
 ---
 
 ## Topic Essentials
 Operators in Swift are used to perform various functions, such as value assignments, mathematics, equality and logic comparisons, and declaring ranges.
 
 ### Objectives
 + Understand the different operators and their basic uses
 */
// Arithmetic (+, -, /, *)
var usingMath = 5 + 4 - 3 / 2 * 1

// Remainder/Modulo
var hpRemainder = 10 % 9

// Compound assignments (+=, -=, *=, /=, %=)
var currentHP = 15
currentHP -= 5

// Comparisons (==, !=, >, <, >=, <=)
var hp = 90
var mp = 100

hp == mp
hp != mp
hp <= mp

// Ternary operators
var bonusPoints = hp < 50 ? 25 : 50

// Logical operators (!, &&, ||)
var isRunning = true
var isJumping = !isRunning
isRunning && isJumping
isRunning || isJumping

// Ranges
/*
 Closed Range: 1...5
 Half-Open Range: 1..<5
 */
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
*/

