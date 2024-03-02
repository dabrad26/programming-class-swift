import UIKit

/**
 * Question 1
 * Explain two different ways to create an arary of Integers
 */
// This way sets an array to some numbers initially
var q1Array = [1, 31, 65]
// This way creates an empty array and then I append some
var q1Array2 = [Int]()
q1Array2.append(1)
q1Array2.append(31)
q1Array2.append(65)
print(q1Array)
print(q1Array2)

/**
 * Question 2
 */
var q2Names = ["Joseph", "Marilyn", "Linda", "Aaron"]
// The index value of Linda is 2, since we start at 0 and count up
print(q2Names[2])

/**
 * Question 3
 */
var q3Names = ["Joseph",  "Marilyn",  "Linda",  "Aaron"]
// Since min command returns based on alphabetic order for Strings it will return Aaron
print(q3Names.min()!)

/**
 * Question 4
 */
var q4Names = ["Joseph", "Marilyn", "Linda", "Aaron"]
// Count returns the number of items starting at 1. So this will return 4
print(q4Names.count)

/**
 * Question 5
 */
var q5Names = ["Joseph", "Marilyn", "Linda", "Aaron"]
q5Names.append("Bob")
// Since Bob will get appended to the end it would be Joseph, Marilyn, Linda, Aaron, Bob
print(q5Names)

/**
 * Question 6
 */
var q6Names = ["Joseph", "Marilyn", "Linda", "Aaron"]
q6Names.insert("Zoey", at: 2)
// Since Zoey will get inserted after 0, 1, |2| it would be Joseph, Marilyn, Zoey, Linda, Aaron
print(q6Names)

/**
 * Question 7
 */
var q7Names = ["Joseph", "Marilyn", "Linda", "Aaron"]
q7Names[2] = "Tommy"
// Since Tommy will replace the item at index 2 (0, 1, |2|) it would be Joseph, Marilyn, Tommy, Aaron
print(q7Names)

/**
 * Question 8
 */
var q8Names = ["Joseph", "Marilyn", "Linda", "Aaron"]
// Since Susan is not in the names array it will go into the ELSE block and print "Name not found"
if q8Names.contains("Susan") {
    print ("Found item")
} else {
    print ("Name not found")
}

/**
 * Question 9
 */
var q9Names = ["Joseph", "Marilyn", "Linda", "Aaron"]
// Since this will remove the item at index 2 (0, 1, |2|) it will remove Linda. Resulting in the array being Joseph, Marilyn, Arron
q9Names.remove(at: 2)
print(q9Names)

/**
 * Question 10
 */
var q10Names = ["Joseph", "Marilyn", "Linda", "Aaron"]
// Since Linda is in the array it will go into the parent IF statement. Next it will get the index of Linda which is 2 and print "Found at index 2" since the IF statement will be truthy.
if q10Names.contains("Linda") {
    if let index = q10Names.firstIndex(of: "Linda") {
       print("Found at index \(index)")
    }
}

/**
 * Bonus
 */
let adjectives = ["Crazy", "Self centered", "Dirty", "Cynical", "Boorish"]
let nouns = ["Employee", "Student", "Barista", "Officer", "Driver"]
let emojis = ["😂", "🦄", "🍇", "🎱", "🚜"]
var insultHere: String = ""

for _ in 1...5 {
    let parts = [adjectives.randomElement() ?? "", (nouns.randomElement() ?? "").lowercased(), emojis.randomElement() ?? "", "\n"]
    insultHere += parts.joined(separator: " ")
}

print(insultHere)
