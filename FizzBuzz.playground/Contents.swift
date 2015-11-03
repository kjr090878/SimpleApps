//: Playground - noun: a place where people can play

import UIKit

for num in 1...100 {
    
   if (num % 3 == 0) && (num % 5 == 0) {
        
        print("FIZZBUZZ")
    
} else if (num % 5 == 0) {
    print("Buzz")

   } else if (num % 3 == 0) {
    
    print("FIZZ")
    
}   else {
    
    print(num)
    
}
}

