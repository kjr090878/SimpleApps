//
//  LoginViewController.swift
//  ambiguous
//
//  Created by Kelly Robinson on 10/15/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var userNameField: UITextField!
    
    @IBAction func pressedLogin(sender: AnyObject) {
        
        if let userName = userNameField.text {
            
        PFUser.logInWithUsernameInBackground(userName, password:"password") {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
                self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
                
            } else {
                // The login failed. Check error to see why.
            }
            }
        }
    }

    @IBAction func pressedRegister(sender: AnyObject) {
        
        let userName = userNameField.text
        
        let user = PFUser()
        user.username = userName
        user.password = "password"
        user.email = "email@example.com"
        // other fields can be set just like with PFObject
        user["phone"] = "415-392-0202"
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool, error: NSError?) -> Void in
            if let error = error {
                let errorString = error.userInfo["error"] as? NSString
                // Show the errorString somewhere and let the user try again.
            } else {
                // Hooray! Let them use the app now.
                self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
            }
        }
        
    }
    
}
