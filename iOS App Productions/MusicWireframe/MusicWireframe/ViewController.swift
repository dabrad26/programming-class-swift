//
//  ViewController.swift
//  MusicWireframe
//
//  Created by David Bradshaw on 1/15/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var reverseBackground: UIView!
    @IBOutlet weak var playPauseBackground: UIView!
    @IBOutlet weak var forwardBackground: UIView!
    @IBOutlet weak var reverseButton: UIButton!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    var isPlaying: Bool = true {
        didSet {
            playPauseButton.isSelected = isPlaying
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reverseBackground.layer.cornerRadius = reverseBackground.frame.height / 2
        reverseBackground.clipsToBounds = true
        
        playPauseBackground.layer.cornerRadius = playPauseBackground.frame.height / 2
        playPauseBackground.clipsToBounds = true
        
        forwardBackground.layer.cornerRadius = forwardBackground.frame.height / 2
        forwardBackground.clipsToBounds = true
        
        [forwardBackground, reverseBackground, playPauseBackground].forEach { item in
            item?.layer.cornerRadius = item!.frame.height / 2
            item?.clipsToBounds = true
            item?.alpha = 0.0
        }
    }
    
    @IBAction func playPausedPressed(_ sender: UIButton) {
        isPlaying = !isPlaying
        
        if (isPlaying) {
            UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.6,initialSpringVelocity: 0.1, options: [], animations: {
                self.albumImageView.transform = CGAffineTransform.identity
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.5) {
                self.albumImageView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
        }
    }
    
    func getBackground(_ sender: UIButton) -> UIView? {
        switch sender {
            case reverseButton:
                return reverseBackground
            case playPauseButton:
                return playPauseBackground
            case forwardButton:
                return forwardBackground
            default:
                print("Unable to get background for button press")
                return nil
            }
    }
    
    
    @IBAction func touchedUp(_ sender: UIButton) {
        let buttonBackground = getBackground(sender)
        
        UIView.animate(withDuration: 0.25, animations: {
            buttonBackground?.alpha = 0.0
            buttonBackground?.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            sender.transform = CGAffineTransform.identity
        }) { (_) in
            buttonBackground?.transform = CGAffineTransform.identity
        }
    }
    
    
    @IBAction func touchedDown(_ sender: UIButton) {
        let buttonBackground = getBackground(sender)
        
        UIView.animate(withDuration: 0.25) {
            buttonBackground?.alpha = 0.3
            sender.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }
    }
    
}

