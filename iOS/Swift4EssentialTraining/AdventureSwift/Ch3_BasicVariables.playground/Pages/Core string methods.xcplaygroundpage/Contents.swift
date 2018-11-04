/*:
 # Core string methods
 ---
 
 ## Topic Essentials
 There are several `String` methods that you'll no doubt use on a regular basis, and which we'll go over, including `contains`, `append`, `insert`, `remove`, and `split`. Feel free to refer to the documentation to see everything the `String` class offers.
 
 ### Objectives
 + Create a simple string called **welcomeText** that we can practice on
 + Use each of the mentioned class methods to alter the starting string
 */
// Test variable
var welcomeText = "Swift 4"

// More string class methods
welcomeText.contains("S")
welcomeText.contains("s")   // case sensitive
welcomeText.append(contentsOf: ", the adventure continues!")
welcomeText.insert(contentsOf: "Welcome to ", at: welcomeText.startIndex)
welcomeText.remove(at: welcomeText.index(before: welcomeText.endIndex))
welcomeText.split(separator: ",")

print(welcomeText)

/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
