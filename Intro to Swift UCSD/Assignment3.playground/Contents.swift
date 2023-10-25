import UIKit

/**
 Question 1
 */
let q1x = 5
let q1y = 10
print( q1x < q1y ) // 5 < 10
print( q1x <= q1y ) // 5 <= 10
print( q1x != q1y ) // 5 != 10

/**
 Question 2
 */
var q2x = 9
var q2y = 12
var q2flag: Bool
 
q2flag = ((2 * q2x) >= q2y) && ((q2y - 3) == q2x) // Is true (18 >= 12) && (9 == 9) => true && true => true

/**
 Question 3
 */
let q3x = 7
if (q3x > 6) && ((q3x * q3x) <= 49) {
    // Prints is since 7 > 6 AND 49 <= 49. Pretty much any valid greater than or equal to 7 will suffice
    print ("The if statement will run this code")
}

/**
 Question 4
 */
let q4x = 1
if (q4x == 1) {
    print ("The value of x is 1")
} else if (q4x != 1) {
    print ("The value of x is not 1")
}

/**
 Question 5
 */
let q5x = -26
if (q5x > 1) {
    print ("x is greater than 1")
} else if (q5x < -25) {
    print ("x is less than -25")
}

/**
 Question 6
 */
var q6x = 100
 
if (q6x > 1) {
    // This prints here since 100 > 1. It will not try any other elseif statements since this satisfied condition.
    print ("> 1")
} else if (q6x > 25){
    print ("> 25")
} else if (q6x > 90) {
    print ("> 90")
}

/**
 Question 7
 */
var q7x = 100
 
if (q7x > 100) {
    print ("> 100")
} else if (q7x > 25){
    // This prints here since 100 > 25. It will not try the next >90 since this satified the condition
    print ("> 95")
} else if (q7x > 90) {
    print ("> 14")
}

/**
 Question 8
 */
let q8x = 76
switch q8x {
case 50:
    print("x is 50")
case 51..<100:
    print("x is greater than 50 but less than 100")
default:
    print("No Boolean value was true")
}

/**
 Question 9
 */
let q9x = 24
if ((q9x >= 1) && (q9x <= 10)) {
    print("1...10")
} else if ((q9x >= 11) && (q9x < 25)) {
    print("11..<25")
} else if (q9x > 50) {
    print("> 50")
}

/**
 Question 10
 */
let q10x = 25
// Since the second case statement is already included in the first case statement it will never reach the sceond statement.  Since 10-30 is within 1-50 the second case is pointless and will be unreachable code. This is because branches will exit onto the first branch that meets the condition.
// If you were to put 10...30 as first case statement instead it would cover those and then 1-9 and 31-50 would get caught in the 1...50.
switch q10x {
case 1 ... 50 :
    print ("1...50")
case 10 ... 30 :
    print ("10...30")
default :
    break
}
