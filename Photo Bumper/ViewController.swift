//
//  ViewController.swift
//  Photo Bumper
//
//  Created by Almas Kairatuly on 6/17/15.
//  Copyright (c) 2015 Almas Kairatuly. All rights reserved.
//

import UIKit
import SimpleAuth

let reuseIdentifier = "Cell"

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        self.collectionView.registerClass(PhotoCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! PhotoCollectionViewCell
        
        cell.imageView?.image = UIImage(named: "jpmorgan_building.jpg")
        
        return cell
    }
    
    
}

