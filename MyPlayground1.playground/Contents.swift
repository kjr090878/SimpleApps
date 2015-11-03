//: Playground - noun: a place where people can play

import UIKit


let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error


print("The status code is \(statusCode)")
// prints "The status code is 404"
print("The status message is \(statusMessage)")
// prints "The status message is Not Found


print("The status code is \(http404Error.0)")
// prints "The status code is 404"
print("The status message is \(http404Error.1)")
// prints "The status message is Not Found


var convertedNumber: Int? = 123

//convertedNumber = nil

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// prints "convertedNumber has an integer value of 123.

print("\"\(555)\" could not be converted to an integer")


