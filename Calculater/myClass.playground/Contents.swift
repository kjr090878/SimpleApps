//: Playground - noun: a place where people can play

import UIKit

// -User
/// -name
/// -password
//// -email
///// -favoriteColor? ... enum FavoriteColor
////// -func -hey(name)
////// -func -login(perameters)
////// -func  -register (peramiters)
////// -func -logout()

enum FavoriteColor {
    
    case Black
    
}

class User {
    
    var name : String?
    var password : String?
    var email : String?
    var favoriteColor : FavoriteColor?
        
    func hey(name: String) {
        
    }
    
    func logout() {
        
        
        
    }
    
    func login(email: String, password: String) {
        
    }
    
    func register(name: String, address: String, phoneNumber: String, email: String) {
        
    }
    
    
    
}



/// Optionals




var color: String?


color = "Red"

print(color!)


if color != nil {
    
    print(color)
    
    
}

if let c = color {
    
    print(c)
    
    
    
}
    
    

class User1 {
    
    var name: String!
    var email: String!
    var password: String!
    var favoriteColor: FavoriteColor?
    
    func sayHelloTo(name: String) {
        
        print("\(self.name) says hi to \(name)")
        
        
        
    }
    
    
    func register(name: String, email: String, password: String) {
        
        self.name = name
        self.email = email
        self.password = password
        
        
        
        
    }
    
}

let jo = User1()

jo.register("Jo", email: "me@jo2.co", password: "1234")

jo.sayHelloTo("Bob")




