import UIKit

/**
 Question 1
 */
var myVariable = "Hello World!"
let myConstant = "I shall not change!"

// This I can replace without issue as long as same type.
myVariable = "I am being replaced :("

// This will throw an error since it cannot be set again.
//myConstant = "I cannot be replaced"

/**
 Question 2
 */
var stringNumber = "67"
var numberValue: Int
// Using the bang operator forced it to conver to Int. I tried without it and got an error.
// I assume this error is because it does not for certain that 67 is a legal number.
// I confirmed this by changing 67 to a letter and got a fatal error. Seems the bang is quite dangerous
numberValue = Int(stringNumber)!

/**
 Question 3
 */
var floatNumber: Float = 6.9
var numberValueQ3: Int
// The .9 is loss.  It seems when converting decimals to Int it just removes it without any rounding rules.
numberValueQ3 = Int(floatNumber)

/**
 Question 4
 */
var question4Number: Int = -25
 // This prints out -25.0; since it seems Swift always adds .0 when type is Double
print(Double(question4Number))

/**
 Question 5
 */
var name = "John"
// The line below will not work as `Name` is capitalized but variable was all lowercase. Fix is to match variable.
//print(Name)
print(name)

/**
 Question 6
 */
var question6x: Float = 7.1
var question6y: Double = 9.6
var sum : Double
// The line below will not work as Float and Double cannot be added together. To fix I can convert X to Double or Y to Float (`sum = x + Float(y)`).  Since Double has more precision I feel the safest option would always be to do the type with the most precision (in this case we know both are to the tenth spot but in real world I assume we won't always know)
//sum = x + y
sum = Double(question6x) + question6y

/**
 Question 7
 */
// This is type Double. I can convert to a Float by simply defining the type as Float.
//var question7x = 7.1
var question7x: Float = 7.1
print(type(of: question7x))

/**
 Question 8
 */
// x is my favorite way. I prefer to define the type and value all on one line. Makes it easier to read and I do not have to look for the value lower down. I prefer to always define type since it is safer and more reliable for larger codebases.
var question8x: Double = 3.1415
var question8y = 3.1415
var question8z : Double
question8z = 3.1415

/**
 Question 9
 */
// The last line to set X is setting it to 5. Therefore the value is 5.  It is also still a Double since that is the initial type declared to this variable.
var question9x: Double = 3.1415
question9x = -12.45
question9x = 0.84
question9x = 5

/**
 Question 10
 */
// 5 is stored in the result variable. The percent sign does a remainder operation. 26 can be cleanly divided by 7, 3 times. 7*3 is 21. So the remainder is 5 (26-21).
var question10x = 26
var question10y = 7
var question10Result: Int
question10Result = question10x % question10y
