//: [Previous](@previous)

import Foundation

/*:
# Functions

Let's consider the following function in Ruby, a dynamic programming language:

def increment(x)
x + 1
end

Now you can call `increment(4)` and get `5` returned to you. Terrific! However, what happens if I call `increment("Hello")`?
Well, that just makes no sense. However, this is perfectally legal in dynamic programming languages. Running such code leads to
unexpected results in some languages (like `"Hello1"` in Javascript), and crashes your program in others. Dynamic typing can
lead to lots of bugs.

Fortunately for you, the Swift compiler will tell you when you are doing such nonsense! You won't be able to run your program
until you correct it. Think of the compiler as your friend who won't let you shoot yourself in the foot; the compiler has your
back.
*/

func increment(x: Int) -> Int {
    return x + 1
}

//: Try passing different arguments into the increment function below. (Don't worry, we'll talk more about functions in the next
//: section.) What happens when you pass something that's not an `Int`?

// Try it here


//: Try writing your own function that doubles a number

// your function here

//: [Next: Flow Control](@next)
