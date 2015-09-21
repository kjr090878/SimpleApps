//
//  ViewController.swift
//  Calculater
//
//  Created by Kelly Robinson on 9/21/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var pressOne: UIButton!
    @IBAction func pressPoint(sender: AnyObject) {
    }
    @IBAction func pressZero(sender: AnyObject) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

