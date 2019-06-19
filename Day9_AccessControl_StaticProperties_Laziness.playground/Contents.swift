// Swift in Sixty Seconds
// Exercise by Miriam Sánchez - @Miriajo


import UIKit


// Initializers

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws2"


// Referring to the current instance

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}



// Lazy properties -- the property will be created only if it is used at least once

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {

    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
    
}

var ed = Person2(name: "Ed")
ed.familyTree



// Static properties and methods -- only can be used/updated inside the struct

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")

print(Student.classSize)


// Access control -- Limit with private vars or functions that everybody can access to some info

struct PersonId {
    
    private var id: String
    
    init(id: String) {
        self.id = id
    }

    func identity() -> String {
        return "My social security number is \(id)"
    }
}

let ed3 = PersonId(id: "12345")
ed3.identity()

