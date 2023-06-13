// MARK: - Chapter 3: Swift Paradigm

// MARK: - 3.1
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

