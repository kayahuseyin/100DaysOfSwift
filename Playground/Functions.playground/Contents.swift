import UIKit

//Functions

func myFunction(){
    print("My function")
}
myFunction()

//Input & Output & Retrun

func sumFunction(x: Int, y: Int) -> Int{
    return x + y
}
let myFunctionVariable = sumFunction(x: 10, y:20)
print(myFunctionVariable)

func logicFunction (a: Int, b: Int) -> Bool {
    if a>b {
        return true
    } else {
        return false
    }
}
print(logicFunction(a: 10, b: 0))

// Accepting parameters
func square (number: Int){
    print(number*number)
}
square(number: 8)

//We could rewrite this function to return a value rather than print it directly

func kare(number: Int) -> Int{
    return number * number
}
let result = kare(number: 8)
print(result) // Returning values

func sayHello (to name: String){
    print("Hello, \(name)!")
    
}

sayHello(to: "Taylor") //Parameter labels

func greet(_ person: String){
    print("Hello, \(person)")
}
greet("Taylor") //Omitting parameter

//Default parameters
func greetings (_ person: String, nicely: Bool = true){
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no it's \(person) again")
    }
}
greetings("Taylor")
greetings("Taylor", nicely: false)

// Variadic functions:
func square (numbers: Int...){
    for number in numbers{
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1,2,3,4,5)

//Writing throwing functions:
enum PasswordError: Error{
    case obvious
}
func checkPassword(_ password: String) throws -> Bool{
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}
//Inout parameters
func doubleInPlace(number: inout Int){
    number *= 2 //20
}
var myNum = 10 // 10
doubleInPlace(number: &myNum) //20

/*Functions summary
 1. Functions let us re-use code without repeating
 2. Functions can accept parameters
 3. Functions can return values
 4. You can use different names for parameters externally and internally, or omit the external name entirely `func sayHello(to name: String) print("Hello, \(name)")`
 5. Parameters can have default values, which helps you write less code when specific values are common `func greet(_ person: String = "Taylor") print("Hello, \(person)!")`
 6. Variadic functions accept zero or more specific parameter, and Swift converts the input to an array.
 7. Functions can throw errors, but you must call them using try and handle errors using catch
 8. You can use inout to change variables inside a function, but it’s usually better to return a new value.
*/

