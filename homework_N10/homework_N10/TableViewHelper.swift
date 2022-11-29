//
//  TableViewHelper.swift
//  homework_N10
//
//  Created by Dmitry Loginov on 28.11.2022.
//

import UIKit

protocol showDetailControllerDelegate {
    func showDetailController(controller: UIViewController)
}

class TableViewHelper:NSObject, UITableViewDataSource,UITableViewDelegate {
    
    var delegate:showDetailControllerDelegate?
    var data = DataApp()
    
    func setup(for tableView:UITableView) {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: data.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: data.identifier, for: indexPath)
        cell.textLabel?.text = data.dataArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = DetailViewController()
        detailViewController.detailText = data.explanationArray[indexPath.row]
        delegate?.showDetailController(controller: detailViewController)
    }
}

