import UIKit

/**
 * Question 1
 *
 *Functions are useful for isoolating code and creating reusability. One reason may be a sort algorithm. Perhaps you want to pass in an array of items and sort them and you can create a function that takes that array; sorts the items and returns the sorted arrays.
 */

/**
 * Question 2
 */
func q2Welcome(name: String) {
    print ("Welcome " + name)
}

// To call this function you would:
q2Welcome(name: "Jack")

/**
 * Question 3
 */
func q3Greetings(name: String) {
    print ("Hello " + name)
}

// The issue with `q3Greetings ( "Fred" )` is that you need to include name: in front of the param.
q3Greetings(name: "Fred")

/**
 * Question 4
 */
func q4Greetings(name: String, age: Int) {
    print ("Hello " + name)
    print ("You are \(age) years old!")
}

// To call with Richard and 37 we simply pass the params
q4Greetings(name: "Richard", age: 37)

/**
 * Question 5
 *
 * For this question I read about PassKit (https://developer.apple.com/documentation/passkit) which is used for interacting with adding Apple Pay to your app to accept payments quickly as well to create and manage passes in the user's Apple Wallet. like cards, gift cards, membership cards and others.   This is how apps can quickly add passes and keep them updated in your Apple Wallet and also accept and complete checkouts with Apple Pay.
 */

/**
 * Question 6
 */
func q6Calculate(x: Double, y: Double) -> Float {
    // This function returns a Float type item since that is the type listed after the arrow (->)
    return 1.00
}

/**
 * Question 7
 */
func q7Greeting( _ name: String , _ age: Int ) -> String {
    return "Hello " + name + ". You are \(age) years old"
}
// This function uses underscores meaning we can call it directly without names
print(q7Greeting("David", 32))

/**
 * Question 8
 */
func q8Bye(name: String) -> String {
    // This function indicates it returns a string. But there is no return statement; we need to add one.
    return "Bye " + name
}

print(q8Bye(name: "John"))

/**
 * Question 9
 */
func q9Calculate(x: Double, y: Double) -> Float {
    return Float(x) * Float(y)
}

// We can pass in our X and Y value and it returns the values as a Float
print(q9Calculate(x: 1.12, y: 2.33))

/**
 * Question 10
 */
func q10Calculate(x: Double, y: Double) {
    print ("Sum = \(x + y)")
}

// This function prints in the body so we can simply call it and nothing is returned
q10Calculate(x: 12.31, y: 43.22)
