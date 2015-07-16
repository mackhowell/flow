//
//  FullscreenLayout.swift
//  flow-layout
//
//  Created by Mack on 7/15/15.
//  Copyright (c) 2015 Mack. All rights reserved.
//

import UIKit

class FullscreenLayout: UICollectionViewFlowLayout {
    
//    override init() {
//        super.init()
//    }
//
//    required init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
    
    override init() {
        super.init()
        
        self.itemSize = CGSizeMake(UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height)
        self.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        self.minimumInteritemSpacing = 10.0
        self.minimumLineSpacing = 10.0
        
//        self.itemSize = CollectionViewCell.layoutSize()
        
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

   
}
