// MARK: - Chapter 3: Swift Paradigm

// MARK: - 3.1 Programming Paradigms
// Swift <- Protocol Oriented Programming (P.O.P)
// <- P.O.P utilizes processing units such as objects, structures n enumerations
// protocols define how these processing units should behave or the type of functionality they provide.


// MARK: - 3.2 Functions

// MARK:  Listing 3-1 Declaring and Calling Functions

var myNumber = 7
func tripleNumber() {
    myNumber *= 3
}

tripleNumber()

// MARK: Listing 3-2 Calling Functions From Loop

var digit = 3
var counter = 0

func doubleDigit() {
    digit *= 2
}

while counter < 5 {
    doubleDigit()
    counter += 1
}
print(digit) //Expect 96 (3 * 2^5)

// NB: Above two example functions modify an external variable, which is not safe.

// MARK: Listing 3-5 Sending different values to a function
func quadripleValue(number: Int) {
    let res = number * 4
    print("\(number) quadripled = \(res)")
}

quadripleValue(number: 25)
quadripleValue(number: 10)

// MARK: Listing 3-6 Returning a value from a function
func addTwo(num: Int) -> Int {
    let res = num + 2
    return res
}

let plusTwo = addTwo(num: 2)
print("2 plus 2 = \(plusTwo)" )

// MARK: Listing 3-7 Returning a tuple
func sumCharacters(word: String) -> (String, Int) {
    var chars = ""
    var count = 0
    
    for letter in word {
        chars += "\(letter) "
        count += 1
    }
    
    return (chars, count)
}

var (list, charCount) = sumCharacters(word: "Mogadishu")
var message = "There are \(charCount) characters in \(list)"


// MARK: Listing 3-8 Interrupting execution of a function with guard
func orderAlcohol(age: Int) -> String {
    guard age > 21 else {
        return "Cannot get some Alc"
    }
    // I use guard as "Make sure", Make sure that the age
    // is greater than 21 else they can't get alcohol. i.e like a security guard.
    // More formally, the else block is executed if the guard condition evaluates to false.
    
    return "Here's your Alc"
    
}

orderAlcohol(age: 18)


// MARK: Listing 3-9 Removing the return keyword
func addThree(num: Int) -> Int {
    num + 3
}

let seven = addThree(num: 4)

// MARK: Listing 3-10 Modifying external variables from a function
// The inout keyword is used to mark a parameter for which you want
// to preserve/persist changes after the function is done executing.
// COMPARE TO : Pass by refernce C++

func hierToTheKindgom(){
    var name = "Ahmedin"
    addJuniorToName(for: &name) // pass arg using the ampersand (&)
    print("Your updated name is \(name)")
}

func addJuniorToName(for name: inout String) {
    name += " Jr."
}

hierToTheKindgom()

// MARK: Listing 3-12 Removing argument labels
func multiply(number1: Int, _ number2: Int) -> Int {
    number1 * number2
}

let result = multiply(number1: 34, 2) // expect 68


// MARK: Listing 3-13 Declaring Default values for params

func greeting(message: String = "Good morning") -> String {
    return "Hello there, \(message)"
}

let defaultGreeting = greeting()
let specificGreeting = greeting(message: "How far")

// MARK: - Generic Functions
// Creating two or more functions with same name, diff params => Overloading

// MARK: Listing 3-14 Declaring different functions with the same name
func getDescription(value: Int) -> String{
    "The value is \(value)"
}

func getDescription(value: String) -> String{
    "The value is \(value)"
} // String overload of getDescription()

let intDesc = getDescription(value: 9)
let strDesc = getDescription(value: "Helium")

// NB: The above is difficult to maintain since they just differ by param type.
// Solution: Generic Data Type

// MARK: Listing 3-15 Defining generic functions
// Generic Data types are placeholders for real data types.
// When the function is called, the generic data type is turned into
// the data type received.
func getDescription<T>(value: T) -> String{
    "The value is \(value)"
}

let genericDesc1 = getDescription(value: 3.4)
let genericDesc2 = getDescription(value: "Aberdeen")

// Generic Data Types can be constrained using protocols to accomodate certain operations
// You can use two or more generic data types by seperating them by a comma, see below
func personalGenericFunc<T, U>(value1: T, value2: U) -> String {
    "Data type of \(value1) is \(type(of: value1))\nData type of \(value2) is \(type(of: value2))"
}

let testPersonalGenericFunc = personalGenericFunc(value1: true, value2: "Animal")
print(testPersonalGenericFunc)

// MARK: - Standard Functions
// Functions available to stop the execution of the application incase of an unrecoverable error
// fatalError(String) -> The function stops the execution of the application
// and prints the String to the console
let rank = 38
//guard rank < 10 else {
//    fatalError("\(rank) not part of top 10")
//}

// precondition(Bool, String) -> stops exection of the application and prints String if the Bool is false
//precondition(rank < 10, "\(rank) not part of top 10")

// MARK: Creating collections of values
// few functions exist to quickly create sequences of values our app may need
let sequenceText = repeatElement("Gotham", count: 4) // a sequence of Gotham repeated 4 times
let sequenceNumbers = stride(from: 0, to: 8, by: 2) // a sequence containg 0 -> 10 stepped by 2, last element not included
let combinedSequence = zip(sequenceText, sequenceNumbers) // combining the two sequences


for (text, number) in combinedSequence {
    print("\(text) - \(number)")
}

// MARK: - SCOPES
