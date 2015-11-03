//
//  TheButtonUIButton.swift
//  GroupProject
//
//  Created by Kelly Robinson on 10/29/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

@IBDesignable

class TheButtonUIButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0
    
    override func drawRect(rect: CGRect) {
        
        layer.cornerRadius = cornerRadius
        layer.masksToBounds = cornerRadius > 0
         layer.borderWidth = borderWidth
        
    }
    
    @IBInspectable var borderWidth: CGFloat = 0
    
    @IBInspectable var borderColor: CGColor = UIColor.blueColor().CGColor

}
