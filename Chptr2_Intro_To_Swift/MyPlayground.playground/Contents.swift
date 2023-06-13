// MARK: 2.2 - Variables

// MARK: - Listing 2-4: Declaring and initializing vars in the same statement.
var myNumber: Int = 5

// MARK: - Listing 2-5: Assigning a new value to a variable.
myNumber = 78

// MARK: - Listing 2-6 Declaring vars of diff data types.
var num: Int = 7
var myFloat: Float = 3.141

// MARK: -  Listing 2-6 Declaring vars w/out specifying the data type.
var number = 9 // Type inferred to be Int
var float = 4.942 // type inferred to be Double

// NOTE: Option + Click gives more information about a var.

// MARK: - Listing 2-8 Assigning vars to vars.
var aNum = 3
var bNum = aNum


// MARK: Arithmetic Operators.
// Some operations : Addition (+), Subtraction (-), Multiplication(*), Division(/), Modulo(%).

// MARK: - Listing 2-9 Assigning the result of an operation to a variable.
var theNum = 9 - 8 // 1

// MARK: Listing 2-11 Ingerring the data type from an operation.
var myFraction1 = 5.0 / 2.0 // 2.5
var myFraction2 = 5 / 2.0 // 2.5
var myFraction3 = 5 / 2 // 2 (Int division)

// MARK: - Swift Overflow Operators.
// &+, &-, &*, &/ and &%
// are useful when we think an operation could produce a result that goes over
// the limit the data tyoe can handle.

// MARK: CONSTANTS

// MARK: - Listing 2-16 Declaring and Intializing a Constant.
let aConst = 5

// If a stored value is not going to chane, always declare it a constant with let.


// MARK: 2.3 Swift Data Types

// MARK: Characters
// Swifr uses Unicode for chars representation.

var myGrade: Character = "A"

// Unicode allows emojis, CNTRL + CMD + SPACE.

// MARK: Strings
let myText: String = "Sam Davis is a Star!"

// Concatenation is very important in String manipulation.
let name = "Opor"
var greeting = "Welcome"
greeting += " " + name + "!"

// String interpolation allows us concatenate strings with characters or numbers.
// MARK: - Listing 2-21 Including variables in strings.
let age = 17
let introduction = "Hello everyone, I am \(name) and I am \(age) years old."

// Operatios can also be performed in interpolated strings
// MARK: - Listing 2-22 Performing operations inside strings
let statement = "You know \(name) will be \(age + 5) years old in 5 years, Incredible !"

// To include special characters in strings, there are two ways.
// 1. Prefix the special xter with another backslash.
// 2. Enclose the entire string in has characters.
// MARK: - Listing 2-23 Including special characters in a string.
let text1 = "This is \"my\" age"
let text2 = #"This is "my" age"#


// To create multiple lines of text there are two ways.
// 1. Use special char \n to generate a new line.
// 2. Use the tripple quotes feature
// MARK: - Listing 2-24 Generating multipe lines of text.
let twoLines = "This is the first line\nThis is the second Line"
let multiLine = """
                This is the first Line
                This is the second Line
                """

// MARK: Booleans
// MARK: Listing 2-25: Declaring a Boolean variable
var isGone : Bool = true

// MARK: Optionals
// Swift defines a modifier that tuens every data type into an optional type.
// To declare an optional, we add a question mark after thr type's name.
var myOptionalNum : Int?
myOptionalNum = 21

// MARK: Listing 2-28: Using nil to empty an optional variable
var myOptional: Int?
myOptional = 15
myOptional = nil

// To read an optional, we must unwrap it by adding an exclamation at the end of the var name.
// MARK: Listing 2-29: Unwrapping an Optional
let fivePlusOptional = 5 + myOptionalNum! // 26


// There are occassions when we know an optional will always have a value.
// For example, when a var receives its val from the system as soon as the application is run.
// When the var is declared in the code, but we know the var will have a value as soon as
// the user launches the app.
// In this case we use Unwrapped Optionals

// MARK: Listing 2-31 Declaring Implicitly Unwrapped Optionals
var myNo: Int! // myNo declared as an implictly unwrapped optional
myNo = 7 // myNo later initialized to 7
var myNoPlus4 = myNo + 4 // no need to unwrap myNo again


// MARK: Tuples
// A tuple is a type of var that contains a group of one or more data type.
// Used to store values that are somehow related to each other.

// MARK: Listing 2-32: Declaring a tuple with two values
var fullName = ("John","Doe")


// MARK: Listing 2-33: Declaring a tuple with values of different type
var myTuple = ("John","Doe", 45)

// You can give names to each item in your tuple and access them via their names given.
var theFullName = (firstName: "Kate", lastName: "Winset", age:"23")
var katesAge = theFullName.age
print(katesAge)
 // You could also ignore names using an underscore

// MARK: 2.4 Conditionals and Loops
// Conditionals allow us to execute instruction(s) when a condition is met.
// Loops execute a group of instructions repeatedly

// MARK: If and Else
// If and else statement similar to previously learnt programming languages.

// Since optional's values are wrapped, you can't compare them like normal vars.
// Optionals must first be compared against nil and then unwrapped before working
// with their values.
// MARK: Listing 2-44: Checking whether an optional contains a value or nor
var step = 0
var someOptional: Int? = 7
if someOptional != nil {
    let unwrappedValue = someOptional!
    step += unwrappedValue
}
print(step)

// A more convenient way of doing the above is called Optional Binding.

// MARK: Listing 2-45: Using Optional Binding to unwrap an optional var
if let unwrappedValue = someOptional {
    step += unwrappedValue
}

// Code can be made clearer and cleaner by the below
if let someOptional {
    step += someOptional
}

// In the code above, Swift looks for an optional variable called someOptional,
// unwraps it and then assogns it to the constant.

// You can use ternary operator to unwrap an optional too
var theOptional: Double? = 9.7
var theUnwrappedValue = theOptional != nil ? theOptional! : 0.0

// To simplify this, we use the nil coalescing operator
var maxOptional = theOptional ?? 25.50



// MARK: - ADD other code here


// MARK: - GUARD
// The guard instruction is intended to prevent the execution of the code.
// Very similar to if else.

// MARK: - Listing 2-68
var someText = "Dracula"
var count = 0
for char in someText {
    guard char != "c" else {
        break
    }
    count += 1
}

var message = "There are \(count) letters in \(someText) before the c."
print(message)

// The code in guard only executes if the condition evaluates to false.

