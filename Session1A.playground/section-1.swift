// Playground - noun: a place where people can play

// Declare a variable
var str : String = "Hello, World!"
// var variableName : type = value

// print the variable
println(str)

// Change the variable
str = "Hello, CS9033!"
println(str)

// Declare a constant
let constantStr : String = "Hello, World!"
println(constantStr)

//constantStr = "Hello, CS9033!"

// Some basic Swift Types
var lecture : Int = 1
let room : String = "RH601"
let isFun : Bool = true

// Swift has Type Inference, so we don't need to declare the type
var hasNoType = true

// Full Unicode String Support
// Strings are just a collection of characters
for character in "mouse" {
    println(character)
}

// Combining Strings
let a = "Hello, "
let b = "World!"
let c = a + b
println(c)

// String interpolation
let m = 3
let n = 4
let result = "\(m) times \(n) is \(m*n)"
println(result)

// Collections Arrays and Dictionaries

// Creating an Array of Strings with literals
var names = ["Bobby", "Jack", "Martin"]

// Create a Dictionary with literals
var numberOfLegs = [
    "Snake"   : 0,
    "Chicken" : 2,
    "Horse"   : 4
]

// Can use any type, but values must be consistent!

// Loops
// while loops
var i = 0
while i < 5 {
    println(i)
    i++
}

// for loops
for i = 0; i < 10; i++ {
    println(i)
}

// for..in loops
for name in names {
    println(name)
}

// Ranges
// Closed Range
for x in 1...5 {
    println(x)
}

// Half Closed Range
for x in 1..<5 {
    println(x)
}

// Looping with Dictionaries
for (name, legCount) in numberOfLegs {
    println("\(name) has \(legCount) legs")
}
// for (tuple) in dictionary
//
// Modifying Arrays
var shoppingList = ["eggs", "milk"]
shoppingList[0]
shoppingList.append("cheese")
shoppingList
shoppingList += ["flour", "bacon"]
shoppingList[0] = "ostrich eggs"
shoppingList
shoppingList[2...4] = ["bananas", "apples"]
shoppingList

// Modifying Dictionaries
numberOfLegs["spider"] = 357
numberOfLegs
numberOfLegs["spider"] = 8

// What if we ask a dictionary for a key/value that might not exist?
// We get what's called an Optional value
var kangarooLegCount: Int? = numberOfLegs["kangaroo"]
if kangarooLegCount == nil {
    println("Not Found")
} else {
    var legCount = kangarooLegCount!
    println("kangaroo has \(legCount) legs")
}

// Add the value
numberOfLegs["kangaroo"] = 2
kangarooLegCount = numberOfLegs["kangaroo"]
if kangarooLegCount == nil {
    println("Not Found")
} else {
    var legCount = kangarooLegCount!
    println("kangaroo has \(legCount) legs")
}

// Shortcut 
if let legCount = kangarooLegCount {
    println("kangaroo has \(legCount) legs")
}

// Note no parenthesis in If statements,
// but braces are required

// Switch Statements
var count = 0
switch count {
case 0:
    println("it slithers")

case 1:
    println("it hops")
    
case 2:
    println("it walks")
    
default:
    println("it crawls")
}
// Note: no break statements, cases do not fall through
// If we remove the default, we get an assertion

// more complex case matching
switch count {
case 0:
    println("it slithers")
    
case 1...5:
    println("it hops, walks")
    
case 6,8,10,12:
    println("it skips")
    
case 7,9,11,13:
    println("it dances")

default:
    println("it crawls")
}
