//: Playground - noun: a place where people can play

import UIKit

//func infiniteLoop() {
//    
//    print("infinite")
//    infiniteLoop()
//    
//}
//
//infiniteLoop()


let info = [

    "name" : "Jo",
    "interests" : [
    
        "hobby" : "photography",
        "work" : "computers"
        
    ]

]


func search(info: [String:AnyObject], forString string: String) -> Bool {
    
    for (_,value) in info {
        
        if value is String {
            
            if value as! String == string { return true }
            
            
        }
        
        if value is [String:AnyObject] {
            
            if search(value as! [String : AnyObject], forString: string) { return true }
            
        }
        
//        if let v = value as? String {
//            return v == string
//            
//        }
    }
    
    return false
        
}

search(info, forString: "photography")
    
