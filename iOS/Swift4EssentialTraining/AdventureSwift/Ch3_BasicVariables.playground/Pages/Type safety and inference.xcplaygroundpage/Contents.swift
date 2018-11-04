/*:
 # Type safety and inference
 ---
 
 ## Topic Essentials
 Swift is a **type safe** language. When you assign an initial value to a variable the Swift compiler will infer its type without you having to specify it. If you need an empty variable with no initial value, you will need to use a type annotation to let the compiler know what value type to expect later on.
 
 ### Objectives
 + Declare a variable with an initial value and no type annotation
 + Declare a variable with a type annotation and no initial value
 + Create a variable with a type annotation and an initial value
 + Create multiple variables of the same type with a single type annotation
*/
// Variable - type inferred
var inventorySlots_inferred = 5
//inventorySlots_inferred = "Hello"

// Variable - type annotation
var inventorySlots_explicit: Int
inventorySlots_explicit = 15
//inventorySlots_explicit = 15.1

// Variable - type annotation and inferred
var equipmentSlots_superExplicit: Double = 5

// Multiple variables - type annotation shorthand
var gold, mana, skillPoints: Int
gold = 150
print(gold)
mana = 4
print(mana)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
