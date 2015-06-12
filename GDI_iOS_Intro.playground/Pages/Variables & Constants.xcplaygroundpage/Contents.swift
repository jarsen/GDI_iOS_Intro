import Foundation

/*:
# Static vs Dynamic Typing

Swift is a _statically typed_ language. This means that the types of your values are essential, and the compiler
will stop you from trying to mix types in ways you shouldn't. C, C++ and Java are other examples of statically typed
programming languages. On the other hand, we have _dynamic programming languages_. Some common dynamic programming
languages include Javascript, Ruby, and Python.

# Variables

Compare the following snippet of dynamic Ruby and static Java.

Ruby:

name = "Jason Larsen"

Java:

String name = "Jason Larsen";

The Ruby version is definitely shorter and easier to read. This is only becomes increasingly true as the complexity of your Ruby or Java statements increases. However, because we didn't give `name` a type in the Ruby version, nothing stops us from doing this later:

name = 7

Ruby lets you assign a number to a variable that used to be a string. It's weird and leads to bugs! Here's another example:

someVariable = 7
someOtherVariable = "Hello"
someVaraible = 10

The author of the above code likely intended to change the value of `someVariable` from 7 to 10, but managed to misspell the
variable name. The Misspelling instead triggers the creation of a new variable, and leaves the author scratching his or her
head when the results don't turn out as expected. Bugs like this are common and annoying to catch.

Once again, your friend the Swift compiler stops you from embarassing yourself. But, unlike the Java, the Swift compiler
uses the power of *type inference* to keep your code shorter and cleaner! Basically, the Swift compiler is smart enough to
infer what type the variable is supposed to be, without you having to spell it out.
*/

var favoriteNumber = 7

// Try assigning different numbers and text to favoriteNumber and see what happens! Make a few of your own variables.
// Trick: holding down the option key and clicking on the variable will bring up a window with information about its type

/*:
# Constants
Whenever you plan on creating a value that you don't want to change within that scope, you should use a constant. Constants
are declared like variables, except instead of `var` they use the `let` keyword. Attempting to change the value of a constant
in your code will result in a compiler error.
*/

let name = "Jason Larsen"

//: On the next line, try changing the value of name to your name. What does the compiler say?

/*:
# Explicit Type Declaration

As smart as the compiler is, sometimes you want your variable or constant to declared as a certain type. For example,
explicit type annotations allow us to do this:
*/

let someNumber1 = 7
let someNumber2 = 7.0
let someNumber3: Float = 7

/*:
In the first declaration the compiler inferred that `someNumber1` should be an `Int` because `7` is an Integer literal.
In the second, the compiler though we wanted a `Double`, because `7.0` is a floating point literal and defaults to `Double`.
However, in the third example, we just go ahead and tell the compiler that what we really are expecting is a Float. The
compiler then knows that on the right hand side we are trying to express a `Float`.

(Alternatively, we could created a `Float` on the right hand side by constructing it like `Float(7)`)
*/

/*:
# Summary
*/

//: [Next: Functions](@next)
