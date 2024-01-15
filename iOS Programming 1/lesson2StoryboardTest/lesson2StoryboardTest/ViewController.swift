//
//  ViewController.swift
//  lesson2StoryboardTest
//
//  Created by David Bradshaw on 1/15/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func redButton(_ sender: UIButton) {
        myView.backgroundColor = .red
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        myView.backgroundColor = .green
    }
}

