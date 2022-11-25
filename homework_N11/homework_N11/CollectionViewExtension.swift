//
//  CollevctionViewExtension.swift
//  homework_N11
//
//  Created by Dmitry Loginov on 24.11.2022.
//

import UIKit

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource {
    
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
