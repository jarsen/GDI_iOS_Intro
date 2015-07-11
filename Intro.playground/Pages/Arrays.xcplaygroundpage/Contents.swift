//: [Previous](@previous)

import Foundation

/*:
# Arrays
Arrays are ordered lists of a single type of item.
*/

let numbers = [1,2,3,4,5]

/*:
You can access the values inside the array by using their index inside of an array subscript.
Arrays are *0-indexed*, that is, the first value is at the index 0, and the last value is at
the index `count-1`. If you put in an index too big, your program will crash!
*/

numbers.count
numbers[0]
numbers[1]
numbers[2]
numbers[3]
numbers[4]
//numbers[5] // Uncomment this line to see an out-of-bounds error

/*:
## Adding and Removing Items
Lots of times you want to add or remove items from a list. If you are using `let` to make your
list a constant, the compiler will not allow you to *mutate* your list. `let` makes arrays
**immutable**.
*/

//numbers.append(6) // Uncomment this line to see a compiler error

//: You must use `var` if you want a **mutable** array.

var mutableNumbers = numbers
mutableNumbers.append(6)
mutableNumbers.extend([7,8,9,10])
mutableNumbers.removeLast()
mutableNumbers.removeAtIndex(4)
mutableNumbers

/*:
## Iterating over arrays

Earlier we talked about `for-loops` and showed an example of iterating over an array
*/

var sum = 0
for x in numbers {
    sum += x
}
print(sum)

//: If you want the index of the element as well, use `enumerate`
for (index, x) in numbers.enumerate() {
    print("numbers[\(index)] = \(x)")
}

//: You can also filter the collection with a `for-loop` using `where`. If it gets real
//: complicated though you should use an `if-statement` inside your loop.

sum = 0
for x in numbers where x % 2 == 0 {
    sum += x
}
print(sum) // prints the sum of the even numbers in the array

//: [Next](@next)
