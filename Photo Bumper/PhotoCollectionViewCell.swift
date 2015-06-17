//
//  PhotoCollectionViewCell.swift
//  Photo Bumper
//
//  Created by Almas Kairatuly on 6/17/15.
//  Copyright (c) 2015 Almas Kairatuly. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    var imageView : UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.imageView = UIImageView()
        self.contentView.addSubview(self.imageView!)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.imageView!.frame = self.contentView.bounds
    }
}
