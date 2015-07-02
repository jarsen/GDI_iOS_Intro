//: [Previous](@previous)

import Foundation

/*:
# Inheritance
One thing classes can do is _inherit_ from other objects. This process is also called _subclassing_.

In a nutshell, one object is a subclass (or child) of a _super class_ (or parent). When one object
subclasses another, in inherits all of its avialable variables, constants, and methods.
*/

//: Here is our base class
class Employee {
    let name: String
    let age: Int
    let hourly: Double
    
    init(name: String, age: Int, hourly: Double) {
        self.name = name
        self.age = age
        self.hourly = hourly
    }
    
    func wage() -> Double {
        return hourly * 8
    }
}

//: You can make a subclass by putting a `:` after your class name
class DeliveryGirl : Employee {
    var tips = 0.0
    
    func tip(amount: Double) {
        tips += amount
    }
    
    //: `override` tells the compiler we want to replace the superclass implementation of this function
    override func wage() -> Double {
        let wages = super.wage() // call our super classes implementation of
        return wages + tips
    }
}

let michelle = Employee(name: "Michelle", age: 18, hourly: 8.25)
let jane = DeliveryGirl(name: "Jane", age: 19, hourly: 7.25)

michelle.wage()
jane.wage()

//michelle.deliverPizza() // Uncomment this to see a compiler error. Why?
jane.tip(5)

//: Make your own employee type

/*:
Sometimes even though we have multiple subclasses of employees, we might want to treat all
subclasses of employees as just plain old `Employee`s. We can tell the compiler this by
using the `as` keyword. The fancy word for referring to classes by a type they inherit
from is **polymorphism**.
*/

// Option+Click on employeeJane to see it's type
let employeeJane = jane as Employee

//: However, now that we have forced our `DeliveryGirl` into a `Employee`, the compiler doesn't
//: know its dealing with a `DeliveryGirl` anymore!

//employeeJane.deliverPizza() // Uncomment this line to see a compiler error

//: We can also create arrays of things with a common subclass, and the compile will figure it out for us

// Option+Click on employees
let employees = [michelle, jane]

for employee in employees {
    print("\(employee.name) makes $\(employee.wage())")
}

/*:
The above example is a little contrived, but subclassing can be useful:
you will use it extensively in iOS development to subclass base views and view controllers.

For reasons beyond the scope of our lessons today, it is better to prefer alternatives to inheritance
when possible: such as composition or protocols. Inheritance can bring a lot of baggage with it.
Don't go too crazy with it.
*/

//: [Next](@next)
