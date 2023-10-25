import UIKit

/**
 * Question 1
 */
let fahrenheitConst = "Fahrenheit"
let celsiusConst = "Celsius"
var celsiusTemp = 100.0
var fahrenheitTemp = 212.0
var fahrenheitToCelsiusResult: Double
var celsiusToFarenheitResult: Double

// Convert Fahrenheit to Celsius
fahrenheitToCelsiusResult = (5/9) * (fahrenheitTemp - 32.0)
print (celsiusConst + " temperature is \(fahrenheitToCelsiusResult) today")


// Convert Celsius to Fahrenheit
celsiusToFarenheitResult = celsiusTemp * 1.8000 + 32.0
print (fahrenheitConst + " temperature is \(celsiusToFarenheitResult) today")

/**
 * Question 2
 */
let age = 18

if (age < 18) {
    print("Under 18")
} else if (age == 18) {
    print("You are now officially an adult")
} else if (age > 18 && age <= 110) {
    print("You are no longer a kid")
} else {
    print("Just in case you're over 110.")
}

/**
 * Question 3
 */
let retirementAge = 65
var currentAge = 25

switch currentAge {
case let x where x < retirementAge: print("Still working")
case retirementAge: print("Retirement age")
default: print ("Past retirement age")
}

/**
 * Question 4
 */
var question4Counter = 1

while (question4Counter <= 5) {
    print(question4Counter)
    question4Counter += 1
}

/**
 * Question 5
 */
for x in 1..<10 {
    print(x)
}
