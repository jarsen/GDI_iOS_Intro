//: [Previous](@previous)

import Foundation

/*:
# Structs
Structs are value types (like tuples) that let you encapsulate multiple properties together. Unlike tuples,
structs can have methods, and adhere to protocols (more on that later).
*/

struct PizzaOrder {
    var size: Int
    var type: String
    var delivery: Bool
}

//: This is how you instantiate a struct
let favoritePizzaOrder = PizzaOrder(size: 15, type: "Hawaiian", delivery: true)

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
## Value Type
A struct is a **value type**. This means that whenever you assign your stuct to a new variable or
constant, it makes a copy.
*/

var secondFavoritePizzaOrder = favoritePizzaOrder
secondFavoritePizzaOrder.type = "Pepperoni"
secondFavoritePizzaOrder.delivery = false

favoritePizzaOrder.nameForOrder()
secondFavoritePizzaOrder.nameForOrder()

//: [Next](@next)
