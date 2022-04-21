import UIKit

//Creating basic closures:
let driving = {
    print("I'm driving in my car")
}
driving()

//Accepting parameters in a closure
let drivingCar = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivingCar("London")

var shareWinnings = { (amount: Double) in
    let half = amount / 2
    print("It's \(half) for me and \(half) for you")
}
shareWinnings(30.0)

// Returning values from a closure Not: Bunu yapmamızın sebebi mesajı atayabilmemiz
let journey = { (place: String) in
    return "I'm going to \(place) in my car"
}
let message = journey("London") // atadık
print(message)

let measureSize = { (inches: Int) -> String in
    switch inches {
    case 0...26:
        return "XS"
    case 27...30:
        return "S"
    case 31...34:
        return "M"
    case 35...38:
        return "L"
    default:
        return "XL"
    }
}
measureSize(36)
print(measureSize(36))

//Closures as parameters. Passing a closure into a function
let drivingInMyCar = {
    print("I'm driving in my car")
}
func travel(action: () -> Void){
    print("I'm getting ready to go")
    action()
    print("I arrived")
}

//Using closures as parameters when they accept parameters
func fix (item: String, payBill: (Int) -> Void){
    print("I've fixed ypır \(item)")
    payBill(450)
}
fix(item: "roof") { (bill: Int) in
    print("You want $\(bill) for that?")
}

/*
 Closures Summary

 1. You can assign closures to variables, then call them later on.
 2. Closures  can accept parameters and return values, like regular factions.
 3. You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
 4. If the last parameter to your function is a closure, you can use trailing closure syntax.
 5. Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
 6. If you use external values inside your closures, they will be captured so the closure can refer to them later.
 */

