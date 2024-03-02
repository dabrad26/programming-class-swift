//
//  ViewController.swift
//  StepperGuess
//
//  Created by David Bradshaw on 2/12/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    var targetNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        targetNumber = Int.random(in: 1...100)
    }

    @IBAction func guessButton(_ sender: UIButton) {
        let myGuess = Int(stepper.value)
        
        if (myGuess == targetNumber) {
            displayLabel.text = "You guessed it!"
        } else if (myGuess < targetNumber) {
            displayLabel.text = "Too low!"
        } else {
            displayLabel.text = "Too high!"
        }
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        stepperLabel.text = String(Int(stepper.value))
    }
    
}

