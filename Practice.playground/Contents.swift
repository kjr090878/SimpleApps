//: Playground - noun: a place where people can play

import UIKit

var number1: Double = 25

var number2 = 33.5

let total = number1 + number2

func addNumber(num1: Double, num2: Double) -> Double {
    
    return num1 + num2

}

class Car {
    
    var color: UIColor = UIColor.blackColor()
    
    func brake() {
        
        
    }
    
    func accelerate() {
        
        
    }
    
    
}


var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")
// prints "the number of characters in cafe is 4"

word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301

print("the number of characters in \(word) is \(word.characters.count)")




print("1")
print("2")
print("3")
print("4")

print("1", terminator: "...\n")
print("2", terminator: "")
print("3", terminator: "!\n")
print("4", terminator: "?\n")

enum Shape: Float {
    
    case Circle = 0.5, Square = 1.5, Triangle = 2.5
    
}

let s = Shape.Square

s.hashValue
s.rawValue

let s2 = Shape.Square

s2.hashValue
s.rawValue


enum DonutChoices: Double {
    
    case HalfDozen = 6
    case Dozen = 12
    
}

let chose = DonutChoices.Dozen

chose.rawValue * 0.90

let f = true

switch chose {
    
case .Dozen:
    
    DonutChoices.Dozen.rawValue
    
    if f { fallthrough }
    
case .HalfDozen:
    
    DonutChoices.HalfDozen.rawValue
    
    
}

let somePoint = (1, 1)

print("(\(somePoint.0), \(somePoint.1)) is inside the box")




func sayGoodbye(personName: String) {
    
    print("Goodbye, \(personName)!")
    
}

func addNumbers(numbers: [Int]) -> Int {
    
    var sum = 0
    
    for num in numbers {
        
        sum += num
        
    }
    
    return sum
    
}

func doubleAddedNumbers(numbers: [Int]) -> Int {
    
    return 2 * addNumbers(numbers)
    
}

addNumbers([5,6,9,2,5,8])

doubleAddedNumbers([5,6,9,2,5,8])


