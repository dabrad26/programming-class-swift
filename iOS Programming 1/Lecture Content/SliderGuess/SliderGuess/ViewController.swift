//
//  ViewController.swift
//  SliderGuess
//
//  Created by David Bradshaw on 2/12/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    private var targetNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        targetNumber = Int.random(in: 1...100)
    }

    @IBAction func sliderChange(_ sender: UISlider) {
        sliderLabel.text = String(Int(slider.value))
    }
    
    
    @IBAction func guessButton(_ sender: UIButton) {
        let myGuess = Int(slider.value)
        
        if (myGuess == targetNumber) {
            displayLabel.text = "You guessed it!"
        } else if (myGuess < targetNumber) {
            displayLabel.text = "Too small!"
        } else {
            displayLabel.text = "Too big!"
        }
    }
}

