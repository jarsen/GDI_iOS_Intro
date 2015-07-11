//: [Previous](@previous)

import Foundation

/*:
# Protocols

Protocols are lists of methods and variables. Any object that _conforms_ to a protocol must implement all of the required methods and variables.

Whenever possible, you should prefer this to subclassing, because it is more flexible.
*/

protocol Employee {
    var name: String { get }
    var age: Int { get }
    var hourly: Double { get }
    
    func wage() -> Double
}

//: Notice we have multiple protocols

struct DeliveryGirl : Employee, CustomStringConvertible {
    var name: String
    var age: Int
    var hourly: Double
    
    var tips = 0.0
    
    var description: String {
        get {
            return "\(name) is \(age) and makes \(wage())"
        }
    }
    
    func wage() -> Double {
        return hourly * 8 + tips
    }
}

//: [Next](@next)
