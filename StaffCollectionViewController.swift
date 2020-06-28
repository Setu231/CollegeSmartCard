//
//  StaffCollectionViewController.swift
//  College Smartcard
//
//  Created by Setu on 08/03/18.
//  Copyright © 2018 FAC. All rights reserved.
//

import UIKit

class StaffCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
        
        var arrayOFi = [UIImage]()
        var arrayOfId = [String]()
        var arrayOflabels = [String]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            arrayOFi = [#imageLiteral(resourceName: "Live Feeds"),#imageLiteral(resourceName: "Payments"),#imageLiteral(resourceName: "Canteen"),#imageLiteral(resourceName: "Game")]
            arrayOflabels = ["Live Feeds","Payments","Canteen","Game"]
            arrayOfId = ["G","Y","H","B"]
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return arrayOFi.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "semi", for: indexPath) as! StaffCollectionViewCell
            
            cell.gang.text = arrayOflabels[indexPath.row]
            
            let imageView = cell.viewWithTag(1) as! UIImageView
            imageView.image = arrayOFi[indexPath.row]
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
            let name = arrayOfId[indexPath.row]
            
            let viewContoller = storyboard?.instantiateViewController(withIdentifier:name)
            self.navigationController?.pushViewController(viewContoller!, animated: true)
            
            
        }
}

