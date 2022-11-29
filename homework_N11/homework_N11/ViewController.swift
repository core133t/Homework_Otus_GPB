//
//  ViewController.swift
//  homework_N11
//
//  Created by Dmitry Loginov on 24.11.2022.
//

import UIKit

class ViewController: UIViewController {
    var collectionViewHelper = CollectionVeiwHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionViewHelper.setup(for: collectionView)
        view.addSubview(collectionView)
    }


}

