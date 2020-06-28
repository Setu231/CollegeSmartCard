//
//  ResultViewController.swift
//  College Smartcard
//
//  Created by Setu on 05/03/18.
//  Copyright © 2018 FAC. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

   
    @IBOutlet weak var Website: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func generatePressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://result2.gtu.ac.in/recheck.aspx?ext=W2017&rof=1550")! as URL, options: [:], completionHandler: nil)
        
    }
    
}

