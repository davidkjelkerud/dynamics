//
//  ViewController.swift
//  dynamics
//
//  Created by David Kjelkerud on 9/8/14.
//  Copyright (c) 2014 David Kjelkerud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var brownView: UIView!
    
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior()
        collision = UICollisionBehavior()
        
        animator.addBehavior(gravity)
        animator.addBehavior(collision)
        
        collision.addItem(brownView)
        collision.addItem(greenView)
        
        collision.addBoundaryWithIdentifier("ground", fromPoint: CGPoint(x: 0, y: 568), toPoint: CGPoint(x: 320, y: 568))

    }

    @IBAction func onGravity(sender: AnyObject) {
        gravity.addItem(greenView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

