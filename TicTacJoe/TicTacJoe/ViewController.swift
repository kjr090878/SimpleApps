//
//  ViewController.swift
//  TicTacJoe
//
//  Created by Kelly Robinson on 9/24/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var grid = [[0,0,0],[0,0,0],[0,0,0]]
    
    var isPlayer1Turn = true
    
    var player1 = 0
    var player2 = 0
    var stalemate = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.whiteColor()
        
        for (r,row) in grid.enumerate() {
            
            print(row)
            
            for (c,_) in row.enumerate() {
                
                let x = r * 110
                let y = c * 110
                
                let button = TTJButton(frame: CGRect(x: x, y: y, width: 100, height: 100))
                
                button.backgroundColor = UIColor.orangeColor()
                
                button.row = r
                button.col = c
                
                button.addTarget(self, action: "spacePressed:", forControlEvents: .TouchUpInside)
                
                view .addSubview(button)
                
                
                
            }
            
        }
        
    }
    
    
    func spacePressed(button: TTJButton) {
        
        if button.player == 0 {
            
            button.player = isPlayer1Turn ? 1 : 2
            
            grid[button.row][button.col] = isPlayer1Turn ? 1 : 2
            
            isPlayer1Turn = !isPlayer1Turn
        }
        
        checkForWinner()
        
        
        print("button works")
        
    }
    
    func checkForWinner()   {
        
        let possibilities = [ ((0,0), (0,1), (0,2)) ]
        
        for possibility in possibilities {
            
            let (p1,p2,p3) = possibility
            
            let value1 = grid[p1.0][p1.1]
            let value2 = grid[p2.0][p2.1]
            let value3 = grid[p3.0][p3.1]
            
            if value1 == value2 && value2 == value3 {
                
                if value1 != 0 {
                    
                    print ("Player \(player1) Wins")
                    
                    
                } else {
                    
                    
                    print("all zeros")
                    
                    
                }
                
            } else {
                
                print("does not match")
                
            }
            
        }
        
    }
    
}

class TTJButton: UIButton {
    
    var row = 0
    var col = 0
    
    var player = 0 {
        
        didSet{
            
            switch player {
                
            case 1: backgroundColor = UIColor.greenColor()
            case 2: backgroundColor = UIColor.lightGrayColor()
            default: backgroundColor = UIColor.orangeColor()
                
            }
            
        }
    
    }
    
}



