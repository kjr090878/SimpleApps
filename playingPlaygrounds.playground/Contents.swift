//: Playground - noun: a place where people can play
//
//  ViewController.swift
//  TypingPractice
//
//  Created by Kelly Robinson on 11/2/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//



// #1 need an array of phrases


import UIKit

var arrayPhrase: [String] = ["Poopy sadFace angryFace", "devilFace angryFace Poopy", "Zzz sadFace poopy"]


let arrayCount = UInt32(arrayPhrase.count)
let randomIndex = Int(arc4random_uniform(arrayCount))

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var practiceTextField: UITextField!
    
    @IBOutlet weak var practiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillPhrase()
        
    }
    
    func fillPhrase() {
        
        practiceLabel.text = arrayPhrase[randomIndex]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // we need to test the full textfield string == label string
        
        if practiceTextField == practiceLabel {
            
            practiceTextField.text = ""
            practiceLabel.text = arrayPhrase[randomIndex]
            return true
            
        } else {
            return false
        }
        
        // if true, change label to next phrase and empty text field
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        // user finished editing
        
        return true
        
    }
    
    
}



