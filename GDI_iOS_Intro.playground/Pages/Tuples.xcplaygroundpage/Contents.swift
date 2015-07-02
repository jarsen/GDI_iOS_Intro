//: [Previous](@previous)

import Foundation

/*:
## Tuples

Tuples are ordered lists of values or objects.
*/

let point = (100, 200)
let x = point.0
let y = point.1

//: Elements in a tuple can also have names

let namedPoint = (x: 100, y: 200)
namedPoint.x
namedPoint.y

//: You can mix and match types as well

let pizza = (type: "Pepperoni", size: 13)
pizza.type
pizza.size

//: However, once you start mixing types, you probably want to consider another data structure: the struct.
//: [Next](@next)
