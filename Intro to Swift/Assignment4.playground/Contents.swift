import UIKit


/**
 * Question 1
 *
 * Create closed range FOR loop with 5 loops
 */
for x in 12...16 {
    print("Closed Range loop item: \(x)")
}

/**
 * Question 2
 *
 * Create half open range FOR loop with 4 loops
 */
for x in 12..<16 {
    print("Half-Open Range loop item: \(x)")
}

/** This is the list of strings used for Question 3 and 4 */
let questionThreeFourArray: [String] = ["car", "boat", "plane", "bike", "train"];

/**
 * Question 3
 *
 * Print each item in array via FOR loop
 */
for x in questionThreeFourArray {
    print(x)
}

/**
 * Question 4
 *
 * Print each item in array via a forEach loop
 */
questionThreeFourArray.forEach { x in
    print(x)
}

/**
 * Question 5
 *
 * WHILE loop to print string 3 times
 */
var q5Counter = 0

while (q5Counter < 3) {
    print("While looping iteration: \(q5Counter)")
    q5Counter += 1
}

/**
 * Question 6
 *
 * Fix the while loop to avoid it becoming an endless loop
 */
var q6x = 1
 
while q6x <= 5 {
    print ( q6x )
    q6x += 1
}

/**
 * Question 7
 *
 * Create REPEAT-WHILE loop that runs 6 times
 */
var q7Counter = 0
 
repeat {
    print("Repeat While loop counting: \(q7Counter)")
    q7Counter += 1
} while (q7Counter < 6)

/**
 * Question 8
 *
 * Create REPEAT-WHILE loop equivalent to provided while loop.
 * In this case teh while part doesn't matter much since the break statement will exit the loop
 */
var q8x = 1
 
repeat {
    print ( q8x )
    q8x += 1
    if q8x == 2 {
        break
    }
} while (q8x <= 5)

/**
 * Question 9
 *
 * Create a nested loop (different loop types) where outer runs three times adn inner two times
 * I am assuming this means the outer runs three times and the inner runs two times for each outer loop.
 * I was not certain from instructions so wrote it both ways to be safe (second version will only ever execute the inner items twice
 */
// Outer 3 times and inner 2 times per each loop
var q9Inner = 0
for x in 1...3 {
    print("Outer loop run \(x)")
    while (q9Inner < 2) {
        print("Outer loop run \(x). Inner loop run \(q9Inner)")
        q9Inner += 1
    }
    
    q9Inner = 0
}

// Outer 3 times and inner 2 times ONCE
q9Inner = 0
for x in 1...3 {
    print("Outer loop B run \(x)")
    while (q9Inner < 2) {
        print("Outer loop B run \(x). Inner loop B run \(q9Inner)")
        q9Inner += 1
    }
}

/**
 * Question 10
 *
 * Rewrite provided REPEAT-WHILE loop as a FOR loop
 */
for x in 1...4 {
    print(x)
}

/**
 * BONUS
 *
 * Rewrite provided loops to a differnet ways to get same results
 */
var cardDeck = [String]()

let suits = ["♦️", "♠️", "♥️", "♣️"]
let specialCards = ["Jack", "Queen", "King", "Ace"]

for cardNumber in 2...14 {
    suits.forEach { suit in
        var cardValue = cardNumber <= 10 ? String(cardNumber) : specialCards[cardNumber - 11]
        cardDeck.append("\(cardValue)\(suit)")
    }
}

print(cardDeck)
