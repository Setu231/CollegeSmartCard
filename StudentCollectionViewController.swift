//
//  StudentCollectionViewController.swift
//  College Smartcard
//
//  Created by Setu on 05/03/18.
//  Copyright © 2018 FAC. All rights reserved.
//

import UIKit

class StudentCollectionViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    
    var arrayOfImages = [UIImage]()
    var arrayOfIds = [String]()
    var arrayOfLabel = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        arrayOfImages = [#imageLiteral(resourceName: "Prof"),#imageLiteral(resourceName: "Game"),#imageLiteral(resourceName: "Result"),#imageLiteral(resourceName: "Payments"),#imageLiteral(resourceName: "Library"),#imageLiteral(resourceName: "Attendance List"),#imageLiteral(resourceName: "Live Feeds"),#imageLiteral(resourceName: "Canteen")]
        arrayOfLabel = ["Profile","Game","Result","Payments","Library","Attendance List","Live Feed","Canteen"]
        arrayOfIds = ["C","B","A","D","E","F","G","H"]
        
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
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let name = arrayOfIds[indexPath.row]
        
        let viewContoller = self.storyboard?.instantiateViewController(withIdentifier: name)
        self.navigationController?.pushViewController(viewContoller!, animated: true)
        
        
    }
}




