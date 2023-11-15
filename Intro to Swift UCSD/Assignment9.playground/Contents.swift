import UIKit

/**
 * Question 1
 * 
 * Encapsulation is the concept keeping all the code (variable and functions) logically inside concepts or items that represent some logical entity.  This encapsulates the variables and functions inside shareable code that can be declared and used as needed and even expanded and overriden to support multiple variations of logical items.
 */

/**
 * Question 2
 */
class Car {
    var name: String = ""
    var cost: Float = 0
    
    func move (speed: Double) {
        print ("The car is moving at \(speed) mph")
    }
}

// This class Truck inherits Car and adds an additional item called towingCapacity
class Truck : Car {
    var towingCapacity: Float = 0
}

var f150 = Truck();
f150.name = "Ford F-150"
f150.cost = 46983.33
f150.towingCapacity = 3200.00
print(f150.towingCapacity)

/**
 * Question 3
 *
 * By adding private to the item it is now only available inside the class
 */
class Vehicle {
    private var name: String = ""
    private var cost: Float = 0
}

/**
 * Question 4
 *
 * To set this to an obect we simply set it and call it. Since it has default items and no need for init
 */
class PetQ4 {
    var name: String = ""
    var age: Int = 0
}
 
var q4Pet = PetQ4()

/**
 * Question 5
 *
 * Since this requires an init we must call it with the param names
 */
class PetQ5 {
    var name: String = ""
    var age: Int = 0
    
    init (name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var q5Pet = PetQ5(name: "Kiki", age: 9)

/**
 * Question 6
 *
 * Since this requires an init we must call it with the param names
 */
class AnimalQ6 {
    var name: String = ""
    var age: Int = 0
    
    func speak(sound: String) {
        print ("This animal goes " + sound)
    }
}
 
// PetQ6 includes variables name and age, and the function speak.
class PetQ6 : AnimalQ6 {
    
}

/**
 * Question 7
 */
class AnimalQ7 {
    var name: String = ""
    var age: Int = 0
    
    func speak(sound: String) {
        print ("This animal goes " + sound)
    }
}
 
class PetQ7 : AnimalQ7 {
    override func speak(sound: String) {
        print ("My pet makes this sound: " + sound)
    }
}
 
var cat = PetQ7()
// This will print "My pet makes this sound: meow" since the PetQ7 overrides the function from AnimalQ7
cat.speak(sound: "meow")

/**
 * Question 8
 */
class AnimalQ8 {
    var name: String = ""
    var age: Int = 0
    
    func speak(sound: String) {
        print ("This animal goes " + sound)
    }
}
 
// PetQ8 contains variable name and age. And speak function that says My pet makes this sound... Since it overrides the AnimalQ8
class PetQ8 : AnimalQ8 {
    override func speak(sound: String) {
        print ("My pet makes this sound: " + sound)
    }
}

/**
 * Question 9
 */
class AnimalQ9 {
    var name: String = ""
    var age: Int = 0
    
    func speak(sound: String) {
        print ("This animal goes " + sound)
    }
}
 
class PetQ9 : AnimalQ9 {
    func command(direction: String) {
        print ("Do this command " + direction)
    }
}
 
var q9Cat = PetQ9()
// This will print "This animal goes meow" since it will call speak which is on AnimalQ9 and not overriden.
q9Cat.speak(sound: "meow")

/**
 * Question 10
 */
class AnimalQ10 {
    var name: String = ""
    var age: Int = 0
    
    func speak(sound: String) {
        print ("This animal goes " + sound)
    }
}
 
// This class has two variables name and age. And two functions speak and command.
class PetQ10 : AnimalQ10 {
    func command(direction: String) {
        print ("Do this command " + direction)
    }
}
