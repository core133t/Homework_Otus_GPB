//
//  ViewController.swift
//  homework_N11
//
//  Created by Dmitry Loginov on 24.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var data = dataImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.register(ImageCell.self, forCellWithReuseIdentifier:data.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
    }


}

