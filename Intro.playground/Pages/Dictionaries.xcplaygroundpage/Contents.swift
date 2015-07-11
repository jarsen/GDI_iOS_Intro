//: [Previous](@previous)

import UIKit

/*:
# Dictionaries

A dictionary (of the book variety) is a mapping of words to definitions. In programming,
a dictionary is more general: it's a mapping of any value to any value.

Dictionaries are also called maps, hash maps, hashes, and associative arrays in other
languages.
*/

//: Option+Click on `stock` to inspect its type.
let stock = ["pepperoni": 2.0, "pineapple": 3, "anchovie": 1]

//: Like arrays, we can use subscripting to get the values out. Except this time we use
//: whatever type of `Key` we specified, instead of an Int.

let pepperoniPounds = stock["pepperoni"]

//: Option+Click on `pepperoniPounds`. What type is it? Why does this make sense?


let sausagePounds = stock["sausage"]

//pepperoniPounds + sausagePounds // Uncomment this line. Why does it give a compiler error?

let pepperoniToGet = 10 - pepperoniPounds!

/*:
## Dictionary Flow Control

### for-loops

We can even iterate over entire dictionaries if we'd like, just like an Array.
Except this time, we have a tuple instead of a single value on the left side.
The first item is the `Key`, and the second is the `Value`.
*/

for (product, pounds) in stock {
    print("We have \(pounds) pounds of \(product) in stock")
}

/*:
Remember `if-let` and `guard-let` from our discussion on `Optional`s? Remember to use them
with dictionary values!

### if-let
*/

if let pepperoniPounds = stock["pepperoni"] {
    let pepperoniToGet = 10 - pepperoniPounds // notice no !
    print("We need to get \(pepperoniToGet) pounds of pepperoni")
}
else {
    print("We have no pepperoni")
}

//: ## guard-let

func amountNeeded(type: String, maxAmount: Double) {
    guard let poundsHave = stock[type] else {
        print("We have no \(type)!")
        return
    }
    
    guard poundsHave < maxAmount else {
        print("We're full on \(type)")
        return
    }
    
    let poundsNeeded = maxAmount - poundsHave
    print("We need to get \(poundsNeeded) pounds of \(type)")
}

amountNeeded("pepperoni", maxAmount: 10)


//: [Next](@next)
