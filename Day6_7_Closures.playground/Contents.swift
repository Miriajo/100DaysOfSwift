// Swift in Sixty Seconds
// Exercise by Miriam Sánchez - @Miriajo

import UIKit

// Basic Closures
let driving = {
    print("I'm driving in my car")
}

driving()

// Accepting parameters
let drivingParams = { (place: String) in
    print("I'm going to \(place) in my car")
}

drivingParams("Madrid")


// Returning values
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("Toledo")
print(message)


// Closures as Parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)


// Trailing closure syntax
travel {
    print("Here I am")
}


// Closures as parameters when they ACCEPT parameters
func travelParam(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("Salamanca")
    print("I arrived!")
}

travelParam { (place: String) in
    print("I'm going to \(place) in my car")
}


// Closures as parameters when they RETURN parameters
func travelReturn(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Asturias")
    print(description)
    print("I arrived!")
}

travelReturn { (place: String) in
    return "I'm going to \(place) in my car"
}


// Shorthand parameter names
travelReturn {
    "I'm going to \($0) in my car"
}


// Closures multiple parameters
func travelMultiParams(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("Asturias", 120)
    print(description)
    print("I arrived!")
}

travelMultiParams {
    "I'm going to \($0) at \($1) Kms per hour."
}


// Returning closures from functions
func travelClosureReturn() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let resultClosureReturn = travelClosureReturn()
resultClosureReturn("Málaga")

let resultClosureReturn2 = travelClosureReturn()("Marbella")


// Capturing values
func travelClosureReturn2() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let resultClosureReturn3 = travelClosureReturn2()
resultClosureReturn3("London")
resultClosureReturn3("London")
resultClosureReturn3("London")
resultClosureReturn3("London")

