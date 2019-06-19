// Swift in Sixty Seconds
// Exercise by Miriam Sánchez - @Miriajo

import UIKit

// Creating classes

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poddle")


// Class inheritance

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poddle")
    }
}



// Overriding methods

class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poodle2()
poppy2.makeNoise()


// Final classes -- no other class can inherite from it, and no override methods


// Copying objects - if it is a class, they copied object is using the same memory space than the original one. If it would be a struct it would be a different memory space
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singerCopy.name)


// Deinitializers - it is run when an instance of a class is destroyed

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }

    deinit {
        print("\(name) is no more!")
    }
    
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


// Mutability -- if you want to avoid anyone can change a class property you must declare it with 'let' instead of 'var'





