// Playground - noun: a place where people can play

// Functions
func sayHello() {
    println("Hello")
}
sayHello()

func sayHelloTo(name: String) {
    println("Hello, \(name)")
}
sayHelloTo("World!")

func sayHelloWithDefault(name: String = "CS9033!") {
    println("Hello, \(name)")
}
sayHelloWithDefault(name: "World!")
sayHelloWithDefault()

// Functions with return values
func buildGreeting(name: String = "World!") -> String {
    return "Hello, " + name
}

let greeting = buildGreeting()

// Functions with multiple return values
func refreshWebPage() -> (Int, String) {
    return (200, "Success")
}
// The return value is a Tuple
let (code, message) = refreshWebPage()
println("\(code) : \(message)")

// Named values in the Tuple
func refreshWebPage2() -> (code: Int, message: String) {
    return (200, "Success")
}
let status = refreshWebPage2()
println("\(status.code) : \(status.message)")

// Closures
let greetingPrinter = {
    println("Hello, World!")
}

// Closure as a function parameter
func repeat(count: Int, task: () -> ()) {
    for i in 0..<count {
        task()
    }
}
repeat(3, { println("Hello") })

// When Closure is last parameter
repeat(3) { println("Hello, again") }
