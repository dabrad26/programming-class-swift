import UIKit

/**
 * Question 1
 */
var q1MyDictionary: [Int: String] = [
    10: "Joe",
    15: "Kyle",
    20: "Sally",
    25: "John",
    30: "Rick"
]

// To get the value "John" we need to read the key `25`
print(q1MyDictionary[25]!)

/**
 * Question 2
 *
 * Keys are different from index in an array since keys won't ever change no matter how the data is manipulated (except for removal). Meaning that the items in an array change the index can change for all items. However the key will always stay the same.  So in the dictionary above `10` will always represent Joe no matter what as long as it is not removed.
 */


/**
 * Question 3
 */
var q3MyDictionary: [Int: String] = [
    10: "Joe",
    15: "Kyle",
    20: "Sally",
    25: "John",
    30: "Rick"
]
 
q3MyDictionary.updateValue("Wilson", forKey: 25)
// After this runs John will now be Wilson. Since you are updating key `25` value. The other items will remain unchanged.
print(q3MyDictionary)

/**
 * Question 4
 */
var q4MyDictionary: [Int: String] = [
    10: "Joe",
    15: "Kyle",
    20: "Sally",
    25: "John",
    30: "Rick"
]
 
q4MyDictionary.removeValue(forKey: 15)
// After this runs Kyle will no longer be in the dictionary. All other items remain unchanged.
print(q4MyDictionary)

/**
 * Question 5
 */
var q5MyDictionary: [Int: String] = [
    10: "Joe",
    15: "Kyle",
    20: "Sally",
    25: "John",
    30: "Rick"
]
 
q5MyDictionary.removeAll()
// This will remove all items meaning the dictionary is not empty.
print(q5MyDictionary)

/**
 * Question 6
 */
var q6MyDict = [Int: String]()
// For this dictionary the key will be an Integer and the value will be a String

/**
 * Question 7
 */
var q7MyTuple = (4, "Bob")
// For this tuple the 0 position can be an Integer and the 1 position can be a String


/**
 * Question 8
 */
var q8MyTuple = (4, "Bob", 3.1415)
 
print(q8MyTuple.2)
// This will print 3.1415 (since tuple index starts at 0. So the the third item will be index 2

/**
 * Question 9
 */
var q9MyTuple = (age: 4, name: "Bob", IQ: 3.1415)

print(q9MyTuple.IQ)
// You can use the identifier `IQ` to retrieve 3.1415. You can also still use the index it seems which is interesting. So can do q9MyTuple.2. However using the identifer is cleaner

/**
 * Question 10
 */
var q10MyTuple = (age: 4, name: "Bob", IQ: 3.1415)

print(q10MyTuple.name)
// You can use the identifier `name` to retrieve Bob. You can also still use the index. So can do q10MyTuple.1
