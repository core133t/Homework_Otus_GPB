//
//  ViewController.swift
//  homework_N8
//
//  Created by Dmitry Loginov on 15.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(stopTimer), name: NSNotification.Name("Stop"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(startTimer), name: NSNotification.Name("Start"), object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    
    @IBAction func startButton(_ sender: UIButton) {
        firstStart = false
        startTimer()
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        stopTimer()
    }
    
    var timer:Timer? = nil
    var count = 0
    var firstStart = true
    
    func createTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(updateTimer),
                                     userInfo: nil,
                                     repeats: true)
        //MARK: RunLoop
        RunLoop.current.add(timer!, forMode: .common)
    }
}



