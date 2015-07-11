//: [Previous](@previous)

import UIKit

/*:
# Classes
Classes (like structs) let you encapsulate multiple properties together. Unlike structs, classes are *NOT* value types
—they are _shared_ instances. Classes also allow for inheritance.
*/

class PizzaOrder {
    var size: Int
    var type: String
    var delivery: Bool
    
    //: Unlike structs, we have to specify an initializer
    //: We can specify initializers for structs too, but the compiler will write one for us for free. if we don't provide one.
    init(size: Int, type: String, delivery: Bool) {
        self.size = size
        self.type = type
        self.delivery = delivery
    }
}

//: Now we can instantiate a class
let favoritePizzaOrder = PizzaOrder(size: 15, type: "Hawaiian", delivery: true)

//: ## Classes are not value types


//: Once instantiated, you can access the structs variables like this:
favoritePizzaOrder.size
favoritePizzaOrder.type
favoritePizzaOrder.delivery

/*:
## Methods
Structs can have methods, which are functions that are part of the struct and can use its variables.
*/

// Note: Extension lets _extend_ a struct and add variables or methods to it outside of its original declaration.
extension PizzaOrder {
    func nameForOrder() -> String {
        let deliveryString = delivery ? "to go" : "to stay"
        return "\(size)\" \(type) pizza \(deliveryString)"
    }
}

favoritePizzaOrder.nameForOrder()

/*:
## NOT a Value Type
A class is *not* a value type. This means that when you pass it around, it is not copied!
*/

var secondFavoritePizzaOrder = favoritePizzaOrder
secondFavoritePizzaOrder.type = "Pepperoni"
secondFavoritePizzaOrder.delivery = false

//: Now let's print out both of our pizzas.

favoritePizzaOrder.nameForOrder()
secondFavoritePizzaOrder.nameForOrder()

/*:
Whoops! Turns out both our variables `favoritePizzaOrder` and `secondFavoritePizzaOrder`
were referring to the same object! So when we changed `secondFavoritePizzaOrder` we also
were mutating the object pointed to by `favoritePizzaOrder`

So you have to be careful with classes to make sure you're changing the right object.
The moral of the story is prefer `struct` whenever possible, and when you want an object to
specificially be shared by multiple parts of the app, use a `class`.
*/

//: [Next](@next)
