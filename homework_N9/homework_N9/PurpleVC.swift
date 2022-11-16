//
//  PurpleVC.swift
//  homework_N9
//
//  Created by Dmitry Loginov on 16.11.2022.
//

import UIKit

class PurpleVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Purple DidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Purple Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Purple Disapper")
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
