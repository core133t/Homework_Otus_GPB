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
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    
    @IBAction func startButton(_ sender: UIButton) {
        createTimer()
        startButton.isEnabled = false
        stopButton.isEnabled = true
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        if let timer = timer {
            timer.invalidate()
        }
        //timer.invalidate()
        startButton.isEnabled = true
        stopButton.isEnabled = false
    }
    
    var timer:Timer? = nil
    var count = 0
}

extension ViewController {
    @objc func updateTimer() {
        count = count + 1
        let time = makeTimeToString(seconds: count)
        timerLabel.text = time
    }
    
    func createTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(updateTimer),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    func makeTimeToString(seconds:Int) -> String{
        var timeString = ""
        timeString += String(format: "%02d", seconds/60)
        timeString += ":"
        timeString += String(format: "%02d", seconds%60)
        
        return timeString
    }
}



