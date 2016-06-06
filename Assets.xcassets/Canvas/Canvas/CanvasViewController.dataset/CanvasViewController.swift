//
//  CanvasViewController.swift
//  Canvas
//
//  Created by Zhaochang He on 6/2/16.
//  Copyright © 2016 Zhaochang He. All rights reserved.
//

import UIKit

class CanvasViewController: UIViewController {

    @IBOutlet weak var trayView: UIView!
    
    var trayOriginalCenter: CGPoint!
    
    
    var trayDownOffset: CGFloat!
    
    var trayUp: CGPoint!
    
    var trayDown: CGPoint!
    
    var newlyCreatedFace: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        trayDownOffset = 200
        trayUp = trayView.center
        trayDown = CGPoint(x: trayView.center.x ,y: trayView.center.y + trayDownOffset)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPanFace(sender: UIPanGestureRecognizer) {
        
        if sender.state == UIGestureRecognizerState.Began {
         
        } else if sender.state == UIGestureRecognizerState.Changed {
            
        } else if sender.state == UIGestureRecognizerState.Ended {
            
        
        
        
    }
    
    
    
    @IBAction func didPanTray(sender: UIPanGestureRecognizer) {
        
        let translation = sender.translationInView(view)
        

        
        
        if sender.state == UIGestureRecognizerState.Began{
            UIView.animateWithDuration(0.2, animations: {
                
                self.trayOriginalCenter = self.trayView.center

            })
            
            
        } else if sender.state == UIGestureRecognizerState.Changed {
            self.trayView.center = CGPoint(x: trayOriginalCenter.x, y: self.trayOriginalCenter.y + translation.y)
            
            
        } else if sender.state == UIGestureRecognizerState.Ended{
            
            
            var velocity = sender.velocityInView(view)
        
            if velocity.y > 0 {
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.trayView.center = self.trayDown
                })
            } else {
                UIView.animateWithDuration(0.3, animations: { () -> Void in
                    self.trayView.center = self.trayUp
                })
            }
            
            
        }
        
        
        
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
