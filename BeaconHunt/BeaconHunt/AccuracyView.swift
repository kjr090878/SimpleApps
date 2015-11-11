//
//  AccuracyView.swift
//  BeaconHunt
//
//  Created by Kelly Robinson on 11/10/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit



@IBDesignable class AccuracyView: UIView {

    var beaconColor: UIColor = UIColor.lightGrayColor() {
        
        didSet { setNeedsDisplay() }
    }

    override func drawRect(rect: CGRect) {
        
        
        let context = UIGraphicsGetCurrentContext()
        
        beaconColor.set()
        
        let insetRect = CGRectInset(rect, 1, 1)
        
        CGContextStrokeEllipseInRect(context, insetRect)
    }
    

}
