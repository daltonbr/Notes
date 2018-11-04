/*:
 # Chapter Challenge: Player Stats
 ---
 ### Tasks:
 1. Create 2 variables called **characterName** and **characterClass**, and assign them string values.
 2. Use a compound assignment operator to add your last name to **characterName**
 3. Create a variable called **hpPercentDouble** (assign it 75.53)
 4. Create another variable called **hpPercentInt** and assign it the value of **hpPercentDouble** converted to an integer
 5. Create a string variable called **playerString** and assign it your player info in a creative way
 6. Use the `print` statement to log out **playerString**
 7. Create a boolean variable called **isAlive** and assign it `true`
 8. Use the `append` method on **playerString** to interpolate the **isAlive** variable in some way
 */
// 1
var characterName = "Dalton"
var characterClass = "Barbarian"

// 2
characterName += " Lima"

// 3
var hpPercentDouble = 75.53

// 4
var hpPercentInt: Int = Int(hpPercentDouble)

// 5
//var playerString = characterName + " is playing as " + characterClass
var playerString = "Name: \(characterName) --- Class: \(characterClass)\n\n  Stats: \(hpPercentInt)%HP\n\n"

// 6
print(playerString)

// 7
var isAlive: Bool = true

// 8
//isAlive = !isAlive
//playerString += isAlive ? " and it is ALIVE!" : " and sadly, it is DEAD!"
playerString.append("Currently Alive: \(isAlive)")
print(playerString)
//: [Previous Topic](@previous)
