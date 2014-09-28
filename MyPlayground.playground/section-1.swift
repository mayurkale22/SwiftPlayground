// Playground - noun: a place where people can play

// Variable declarations
var str = "Hello, playground"
var i = 0;
var len : Int = 10;
var myName : String = "Mayur";
var isFun : Bool = true;
var myFloat : Float = 3.14;

//if loop
if len > i {
    println("\(len) Greater \(i)");
}

// for loop
if isFun {
    for character in str {
        print(character)
    }
    println("");
}
for object in ["apple", "pear", "strawberry"] {
    println("\(object)")
}

// while loop
var num = 0;
while num < 10 {
    num++;
}

// collections Array
var arr = ["A", "B", "C"]
arr.append("E")
arr[3] = "D"
arr.count
for char in arr {
    println(char)
}

//collections dictionary
var myDict = [
    "Snake"   : 0,
    "Chicken" : 2,
    "Horse"   : 4
]
// looping with dictionaries
for (animal, legs) in myDict {
    println("\(animal) has \(legs) legs...");
}

// modifying dictionary
myDict["spider"] = 40
myDict
myDict["spider"] = 35

// looping with dictionaries
for (animal, legs) in myDict {
    println("\(animal) has \(legs) legs...");
}

// Switch Statemdents
var count = 2
switch count {
case 0...5:
    println("It's hops...")
case 10,40,20:
    println("It's walks...")
case 20:
    println("It's crawls...")
default:
    println("It's slithers")
}


// functions
func addNumber(numberOne:Int, numberTwo:Int) ->Int {
    return numberOne + numberTwo
}
addNumber(22, 11);


// Classes

class Sandwitch {
    var price = 19
    let items = ["Green", "Roasted", "Cheese", "Simple"]
    
    func menuCard(index:Int) ->String {
        return items[index]
    }
}

var mySandwitch = Sandwitch()
println(mySandwitch.menuCard(2))


 