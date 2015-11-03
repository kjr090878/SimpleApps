//: Playground - noun: a place where people can play

import UIKit

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "nil"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
 // MARK: - Conditional


let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

// MARK: - Switch

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

// MARK: - Dictionary


var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

// MARK: - While


var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)

var secondForLoop = 0
for var i = 0; i < 4; ++i {
    secondForLoop += i
}
print(secondForLoop)

// MARK: - ForIn

func greet(name: String, lunchSpecial: String) -> String {
    return "Hello \(name), today's special is \(lunchSpecial)."
}
greet("Bob", lunchSpecial: "food")

// MARK - FunctionParameters


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
var sum = 0

for score in scores {
    if score > max {
        max = score
    } else if score < min {
        min = score
    }
    sum += score
}

return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])

statistics
print(statistics.sum)
print(statistics.2)

// MARK: - TUPLES


func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)
sumOf(50)
sumOf(60,53)

// MARK: - TupleArray


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// MARK: - Nesting


func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// MARK: - Incrementer

func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)

// MARK: - FunctionWithFunction







