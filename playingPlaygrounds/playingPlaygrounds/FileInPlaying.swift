//
//  FileInPlaying.swift
//  playingPlaygrounds
//
//  Created by Kelly Robinson on 11/2/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

//
//  KeyboardViewController.swift
//  PracticeKeyboard
//
//  Created by alex oh on 11/2/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

var dictionary: [String:String] = [
    
    "💤" : "Zzz ",
    "😩" : "sadFace ",
    "💩" : "Poopy ",
    "😈" : "devilFace ",
    "😡" : "angryFace "
    
    
]

class KeyboardViewController: UIInputViewController {
    
    
    @IBAction func backButton(button: UIButton) {
        
        textDocumentProxy.deleteBackward()
        
    }
    
    @IBAction func touchedEmoji(button: UIButton) {
        
        guard let text = button.titleLabel?.text else { return }
        
        textDocumentProxy.insertText(dictionary["\(text)"]!)
        
        
    }
    
    
    @IBOutlet var nextKeyboardButton: UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .System)
        
        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), forState: .Normal)
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(self.nextKeyboardButton)
        
        let nextKeyboardButtonLeftSideConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0.0)
        let nextKeyboardButtonBottomConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraints([nextKeyboardButtonLeftSideConstraint, nextKeyboardButtonBottomConstraint])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
        self.nextKeyboardButton.setTitleColor(textColor, forState: .Normal)
    }
    
}

