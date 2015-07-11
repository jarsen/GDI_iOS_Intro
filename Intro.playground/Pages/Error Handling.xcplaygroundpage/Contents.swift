//: [Previous](@previous)

import Foundation

/*:
# Error Handling
Swift 2 introduced error handling. Functions that use the keyword `throws` before the return type must handled inside of a `do-catch` block.
*/

enum PizzaError : ErrorType {
    case InvalidPizza
}

func makePizza(name: String) throws -> Void {
    switch name {
    case "Pepperoni", "Cheese", "Margherita":
        return
    default:
        throw PizzaError.InvalidPizza
    }
}

do {
    try makePizza("Cheese")
}
catch PizzaError.InvalidPizza {
    print("Unknown pizza!")
}
catch {
    print("Unknown error: \(error)")
}

//: [Next](@next)
