//
//  DetailViewController.swift
//  homework_N10
//
//  Created by Dmitry Loginov on 24.11.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailText:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        let detailLabel = UITextView(frame: view.bounds)
        detailLabel.text = detailText
        detailLabel.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        detailLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(detailLabel)
    }
}
