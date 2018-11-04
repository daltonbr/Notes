/*:
 # Basic strings
 ---
 
 ## Topic Essentials
 The Swift `String` class is a key building block of any application you build. A string is literally a collection of characters strung together that can be manipulated, mutated, and accessed in a variety of ways. The `String` class is Unicode compliant and can also handle standard special characters.

 ### Objectives
 + Create a string called **characterName** and assign it a value
 + Add another string to **fullCharacterName** using operator shorthand
 + Create a string called **characterDescription** and use string interpolation to insert **fullCharacterName**
 + Explore some of the common string class methods 
 */
// Declaring strings
var emptyString = ""
var emptyString2 = String()
var characterName = "Dalton"

// Concatenation
var fullCharacterName = characterName + " Varussa de Oliveira "
fullCharacterName += " Lima"

// String interpolation
let characterDescription = "Welcome \(fullCharacterName)! Are you ready to start your Swift Adventure?"
print(characterDescription)

// Common class methods
characterName.count
characterName.isEmpty
emptyString.isEmpty
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
