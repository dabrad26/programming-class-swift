//
//  ViewController.swift
//  MultipleButtons
//
//  Created by David Bradshaw on 2/27/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var includeTextFieldToggle: UISwitch!
    @IBOutlet weak var typeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var displayLine: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        includeTextFieldToggle.isOn = false
        typeSegmentedControl.selectedSegmentIndex = 0
        displayLine.text = ""
    }
    
    private func verifyChange() -> Void {
        includeTextFieldToggle.isEnabled = typeSegmentedControl.selectedSegmentIndex == 0
        displayLine.text = ""
        
        if (!includeTextFieldToggle.isEnabled) {
            includeTextFieldToggle.isOn = false
        }
    }
    
    private func setLabelText(_ text: String, _ textFields: [UITextField]?) -> Void {
        var text = text
        
        if (textFields != nil && !textFields!.isEmpty) {
            var fieldText = textFields?[0].text ?? ""
            
            if (fieldText != "") {
                text += " Saying: \(fieldText)."
            }
        }
        
        self.displayLine.text = text
    }


    @IBAction func includeTextFieldChanged(_ sender: UISwitch) {
        verifyChange()
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        let alertMode = typeSegmentedControl.selectedSegmentIndex == 0
        
        let alert = UIAlertController(title: "I am an \(alertMode ? "Alert" : "Action Sheet")", message: "This \(alertMode ? "alert" : "action sheet") is rendered with different options.", preferredStyle: alertMode ? .alert : .actionSheet)
        
        if (includeTextFieldToggle.isOn) {
            alert.addTextField { (textField) in
                textField.placeholder = "Enter Some Awesome Text"
            }
        }
        
        
        alert.addAction(UIAlertAction(title: "Default Closing", style: .default, handler: { _ in
            self.setLabelText("Closed with Default Closing action.", alert.textFields)
        }))
        
        alert.addAction(UIAlertAction(title: "Default Closing 2", style: .default, handler: { _ in
            self.setLabelText("Closed with Default Closing 2 action.", alert.textFields)
        }))
        
        alert.addAction(UIAlertAction(title: "Dangerous Closing", style: .destructive, handler: { _ in
            self.setLabelText("Closed with Dangerous Closing action.", alert.textFields)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            self.setLabelText("Closed by canceling.", nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func typeChanged(_ sender: UISegmentedControl) {
        verifyChange()
    }
}

