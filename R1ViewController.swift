//
//  R1ViewController.swift
//  College Smartcard
//
//  Created by Setu on 08/03/18.
//  Copyright © 2018 FAC. All rights reserved.
//

import UIKit

class R1ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
        
        var arrayOfImages = [UIImage]()
        var arrayOfIds = [String]()
        var arrayOfLabel = [String]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            arrayOfImages = [#imageLiteral(resourceName: "Prof"),#imageLiteral(resourceName: "Game"),#imageLiteral(resourceName: "Result"),#imageLiteral(resourceName: "Payments"),#imageLiteral(resourceName: "Library"),#imageLiteral(resourceName: "Attendance List"),#imageLiteral(resourceName: "Live Feeds"),#imageLiteral(resourceName: "Canteen")]
            arrayOfLabel = ["Profile","Game","Result","Payments","Library","Attendance List","Live Feed","Canteen"]
            arrayOfIds = ["A","B","C","D","E","F","G","H"]
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return arrayOfImages.count
            
        }
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! StudentCollectionViewCell
            
            cell.lblCell.text = arrayOfLabel[indexPath.row]
            
            let imageView = cell.viewWithTag(1) as! UIImageView
            imageView.image = arrayOfImages[indexPath.row]
            
            return cell
        }
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
        {
            _ = arrayOfIds[indexPath.row]
            
            let viewContoller = UIStoryboard(name: "Student", bundle: nil).instantiateViewController(withIdentifier: "StudentView")
            self.navigationController?.pushViewController(viewContoller, animated: true)
            
            
        }
}

