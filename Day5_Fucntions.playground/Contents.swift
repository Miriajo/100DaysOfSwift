// Swift in Sixty Seconds
// Exercise by Miriam Sánchez - @Miriajo

import UIKit

// Printing messages
func printHelp() {
    let message = """
Welcome to My App!

Run this app inside a directory of images and MyApp will resize them all into thumnails.
"""
    
    print(message)
}

printHelp()


// Accepting parameters
func square(number: Int) {
    print(number * number)
}

square(number: 8)

// Returning values
func squareReturn(number: Int) -> Int {
    return number * number
}

let result = squareReturn(number: 8)
print(result)


// Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Miriajo")


// Ommiting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Miriajo")


// Default parameters
func greetDefault(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greetDefault("Miriajo")
greetDefault("Miriajo", nicely: false)


// Variadic functions
// Accept any number of parameters
func squareVariadic(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squareVariadic(numbers: 1, 2, 3, 4, 5)


// Throwing functions
// Using 'throw' swift allows to pass through funcs even if something is wrong
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// Runnig throwing functions - Always inside a do-catch and executing the func with try
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print ("You can't use that password")
}


// inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10 // we have to use always a var to call the func passing and getting the value
doubleInPlace(number: &myNum)


