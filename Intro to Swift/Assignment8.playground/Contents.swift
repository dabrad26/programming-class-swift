import UIKit

/**
 * Question 1
 *
 * This can have 5 possible values. dog, cat, bird, reptile, fish, this is based on the Animals enum having 5 cases listed.
 */

/**
 * Question 2
 */
enum AnimalsQ2 {
    case dog
    case cat
    case bird
    case reptile
    case fish
}
 
var pet: AnimalsQ2
// You can assign this with the enum name or without (dot item)
pet = AnimalsQ2.dog
pet = .dog
print(pet)

/**
 * Question 3
 */
var background: UIColor
background = .black
// To assign same value in a differnet way we can include enum name
background = UIColor.black
print(background)

/**
 * Question 4
 */
enum Directions {
    case north
    case south
    case east
    case west
}
 
// This will not work as `southeast` is not one of the cases of Directions.  It can only be set to one of the four cases defined in `enum Directions`
// var compass: Directions
// compass = Directions.southeast

/**
 * Question 5
 */
struct PatientQ5 {
    var name: String = ""
    var age: Int = 0
    var weight: Float = 0
}

// Since the struct includes default values we can accept that and just simply set it to a variable with calling it with no params.
var q5Patient = PatientQ5()
print(q5Patient)

/**
 * Question 6
 */
struct PatientQ6 {
    var name: String = ""
    var age: Int = 0
    var weight: Float = 0
}
 
var fred = PatientQ6()
// We can assign variables for each via the INIT (auto generated) or per item variable defining
fred.name = "Fred"
fred.age = 43
fred.weight = 214.31
print(fred)
// Init version with auto generated init
var fredInit = PatientQ6(name: "Fred via init", age: 53, weight: 193.22)
print(fredInit)

/**
 * Question 7
 */
struct EmployeeQ7 {
    var name: String
    var age: Int
    var weight: Float
    
    init(name: String, age: Int, weight: Float) {
        self.name = name
        self.age = age
        self.weight = weight
    }
}
 
// Since this has a declared init we must pass the data when we call it
let q7Employee = EmployeeQ7(name: "John", age: 23, weight: 174.33)
print(q7Employee)

/**
 * Question 8
 */
struct EmployeeQ8 {
    var name: String
    var age: Int
    var weight: Float
    
    init(name: String, age: Int, weight: Float) {
        self.name = name
        self.age = age
        self.weight = weight
    }
}
 
 
var cashier = EmployeeQ8(name: "Fred", age: 35, weight: 174.2)
cashier.name = "Johnny"
cashier.name = "Billy"
// Since Billy was the last name set it will be the name. age and weight are unchanged so they will remain was was set in the init
print(cashier)

/**
 * Question 9
 */
// This variable MUST be set to run the code
var first: String
// This variable does not have to be set. It will be nil if we use it before declaring
var last: String?

first = "Setting to keep it working"
// print(first, last) // Last is nil
last = "Now it is set"
if let y = last {
    print(first, y) // This will print first and "Now it is set" since we set last on line above. If that line doesn't exist then it will skip this
}

/**
 * Question 10
 */
var place: String?
place = "Paris"
 
// This if statement is an optional binding where it will call ONLY if `place` is not nil. In the example here place is set to "Paris" therefore it will make it into this block and print it; the variable `z` is used since it no longer requires unwrapping.
if let z = place {
    print (z)
}
