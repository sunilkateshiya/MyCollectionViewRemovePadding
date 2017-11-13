//
//  ViewController.swift
//  MyCollectionView
//
//  Created by Impero it on 11/11/17.
//  Copyright © 2017 Impero it. All rights reserved.
//

import UIKit
import AlamofireImage
import PinterestLayout
class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate, PinterestLayoutDelegate{
    
    var a = 0
    var b = 1
    var columnCount: Int = 0
    var minimumColumnSpacing: CGFloat = 0.0
    var minimumInteritemSpacing: CGFloat = 0.0
    var headerHeight: CGFloat = 0.0
    var footerHeight: CGFloat = 0.0
    var sectionInset = UIEdgeInsets()
    
    
    
    @IBOutlet weak var myCollectionview: UICollectionView!
    
    var actors:[UIImage] = [#imageLiteral(resourceName: "aamir"),#imageLiteral(resourceName: "ajay"),#imageLiteral(resourceName: "amitabh"),#imageLiteral(resourceName: "anil"),#imageLiteral(resourceName: "hrithik"),#imageLiteral(resourceName: "salman"),#imageLiteral(resourceName: "shahrukh"),#imageLiteral(resourceName: "varun"),#imageLiteral(resourceName: "aamir"),#imageLiteral(resourceName: "ajay"),#imageLiteral(resourceName: "amitabh"),#imageLiteral(resourceName: "anil"),#imageLiteral(resourceName: "hrithik"),#imageLiteral(resourceName: "salman"),#imageLiteral(resourceName: "shahrukh"),#imageLiteral(resourceName: "varun"),#imageLiteral(resourceName: "aamir"),#imageLiteral(resourceName: "ajay"),#imageLiteral(resourceName: "amitabh"),#imageLiteral(resourceName: "anil"),#imageLiteral(resourceName: "hrithik"),#imageLiteral(resourceName: "salman"),#imageLiteral(resourceName: "shahrukh"),#imageLiteral(resourceName: "varun"),#imageLiteral(resourceName: "aamir"),#imageLiteral(resourceName: "ajay"),#imageLiteral(resourceName: "amitabh"),#imageLiteral(resourceName: "anil"),#imageLiteral(resourceName: "hrithik"),#imageLiteral(resourceName: "salman"),#imageLiteral(resourceName: "shahrukh"),#imageLiteral(resourceName: "varun"),#imageLiteral(resourceName: "aamir"),#imageLiteral(resourceName: "ajay"),#imageLiteral(resourceName: "amitabh"),#imageLiteral(resourceName: "anil"),#imageLiteral(resourceName: "hrithik"),#imageLiteral(resourceName: "salman"),#imageLiteral(resourceName: "shahrukh"),#imageLiteral(resourceName: "varun"),#imageLiteral(resourceName: "aamir"),#imageLiteral(resourceName: "ajay"),#imageLiteral(resourceName: "amitabh"),#imageLiteral(resourceName: "anil"),#imageLiteral(resourceName: "hrithik"),#imageLiteral(resourceName: "salman"),#imageLiteral(resourceName: "shahrukh"),#imageLiteral(resourceName: "varun")]
    
    let sectionInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0.0)
    let layout = PinterestLayout()
    var screenSize: CGRect!
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    
    override func viewDidLoad() {
        screenSize = UIScreen.main.bounds
        screenWidth = screenSize.width
        screenHeight = screenSize.height
        
        myCollectionview.delegate = self
        myCollectionview.dataSource = self
        layout.delegate = self
        layout.cellPadding = 5
        layout.numberOfColumns = 2
        myCollectionview!.collectionViewLayout = layout
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.row == a
        {
            if indexPath.row == a
            {
                if  a % 2 == 0 {
                    a = b + 2
                }
                else
                {
                    a = a + 1
                }
            }
            print("a...........\(a)")
            // layout.itemSize = CGSize(width: (screenWidth/2)-10, height: screenHeight/5)
            return CGSize(width:(screenWidth/2) - 10 , height: screenHeight/5)
        }
        else if indexPath.row == b
        {
            if indexPath.row == b
            {
                if b % 2 == 0
                {
                    b = a + 2
                }
                else{
                    b = b + 1
                }
            }
            print("b...........\(b)")
            return CGSize(width:(screenWidth/2) - 10, height: screenHeight/3)
        }
        return CGSize(width:(screenWidth/2) - 10, height: screenHeight/5)
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actors.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:MyCell=collectionView.dequeueReusableCell(withReuseIdentifier: "actorCell", for: indexPath) as! MyCell
        let actor = actors[indexPath.item]
        cell.actorImage.image = actor
        return cell
    }
    
    func collectionView(collectionView: UICollectionView,
                        heightForImageAtIndexPath indexPath: IndexPath,
                        withWidth: CGFloat) -> CGFloat {
        
        let actor =  actors[indexPath.item]
        return actor.height(forWidth: withWidth)
        
    }
    
    
    func collectionView(collectionView: UICollectionView,
                        heightForAnnotationAtIndexPath indexPath: IndexPath,
                        withWidth: CGFloat) -> CGFloat {
        return 0
        
    }
}




