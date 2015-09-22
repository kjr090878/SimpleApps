//
//  ViewController.swift
//  Calculater
//
//  Created by Kelly Robinson on 9/21/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

var number1 = ""
var number2 = ""
var operation: OperationType?


class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var operationLabel: UILabel!
    
    @IBAction func numberPressed(button: UIButton) {
        
        let num = button.titleLabel!.text!
        
        if operation == nil {
            
            number1 += num
            displayLabel.text = number1
            
        } else {
            
            number2 += num
            displayLabel.text = number2
            
        }

    }

    @IBAction func clear() {
        
        number1 = ""
        number2 = ""
        
        operation = nil
        displayLabel.text = "0"
        
        operationLabel.text = nil
        
    }
    
    @IBAction func changeSign () {
        
        
        if operation == nil {
            
            let n1 = Double(number1)! * -1
            number1 = "\(n1)"
            displayLabel.text = number1
            
        } else {
            
            let n2 = Double(number2)! * -1
            number2 = "\(n2)"
            displayLabel.text = number2
            
        }
        
    
        
    }
    
    @IBAction func setOperation(button: UIButton) {
        
        let opSign = button.titleLabel!.text! // "+"
        
        operation = OperationType(rawValue: opSign)
        
        operationLabel.text = opSign
        
    }
    
    @IBAction func runOperation() {
        
        // number1 to Double
        let num1 = Double(number1)
        // number2 to Double
        
        let num2 = Double(number2)
        // total equal number1 operation to number2
        
        let total = calculateNumbers(n1: num1!, n2: num2!, operation: operation!)
        
        // if calculations do not have a remainder then
        
        if total % 1 == 0 {
            
            //string is an integer and not Double
            
            displayLabel.text = "\(Int(total))" // 5
            //or
            
        } else {
            //string is Double
            
            displayLabel.text = "\(total)" // 5.5
            
        }
        
        
        number1 = "\(total)"
        
        
        
    }


}

