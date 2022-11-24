//
//  TableViewHelper.swift
//  homework_N10
//
//  Created by Dmitry Loginov on 24.11.2022.
//

import UIKit

extension ViewController: UITableViewDataSource,UITableViewDelegate {
    
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
        
        //present(detailViewController, animated: true)
    }
}
