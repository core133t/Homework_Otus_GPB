//
//  ViewController.swift
//  homework_N10
//
//  Created by Dmitry Loginov on 23.11.2022.
//

import UIKit

class ViewController: UIViewController,showDetailControllerDelegate {
    
    func showDetailController(controller:UIViewController) {
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    var tableView = UITableView()
    var tableViewHelper = TableViewHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "The Animals"
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableViewHelper.delegate = self
        tableViewHelper.setup(for: tableView)
        view.addSubview(tableView)
    }
    
}
