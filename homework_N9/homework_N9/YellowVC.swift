//
//  YellowVC.swift
//  homework_N9
//
//  Created by Dmitry Loginov on 16.11.2022.
//

import UIKit

class YellowVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Yellow DidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Yellow Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Yellow Disapper")
    }
    
    @IBAction func unwindToRoot(_ unwindSegue: UIStoryboardSegue) {
        _ = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
