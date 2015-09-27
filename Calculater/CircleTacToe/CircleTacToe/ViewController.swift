//
//  ViewController.swift
//  CircleTacToe
//
//  Created by Kelly Robinson on 9/26/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

// UIViewController is of the class ViewController

class ViewController: UIViewController {
    
    // variable grid = an array of spaces
    
    var grid = [[0,0,0],[0,0,0],[0,0,0]]
    
    
    var isPlayer1Turn = true
    
    // player 1's score is a variable that = 0
    var player1Score = 0
    // player 2's score is a variable that = 0
    var player2Score = 0
    // stalemate's score is a variable that = 0
    var stalemateScore = 0
    
    
    
    // override the function viewDidLoad
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // the background color of the view = white of UIColor
        view.backgroundColor = UIColor.whiteColor()
        
        let gameStatus = UILabel(frame: CGRect(x: 0, y: 0, width: 600, height: 75))
        
        gameStatus.backgroundColor = UIColor(red:0.01, green:0.84, blue:0.82, alpha:1)
        
        
        gameStatus.text = "Player 1 Turn"
        
        gameStatus.textColor = UIColor.whiteColor()
    
        gameStatus.textAlignment = .Center
        
        gameStatus.center.x = view.center.x
        
        gameStatus.font = UIFont.systemFontOfSize(40)
        
        view.addSubview(gameStatus)
        
        let playButton = UIButton(frame: CGRect(x: 135, y: 550, width: 150, height: 150))
        
        playButton.backgroundColor = UIColor.blackColor()
        
        playButton.layer.cornerRadius = 75
        
        playButton.setTitle("Play", forState: UIControlState.Normal)
        
        playButton.titleLabel?.font = UIFont.systemFontOfSize(40)
        
        view.addSubview(playButton)
        
        let player2Button = UIButton(frame: CGRect(x: 85, y: 100, width: 80, height: 80))
        
        player2Button.backgroundColor = UIColor(red:0.01, green:0.84, blue:0.82, alpha:1)
        
        player2Button.layer.cornerRadius = 40
        
        player2Button.setTitle("2", forState: UIControlState.Normal)
        
        player2Button.titleLabel?.font = UIFont.systemFontOfSize(40)
        
        view.addSubview(player2Button)
        
        
        let stalemateButton = UIButton(frame: CGRect(x: 168, y: 100, width: 80, height: 80))
        
        stalemateButton.backgroundColor = UIColor.blackColor()
        
        stalemateButton.layer.cornerRadius = 40
        
        stalemateButton.setTitle("0", forState: UIControlState.Normal)
        
        stalemateButton.titleLabel?.font = UIFont.systemFontOfSize(40)
        
        view.addSubview(stalemateButton)
        
        let player1Button = UIButton(frame: CGRect(x: 250, y: 100, width: 80, height: 80))
        
        player1Button.backgroundColor = UIColor(red:0.89, green:0.31, blue:0.05, alpha:1)
        
        player1Button.layer.cornerRadius = 40
        
        player1Button.setTitle("1", forState: UIControlState.Normal)
        
        player1Button.titleLabel?.font = UIFont.systemFontOfSize(40)
        
        view.addSubview(player1Button)
        
        let resetButton = UIButton(frame: CGRect(x: 334, y: 125, width: 40, height: 40))
        
        resetButton.backgroundColor = UIColor(red:1, green:0.01, blue:0.12, alpha:1)
        
        resetButton.layer.cornerRadius = 20
        
        resetButton.setTitle("X", forState: UIControlState.Normal)
        
        resetButton.titleLabel?.font = UIFont.systemFontOfSize(30)
        
        view.addSubview(resetButton)
        
        
        // the screen height =
        let screenHeight = Int(UIScreen.mainScreen().bounds.height)
        let screenWidth = Int(UIScreen.mainScreen().bounds.width)
        
        let buttonHW = 100
        let buttonSpacing = 4
        
        
        //
        
        let gridHW = (buttonHW * 3) + (buttonSpacing * 2)
        
        let leftSpacing = (screenWidth - gridHW) / 2
        let topSpacing = (screenHeight - gridHW) / 2
        
        //
        
        
        for (r,row) in grid.enumerate() {
            
            print(row)
            
            for (c,_) in row.enumerate() {
                
                let x = c * (buttonHW + buttonSpacing) + leftSpacing
                
                let y = r * (buttonHW + buttonSpacing) + topSpacing
                
//                let button: CTTButton
                
                let button = CTTButton(frame: CGRect(x: x, y: y, width: buttonHW, height: buttonHW))
                
                button.backgroundColor = UIColor(red:0.91, green:0.91, blue:0.91, alpha:1)
                button.layer.cornerRadius = CGFloat(buttonHW) / 2.0

                
                button.row = r
                button.col = c
                
                button.addTarget(self, action: "spacePressed:", forControlEvents: .TouchUpInside)
                
                view.addSubview(button)
                
//                func drawRect(rect: CGRect) {
//                    var path = UIBezierPath(ovalInRect: rect)
//                    UIColor.lightGrayColor().setFill()
//                    path.fill()
//                    
//                    
//                    
//                }
                
                
                
                
                
                
            } // col loop end
            
        } // row loop end
        
        //
        
    }
    
    func spacePressed(button: CTTButton) {
        
    }
        
}




class CTTButton: UIButton {
    
    var row = 0
    var col = 0
    
    var player = 0 {
        
        didSet {
            
            switch player {
                
            case 1 : backgroundColor = UIColor.darkGrayColor()
            case 2 : backgroundColor = UIColor.cyanColor()
            default : backgroundColor = UIColor.lightGrayColor ()
                
                
            }
            
        }
    }
}


