//
//  stepViewController.swift
//  College Smartcard
//
//  Created by Setu on 19/03/18.
//  Copyright © 2018 FAC. All rights reserved.
//

import UIKit

class stepViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        var dbManageObject:dbManager!
        
        @IBOutlet weak var txtuname: UITextField!
        
        @IBOutlet weak var txtpassword: UITextField!
        
        @IBOutlet weak var  txtVerifypassword: UITextField!
        
        @IBAction func btnActionRegistration(_ sender: UIButton) {
            
            let cmd = "Insert into Login_table (username, password,verifypassword) values ('\(txtuname.text!)','\(txtpassword.text!)','\(txtVerifypassword.text!))"
            
            var dbManageObject:dbManager!
            
            if dbManageObject.RunCommand(cmd)
            {
                print("data inserted")
            }
            else
            {
                print("not inserted!")
            }
            
        }
        
}

