//
//  ViewController.swift
//  BullsEye
//
//  Created by Kavish Ghime on 1/5/20.
//  Copyright © 2020 Kavish Ghime. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }
    
    @IBAction func showAlert(){
        
        let message = "The value of the slider is now: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        //add a popup which is an alert
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        //add action to the alert
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
    }
    
    
}

