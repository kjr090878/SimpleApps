//
//  FirstViewController.swift
//  GroupProject
//
//  Created by Kelly Robinson on 10/29/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit



class FirstViewController: UIViewController {
    
    
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
                self.view.backgroundColor = sender.backgroundColor
        
        
       let randomNumer = arc4random_uniform(UInt32(wordArray.count))
        wordLabel.text = wordArray[Int(randomNumer)]
        
        
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
