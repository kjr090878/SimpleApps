//: Playground - noun: a place where people can play

import UIKit


// unary operators

// prefix = -a, !b, ?c, etc. (proceeds the target)
// postfix = a++, b?, c!, etc. (at the end of the target)


// binary operators

// (1 + 2) (it is the operator between two targets)


// ternary operators

// (a ? b : c) (It connects three targets to eachother


// assignment operators

let b = 10 // (b is assigned a value of 10. a is assigned a mutable variable of 5. When a = b, it becomes 10 because 10 is the value of the constant.)

var a = 5

a = b

// Arithmetic Operators

1 + 2       // equals 3
5 - 3       // equals 2
2 * 3       // equals 6
10.0 / 2.5  // equals 4.0 (arithmetic operators cannot have any remainders and round up when performing a function on two operators)

// Remainder Operator

// shows the answer in remainders


// “Floating-Point Remainder Calculations”

8 % 2.5   // equals 0.5 (calculates the remainder of the function in a decimal format)


// “Increment and Decrement Operators”

var i = 0
++i      // i now equals 1

var f = 0
let g = ++f
// f and g are now both equal to 1
let h = f++
// f is now equal to 2, but h has been set to the pre-increment value of 1”

// increment properties allow you to short-hand add a function to increase or decrease an operator/target by one. If it is added before the operator/target it will perform it before the value is set. If it is placed post fix it will run the function on the returned value.

// Unary Minus Operator


let three = 3
let minusThree = -three       // minusThree equals -3
let plusThree = -minusThree   // plusThree equals 3, or "minus minus three”

// the single minus sign adds a subtraction function onto an operator


// Unary Plus Operator

let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix equals -6


// Compound Assignment Operators

var x = 1
x += 2
// a is now equal to 3 .. (Compound Assignment Operators allow for a shorthand way to add in single increments when working with a single operator.


// Comparison Operators

//Equal to (a == b)
//Not equal to (a != b)
//Greater than (a > b)
//Less than (a < b)
//Greater than or equal to (a >= b) (basic operations of greater than, less than, or equal to)

1 == 1   // true, because 1 is equal to 1
2 != 1   // true, because 2 is not equal to 1
2 > 1    // true, because 2 is greater than 1
1 < 2    // true, because 1 is less than 2
1 >= 1   // true, because 1 is greater than or equal to 1
2 <= 1   // false, because 2 is not less than or equal to 1

// Ternary Conditional Operator

//if question {
//    
//    answer1
//    
//} else {
//    
//    answer2
//}

let contentHeight = 40
let hasHeader = true
//let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight is equal to 90
//The preceding example is shorthand for the code below:

//let contentHeight = 40
//let hasHeader = true
var rowHeight = contentHeight
if hasHeader {
    rowHeight = rowHeight + 50
} else {
    rowHeight = rowHeight + 20
}
// rowHeight is equal to 90 .. (Comparison operators are a short hand way to allow yoiu to compare two targets and based on the comparison, decide whether to perform the first target or the second)

// Nil Coalescing Operator

var z: Int?

z != nil ? z! : b

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red”

// Range Operators









