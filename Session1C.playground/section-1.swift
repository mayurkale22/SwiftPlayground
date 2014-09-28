// Playground - noun: a place where people can play

// Classes
class Vehicle {
    // Properties
    var numberOfWheels = 0
    
    var description: String {
//       get {
            return "\(numberOfWheels) wheels"
//       }
//       set {
//       }
    }
    // Methods
    // Initializers
}

// Computed Properties are always VAR
// If Computed Property only has GET, it is readonly
// If Computed Property is readonly, can remove the GET

let someVehicle = Vehicle()
someVehicle.numberOfWheels
someVehicle.description

// Subclassing
class Bicycle : Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

let myBicycle = Bicycle()
myBicycle.description

// Overriding Properties in Subclasses
class Car : Vehicle {
    var speed = 0.0
    override init() {
        super.init()
        numberOfWheels = 4
    }
    override var description: String {
        return super.description + ", \(speed) mph"
    }
}

// Property Observers
class ParentsCar : Car {
    override var speed: Double {
        willSet {
            println(newValue)
        }
        didSet {
            println(oldValue)
        }
    }
}

// Class Methods
class Counter {
    var count = 0
    
    func increment() {
        count++
    }
    
    func incrementBy(amount: Int) {
        count += amount
    }
    
    func setTo(count: Int) {
        self.count = count
    }
}


