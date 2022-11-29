//
//  CollectionViewHelper.swift
//  homework_N11
//
//  Created by Dmitry Loginov on 29.11.2022.
//

import UIKit

class CollectionVeiwHelper:NSObject,UICollectionViewDelegate,UICollectionViewDataSource {
    var data = dataImage()
    
    func setup(for collectionView: UICollectionView) {
        collectionView.register(ImageCell.self, forCellWithReuseIdentifier:data.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.dataImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: data.identifier, for: indexPath) as! ImageCell
        let imageName = data.dataImage[indexPath.item]
        cell.imageView.image = UIImage(named: imageName)
    
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
