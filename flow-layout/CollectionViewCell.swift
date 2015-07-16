//
//  CollectionViewCell.swift
//  flow-layout
//
//  Created by Mack on 7/15/15.
//  Copyright (c) 2015 Mack. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var imageView : UIImageView!
    let name = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRectInset(CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame)), 5, 5))
        
        imageView.autoresizingMask = UIViewAutoresizing.FlexibleHeight | UIViewAutoresizing.FlexibleWidth
        
        self.addSubview(imageView)
        backgroundColor = UIColor.purpleColor()
        
        name.textColor = UIColor.yellowColor()
        name.font = UIFont(name:"Archive", size: 60)
        name.center = center
        
        addSubview(name)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForReuse() {
        imageView.image = nil
        name.text = nil
    }
    
    func setImage(image: UIImage, text: String) {
        imageView.image = image
        name.text = text
    }
}
