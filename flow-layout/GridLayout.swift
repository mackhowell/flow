//
//  GridLayout.swift
//  flow-layout
//
//  Created by Mack on 7/15/15.
//  Copyright (c) 2015 Mack. All rights reserved.
//

import UIKit

class GridLayout: UICollectionViewFlowLayout {
   
    override init() {
        super.init()
        
        self.itemSize = CGSizeMake((UIScreen.mainScreen().bounds.width/2)-30, (UIScreen.mainScreen().bounds.height/2)-30)
        self.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        self.minimumInteritemSpacing = 10.0
        self.minimumLineSpacing = 10.0
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
