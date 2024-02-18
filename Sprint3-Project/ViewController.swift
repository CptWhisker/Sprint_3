//
//  ViewController.swift
//  Sprint3-Project
//
//  Created by user on 18.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var logTextView: UITextView!
    
    var score = 0
    var textLabel = "Значение счётчика: "
    var textTextView = "История изменений:\n\n"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logTextView.text = textTextView
        updateScore()
    }

    @IBAction func plusTapped(_ sender: UIButton) {
        score += 1
        updateScore()
        
        logTextView.text += "[\(getDateAndTime())]: значение изменено на +1\n"
        
        autoScroll()
    }
    
    @IBAction func minusTapped(_ sender: UIButton) {
        score -= 1
        
        switch score {
        case -1:
            score = 0
            logTextView.text += "[\(getDateAndTime())]: попытка уменьшить значение счётчика ниже 0\n"
        default:
            updateScore()
            logTextView.text += "[\(getDateAndTime())]: значение изменено на -1\n"
        }
        
        autoScroll()
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        score = 0
        updateScore()
        
        logTextView.text += "[\(getDateAndTime())]: значение сброшено\n"
        
        autoScroll()
    }
    
    func updateScore() {
        counterLabel.text = textLabel + "\(score)"
    }
    
    func getDateAndTime() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy / HH:mm:ss"
        return formatter.string(from: date)
    }
    
    func autoScroll() {
        let range = NSRange(location: logTextView.text.count - 1, length: 0)
        logTextView.scrollRangeToVisible(range)
    }
    
}

