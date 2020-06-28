//
//  RResultViewController.swift
//  College Smartcard
//
//  Created by Setu on 05/03/18.
//  Copyright © 2018 FAC. All rights reserved.
//

import UIKit

class RResultViewController: UIViewController {

    @IBOutlet weak var viewConstraint: NSLayoutConstraint!
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var sideView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blurView.layer.cornerRadius = 15
        sideView.layer.shadowColor = UIColor.black.cgColor
        sideView.layer.shadowOpacity = 0.8
        sideView.layer.shadowOffset = CGSize(width: 5, height: 0)
        
        viewConstraint.constant = -175
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .began || sender.state == .changed {
            
            let translation = sender.translation(in: self.view).x
            
            if translation > 0 { // swipe right
                
                if viewConstraint.constant < 20 {
                    UIView.animate(withDuration: 0.2, animations: {
                        
                        self.viewConstraint.constant += translation / 10
                        self.view.layoutIfNeeded()
                        
                    })
                }
                
            }else {             // swipe left
                if viewConstraint.constant > -175 {
                    UIView.animate(withDuration: 0.2, animations: {
                        
                        self.viewConstraint.constant += translation / 10
                        self.view.layoutIfNeeded()
                        
                    })
                }
            }
            
            
        } else if sender.state == .ended {
            
            if viewConstraint.constant < -100 {
                UIView.animate(withDuration: 0.2, animations: {
                    
                    self.viewConstraint.constant = -175
                    self.view.layoutIfNeeded()
                    
                })
            } else {
                UIView.animate(withDuration: 0.2, animations: {
                    
                    self.viewConstraint.constant = 0
                    self.view.layoutIfNeeded()
                    
                })
            }
            
        }
        
    }
}


