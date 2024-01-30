//
//  ViewController.swift
//  Assignment4
//
//  Created by David Bradshaw on 1/29/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var summaryBox: UILabel!
    @IBOutlet weak var segmentBar: UISegmentedControl!
    @IBOutlet weak var toggle1: UISwitch!
    @IBOutlet weak var toggle2: UISwitch!
    private var count = 0
    
    private func setTextContent() -> Void {
        summaryBox.text = "Button clicked \(count) times\nSegment on \(segmentBar.titleForSegment(at: segmentBar.selectedSegmentIndex) ?? "Unset")\nToggle 1 is \(toggle1.isOn ? "on" : "off")\nToggle 2 is \(toggle2.isOn ? "on" : "off")"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setTextContent()
    }

    @IBAction func countButtonPress(_ sender: UIButton) {
        count += 1
        setTextContent()
    }
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        setTextContent()
    }
    
    @IBAction func toggleChange(_ sender: UISwitch) {
        setTextContent()
    }
    
    
    @IBAction func resetView(_ sender: UIButton) {
        segmentBar.selectedSegmentIndex = 0
        toggle1.isOn = false
        toggle2.isOn = true
        count = 0
        setTextContent()
    }
}

