//
//  ViewController.swift
//  DynamicsPlayground
//
//  Created by Kelly Robinson on 10/8/15.
//  Copyright © 2015 Kelly Robinson. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIDynamicAnimatorDelegate, UICollisionBehaviorDelegate {
    
    
    var animator: UIDynamicAnimator?
    var gravity: UIGravityBehavior?
    var collision: UICollisionBehavior?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let square : UIView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        square.backgroundColor = UIColor.yellowColor()
        
        view.addSubview(square)
        
       
        animator = UIDynamicAnimator(referenceView:view)
        
        gravity = UIGravityBehavior(items: [square])
       
        
        animator?.addBehavior(gravity!)
//        
//        collision = UICollisionBehavior(items: [square])
//        collision.Reference
//        [_animator addBehavior:_collision];
        
        
        let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 130, height: 20))
        
        barrier.backgroundColor = UIColor.redColor()
        
        view.addSubview(barrier)
        
        collision = UICollisionBehavior(items: [square])
        collision?.translatesReferenceBoundsIntoBoundary = true
        animator?.addBehavior(collision!)
        
        // add a boundary that coincides with the top edge
//        CGPoint rightEdge = CGPointMake(barrier.frame.origin.x +
//            barrier.frame.size.width, barrier.frame.origin.y);
//        [_collision addBoundaryWithIdentifier:@"barrier"
//        fromPoint:barrier.frame.origin
//        toPoint:rightEdge];
        
        
        let rightEdge: CGPoint = CGPoint(x: 130, y: 300)
        
        collision?.addBoundaryWithIdentifier("barrier", fromPoint: barrier.frame.origin, toPoint: rightEdge)
        
        
        collision?.action = {
            
            let sTransform = NSStringFromCGAffineTransform(square.transform)
            let sCenter = NSStringFromCGPoint(square.center)
            
            print("\(sTransform), \(sCenter)")
            
        }
        

        
        
//        collision?.action = nil
//        collision?.action = {}
//        collision?.action = {} as? () -> Void
        
       
//        
//        _collision.collisionDelegate = self;
        
        self.collision?.collisionDelegate
  

        
//        collision!.addBoundaryWithIdentifier("barrier", fromPoint: CGPointMake(self.view.frame.origin.x, 350), toPoint: CGPointMake(self.view.frame.origin.x + self.view.frame.width, 350))
        
    }
    
    
    //            - (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item
    //        withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p {

    //            NSLog(@"Boundary contact occurred - %@", identifier);
    
    //        }
    

    func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, atPoint p: CGPoint) {
        
        print("Boundary contact occurred - \(identifier)")
        
        
        //    UIView* view = (UIView*)item;
        //    view.backgroundColor = [UIColor yellowColor];
        //    [UIView animateWithDuration:0.3 animations:^{
        //    view.backgroundColor = [UIColor grayColor];
        //    }];
        
        
        view.backgroundColor = UIColor.grayColor()
        
        
    }

    
    
   
    
    
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

