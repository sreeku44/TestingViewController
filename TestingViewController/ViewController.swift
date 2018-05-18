//
//  ViewController.swift
//  TestingViewController
//
//  Created by Sreekala Santhakumari on 11/6/17.
//  Copyright © 2017 Klas Solution LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIViewControllerTransitioningDelegate {
    
    let fadeTransition = FadeTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return fadeTransition
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondVC = segue.destination as! SecondViewController
        secondVC.transitioningDelegate = self
        
    }
}
