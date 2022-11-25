//
//  ImageCell.swift
//  homework_N11
//
//  Created by Dmitry Loginov on 25.11.2022.
//

import UIKit

class ImageCell:UICollectionViewCell {
    var imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 170, height: 170))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        self.addSubview(imageView)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
