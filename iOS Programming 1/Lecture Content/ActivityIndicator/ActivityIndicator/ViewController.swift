//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by David Bradshaw on 2/4/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myActivityIndicator.hidesWhenStopped = true
        setupSwitch()
    }
    
    // Setup switch to initial state to ensure proper size on load
    private func setupSwitch() -> Void {
        myActivityIndicator.style = mySwitch.isOn ? .large : .medium
    }
    
    @IBAction func switchChange(_ sender: UISwitch) {
        setupSwitch()
    }
    
    @IBAction func startActivity(_ sender: UIButton) {
        myActivityIndicator.startAnimating()
    }
    
    @IBAction func stopActvity(_ sender: UIButton) {
        myActivityIndicator.stopAnimating()
    }
}

