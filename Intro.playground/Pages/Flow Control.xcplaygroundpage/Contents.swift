//: [Previous](@previous)

import Foundation

/*:
# Flow Control - The If Statement

When you write a program in Swift, it stops at the top and works its way down to the bottom.
But what if you want it to do something conditional upon something else? Or what if you want
to do something 1000 times? Or what if you want to do something a variable number of times?

To accomplish these sorts of tasks you need flow control.

The `if` statement allows you to specify a condition that evaluates to `true` or `false`, and if
that condition is `true` then the code inside the if statement will be executed.

Logic dealing with `true` and `false` values is called **boolean logic**. There are a couple of
useful operators you should know that will help you with your flow control conditions.

* `!` - a.k.a the *bang operator*. acts as a boolean `not`
* `||` - boolean 'or'. only true if either the left or the right side is true
* `&&` - boolean 'and'. only true if both the left and the right side are true.
* `==` - checks to see if two values are equal
* `!=` - checks to see if two values are not equal
* `<` - checks to see if the value on the left is less
* `>` - checks to see if the value on the left is greater
* `<=` - checks to see if the value on the left is less than or equal
* `>=` - checks to see if the value on the left is greater than or equal
*/

let name = "Jason"

if name == "Jason" {
    print("You get a free pizza!")
}

//: Play around with the above code. Try changing around the value of `name` and also the `String`
//: on the right hand side of the `==` operator

//: What if we want to check the opposite condition?

if name != "Jason" {
    print("You do not get a free piece of pizza. Sorry.")
}

/*:
# Or else...

What if we want to do something in the true case and something in the false case? We can use an
`else` or an `else-if`
*/

if name == "Jason" {
    print("You get a free pizza!")
}
else if name == "Stacie" {
    print("You get a free pizza!")
}
else {
    print("You do not get a free piece of pizza. Sorry.")
}

/*:
In the above code, we're doing the same thing for two conditions. If we want, we can join these together using the `||` operator.
*/

if name == "Jason" || name == "Stacie" {
    print("You get a free pizza!")
}
else {
    print("You do not get a free piece of pizza. Sorry.")
}

//: And don't forget we can use the values of any functions that return true or false!

// option click on hasPrefix to see that it returns a Bool
if name.hasPrefix("J") {
    print("You get a free slice of pizza")
}

/*:
# Switches

Use a switch statement when you have one value and you want to check if it matches one of many different things.
*/

let favoritePizza = "bbq chicken"

switch favoritePizza {
case "hawaiian", "bbq chicken":
    print("Yum.")
case "pepperoni", "cheese":
    print("Classic!")
case "anchovie":
    print("Err...")
default:
    print("Never hoid of it")
}

/*:
# For-Loops

Loops help you run the code multiple times! It can be a set number of times, or a variable number of times.
You can use `for-in`, `for`, `while` and `repeat-while` to make a loop.

You will mostly use `for-in` loops.

*/

var sum = 0

for var x = 0; x < 10; x++ {
    sum = sum + x
}
print(sum)

sum = 0
for x in 0..<10 {
    sum = sum + x
}
print(sum)

// this is a list (Array) of pizzas. We'll talk about Arrays in a bit.
let pizzasLiked = ["pepperoni", "hawaiian", "anchovie", "mushroom"]

for pizza in pizzasLiked {
    print("I like \(pizza).")
}

var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)


//: [Next](@next)
