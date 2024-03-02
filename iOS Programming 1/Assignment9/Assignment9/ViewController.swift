//
//  ViewController.swift
//  Assignment9
//
//  Created by David Bradshaw on 2/28/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func longPress1(_ sender: UILongPressGestureRecognizer) {
        imageView.tintColor = UIColor.green
        imageView.backgroundColor = UIColor.red
    }
    
    @IBAction func longPress2(_ sender: UILongPressGestureRecognizer) {
        imageView.tintColor = UIColor.systemPink
        imageView.backgroundColor = UIColor.blue
    }
 
    @IBAction func tapPress1(_ sender: UITapGestureRecognizer) {
        imageView.tintColor = UIColor.white
        imageView.backgroundColor = UIColor.black
    }

    @IBAction func tapPress2(_ sender: UITapGestureRecognizer) {
        imageView.tintColor = UIColor.black
        imageView.backgroundColor = UIColor.orange
    }
    
}


