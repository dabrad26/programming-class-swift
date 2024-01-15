//
//  ViewController.swift
//  MySecondApp
//
//  Created by David Bradshaw on 1/15/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myNewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myNewLabel.text = "This will change"
        myTextField.placeholder = "Enter text here!"
    }


    @IBAction func doButton(_ sender: UIButton) {
        myNewLabel.text = myTextField.text?.uppercased()
    }
}

