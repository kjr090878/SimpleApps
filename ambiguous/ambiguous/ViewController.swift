//
//  ViewController.swift
//  ambiguous
//
//  Created by Kelly Robinson on 10/15/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var lockedStatusLabel: UILabel!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
  
        
        if PFUser.currentUser() != nil {
            
            
        } else {
            
            let storyboard = UIStoryboard(name: "ambiguousStoryboard", bundle: nil)
            
            if let loginVC = storyboard.instantiateInitialViewController() {
            
            presentViewController(loginVC, animated: true, completion: nil)
            
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

