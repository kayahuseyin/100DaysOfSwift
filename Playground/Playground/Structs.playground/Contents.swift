import UIKit

//initializers
struct User {
    var username: String

init() {
    username = "Anonymous"
    print("Creating a new user!")
    }
}
var  user = User ()
user.username = "twostraws"
//Don't write func before initializers


//Self(biliyorum)
struct Person {
    var name: String
    
    init (name: String) {
        print ("\(name) was born!")
        self.name = name
    }
}
//Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct PersonTwo {
    var name: String
   lazy var familyTree = FamilyTree()
    
    init (name: String){
        self.name = name
    }
}

var ed = PersonTwo(name: "Ed")
ed.familyTree
// If we add the lazy keyword to the familyTree property then Swift will only create the familyTree struct when it's first accessed.

//Static properties and methods

struct Student {
    static var classSize = 0 //Her yeni öğrenci eklendiğinde artacak
    var name: String

init(name: String){
    self.name = name
    Student.classSize += 1
    }
}

let edTwo = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)


//Access control lets you restrict which code can use properties and methods. This is important because you might want to stop people reading a property directly, for example.

struct Account {
   private var id: String
    
    init(id: String){
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let su = Account(id: "12345")

/*
 
 You can create your own types using structures, which can have their own properties and methods.
 You can use stored properties or use computed properties to calculate values on the fly.
 If you want to change a property inside a method, you must mark it as mutating.
 Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
 Use the self constant to refer to the current instance of a struct inside a method.
 The lazy keyword tells Swift to create properties only when they are first used.
 You can share properties and methods across all instances of a struct using the static keyword.
 Access control lets you restrict what code can use properties and methods.
 
 
 */
