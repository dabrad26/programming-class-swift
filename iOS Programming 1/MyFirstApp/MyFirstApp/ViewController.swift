//
//  ViewController.swift
//  MyFirstApp
//
//  Created by David Bradshaw on 1/9/24.
//

import UIKit
 
class ViewController: UIViewController {
 
    let button = UIButton(frame: CGRect(x: 100, y: 100, width: 150, height: 50))
    let label = UILabel(frame: CGRect(x: 100, y: 250, width: 250, height: 50))
    let textField = UITextField(frame: CGRect(x: 100, y: 400, width: 250, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.setTitle("Click Me", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        
        label.text = "This will change"
        
        textField.placeholder = "Enter text here"
        
        view.addSubview(button)
        view.addSubview(label)
        view.addSubview(textField)
    }
 
    @objc func tapButton(sender: UIButton) {
        label.text = textField.text?.uppercased()
    }
 
}
