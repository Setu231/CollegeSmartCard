//
//  FacultiesCollectionViewController.swift
//  College Smartcard
//
//  Created by Setu on 08/03/18.
//  Copyright © 2018 FAC. All rights reserved.
//

import UIKit

class FacultiesCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
        
        
        var img = [UIImage]()
        var lbl = [String]()
        var ids = [String]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            img = [#imageLiteral(resourceName: "Prof"),#imageLiteral(resourceName: "Payments"),#imageLiteral(resourceName: "Result"),#imageLiteral(resourceName: "Game"),#imageLiteral(resourceName: "Canteen"),#imageLiteral(resourceName: "Live Feeds")]
            lbl = ["Profile","Payments","Result","Game","Canteen","Live Feeds"]
            ids = ["X","1","2","B","H","G"]
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            
        }
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            return img.count
            
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell =
                collectionView.dequeueReusableCell(withReuseIdentifier: "custCell", for: indexPath) as! FacultiesCollectionViewCell
            
            cell.xyz.text = lbl[indexPath.row]
            
            let imageView = cell.viewWithTag(1) as! UIImageView
            imageView.image = img[indexPath.row]
            
            
            return cell
            
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            
            let name = ids[indexPath.row]
            
            let viewContoller = storyboard?.instantiateViewController(withIdentifier: name)
            self.navigationController?.pushViewController(viewContoller!, animated: true)
            
            
        }
}

