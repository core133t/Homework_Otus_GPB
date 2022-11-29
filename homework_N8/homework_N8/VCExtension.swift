//
//  VCExtension.swift
//  homework_N8
//
//  Created by Dmitry Loginov on 29.11.2022.
//
import Foundation

extension ViewController {
    @objc func updateTimer() {
        count = count + 1
        let time = makeTimeToString(seconds: count)
        timerLabel.text = time
    }
    
    func makeTimeToString(seconds:Int) -> String{
        var timeString = ""
        timeString += String(format: "%02d", seconds/60)
        timeString += ":"
        timeString += String(format: "%02d", seconds%60)
        
        return timeString
    }
    
    @objc func stopTimer(){
        if let timer = timer {
            timer.invalidate()
        }
        startButton.isEnabled = true
        stopButton.isEnabled = false
    }
    
    @objc func startTimer(){
        if !firstStart {
            createTimer()
            startButton.isEnabled = false
            stopButton.isEnabled = true
        }
    }
}
