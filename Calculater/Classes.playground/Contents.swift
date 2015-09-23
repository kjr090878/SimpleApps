//: Playground - noun: a place where people can play

import UIKit

class Box {
    
    
    var color: UIColor?
    var height: CGFloat = 0
    var width: CGFloat = 0
    
    func changeSize(size: CGSize) {
        
        height = size.height
        width = size.width
        
    }
}

var box1 = Box() //initialize an object to return
var box2 = Box()

box1.changeSize(CGSize(width: 10, height: 10))
box2.changeSize(CGSize(width: 20, height: 10))



class Shape {
    
    var sides: Int?
    
}

class Rectangle: Shape {
    
    override init() {
     super.init()
        sides = 4
        
    }
    
}





/// Computer Thinking Flow


    
    


var num1 = 1
var num2 = 2

num1 + num2

func addNumbers() {
    
    num1 + num2

}

num1 + num2
addNumbers()



//// Computer Thinking Flow

class Math {
    
    var num1: Int = 0
    var num2: Int = 0
    
    func addNumbers() -> Int {
        
        return num1 + num2
        
        
    }
    
    func subtractNumbers() -> Int {
        
        return num1 - num2
        
        
    }
}

class Human {
    
    var math = Math()
    
    func setNumbers() {
        
        math.num1 = 5
        math.num2 = 7
        
        
        
        
    }
    
    func runMath() {
        
        self.doAddition()
        self.doSubtraction()
        
        
        
    }
    
    func doAddition() {
        
        let value = math.addNumbers()
        
        
    }
    
    func doSubtraction() {
        
        let value = math.subtractNumbers()
        
    }
    
}

let me = Human()

me.setNumbers()

me.math.num1

let you = Human()

you.math.num1
