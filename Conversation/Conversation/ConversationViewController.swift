//
//  ConversationViewController.swift
//  Conversation
//
//  Created by Kelly Robinson on 11/3/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit
import Parse

class ConversationViewController: UIViewController {
    
    @IBOutlet weak var messageField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
                
        var user: PFUser! {
        
      
        didSet {
            
            guard let me = PFUser.currentUser() else { return }
            
            let messageQuery = PFQuery(className: "Message")
            
            messageQuery.whereKey("sender", containedIn: [user,me])
            
            messageQuery.whereKey("receiver", containedIn: [user,me])
            
            messageQuery.findObjectsInBackgroundWithBlock { (objects, error) -> Void in
                
                self.messages = objects ?? []
                // TODO: reload tableView
                
            }
        }
        
    }
    
    var messages: [PFObject] = []

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
