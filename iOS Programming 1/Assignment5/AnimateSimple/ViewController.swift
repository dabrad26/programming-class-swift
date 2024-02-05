//
//  ViewController.swift
//  AnimateSimple
//
//  Created by David Bradshaw on 2/4/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var mySwitch: UISwitch!
    var shrink = true
    let constantWidth = 240
    let constantHeight = 128
    let newWidth = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myImage.center.x = view.center.x
        myImage.center.y = view.center.y
        myImage.backgroundColor = .yellow
    }
    
    private func originalCode() -> Void {
        UIView.animate(withDuration: 2) {
            if (self.shrink) {
                self.myImage.frame = CGRect(x: 0, y: 0, width: self.newWidth, height: self.newWidth)
                self.myImage.center = self.view.center
            } else {
                self.myImage.frame = CGRect(x: 0, y: 0, width: self.constantWidth, height: self.constantHeight)
                self.myImage.center = self.view.center
            }
        }
    }
    
    private func newCode() -> Void {
        if shrink {
            UIView.animateKeyframes(withDuration: 5,
              delay: 0,
              options: .calculationModeLinear,
              animations: {
                UIView.addKeyframe(
                    withRelativeStartTime: 0.0,
                  relativeDuration: 0.25) {
                    self.myImage.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.maxY)
                }

                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                    self.myImage.center = CGPoint(x: self.view.bounds.width, y: self.view.center.y)
                }

                UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                    self.myImage.center.x = self.view.center.x
                }
            })
        } else {
            UIView.animateKeyframes(withDuration: 5,
              delay: 0,
              options: .calculationModeLinear,
              animations: {
                UIView.addKeyframe(
                    withRelativeStartTime: 0.0,
                  relativeDuration: 0.25) {
                    self.myImage.center = CGPoint(x: self.view.bounds.minX, y: self.view.bounds.maxY)
                }

                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                    self.myImage.center = CGPoint(x: 0, y: self.view.center.y)
                }

                UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                    self.myImage.center.x = self.view.center.x
                }
            })
        }
    }


    @IBAction func animateMe(_ sender: UIButton) {
        if (mySwitch.isOn) {
            newCode()
        } else {
            originalCode()
        }
        
        shrink = !shrink
    }
}

