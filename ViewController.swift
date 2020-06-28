//
//  ViewController.swift
//  College Smartcard
//
//  Created by Setu on 05/03/18.
//  Copyright © 2018 FAC. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    

    @IBOutlet weak var segmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LoginButton(_ sender: UIButton) {
    
        switch segmentControl.selectedSegmentIndex {
        case 0:
            let vc = UIStoryboard(name: "Student", bundle: nil).instantiateViewController(withIdentifier: "StudentView") as! StudentCollectionViewController
            self.show(vc, sender: self)
            break
        case 1:
            let vc = UIStoryboard(name: "Faculties", bundle: nil).instantiateViewController(withIdentifier: "FacultiesView") as! FacultiesCollectionViewController
            self.show(vc, sender: self)
            break
        case 2:
            let vc = UIStoryboard(name: "Staff", bundle: nil).instantiateViewController(withIdentifier: "StaffView") as! StaffCollectionViewController
            self.show(vc, sender: self)
            break
        default:
            break
        }
    }
}
