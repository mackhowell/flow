//
//  ViewController.swift
//  flow-layout
//
//  Created by Mack on 7/15/15.
//  Copyright (c) 2015 Mack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var collectionView: UICollectionView!
    var gridlayout : GridLayout!
    var fullscreenlayout : FullscreenLayout!
    let cellIdentifier = "cellIdentifier"
    
    var segmentedControl : UISegmentedControl!

//    override func loadView() {
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullscreenlayout = FullscreenLayout()
        gridlayout = GridLayout()
        
        collectionView = UICollectionView(frame: CGRectMake(0, 0, view.frame.size.width, view.frame.size.height), collectionViewLayout: fullscreenlayout)
        collectionView.setCollectionViewLayout(fullscreenlayout, animated: false)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        view.addSubview(collectionView)
        
        segmentedControl = UISegmentedControl(items: ["big", "small"])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: "didTapControl:", forControlEvents: UIControlEvents.ValueChanged)
        self.navigationItem.titleView = segmentedControl
        
        view.backgroundColor = UIColor.whiteColor()
    }
    
    func didTapControl(sender: UISegmentedControl) {
        println("tappped")
        if collectionView.collectionViewLayout == fullscreenlayout {
            gridlayout.invalidateLayout()
            collectionView.setCollectionViewLayout(gridlayout, animated: true)
        } else {
            fullscreenlayout.invalidateLayout()
            collectionView.setCollectionViewLayout(fullscreenlayout, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell : CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(cellIdentifier, forIndexPath: indexPath) as! CollectionViewCell
        
        cell.setImage(UIImage(named: String("\(indexPath.row).jpg"))!, text: "tuna")
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }


}

