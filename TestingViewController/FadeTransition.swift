//
//  FadeTransition.swift
//  TestingViewController
//
//  Created by Sreekala Santhakumari on 11/6/17.
//  Copyright © 2017 Klas Solution LLC. All rights reserved.
//

import Foundation
import UIKit
class FadeTransition : NSObject, UIViewControllerAnimatedTransitioning {
    
    let duration = 0.8
    var originalFrame = CGRect.zero
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let containerView = transitionContext.containerView
        let toView = transitionContext.view(forKey: .to)
        
        originalFrame = (toView?.frame)!
        toView?.frame = CGRect.zero
        
        //        toView?.alpha = 0
        
        containerView.addSubview(toView!)
        
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            
            toView?.frame = self.originalFrame
            
            
        }) { (_) in
            
            transitionContext.completeTransition(true)
        }
}
}
