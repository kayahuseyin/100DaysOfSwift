import UIKit
import Darwin
 
struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }
 // Private olduğu için sadece struct içi okuyabilir
    func identify() -> String {
        return "My social security number is \(id)"
        
    }
}

let ed = Person(id: "12345")
// buradaya ed.id yazarsak çalışmayacak
