//
//  ViewController.swift
//  ProgressView
//
//  Created by David Bradshaw on 2/4/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myProgressBar: UIProgressView!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myLabel: UILabel!
    var myProgress: Float = 0
    var numberFormatter = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myProgressBar.progress = myProgress
        numberFormatter.maximumFractionDigits = 1
        switchSetup()
    }
    
    private func switchSetup() -> Void {
        myProgressBar.progressViewStyle = mySwitch.isOn ? .default : .bar
    }

    @IBAction func switchChange(_ sender: UISwitch) {
        switchSetup()
    }
    
    @IBAction func moveProgress(_ sender: UIButton) {
        myProgress += 0.1
        
        // Not sure why myProgress gets higher precision (0.9000001)
        if (myProgress >= 1.1) {
            myProgress = 0
        }
        
        myProgressBar.progress = myProgress
        myLabel.text = numberFormatter.string(from: NSNumber(value: myProgress))
    }
}

