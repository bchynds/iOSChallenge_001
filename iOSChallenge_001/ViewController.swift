//
//  ViewController.swift
//  iOSChallenge_001
//
//  Created by Brian Hynds on 8/16/14.
//  Copyright (c) 2014 Brian C. Hynds. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
                            
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet var textFieldCollection: [UITextField] = []
    
    override func viewWillAppear(animated: Bool) {
        // Reset the text fields:
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.secureTextEntry = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String!, sender: AnyObject!) -> Bool {
        
        // -- Form Validation Here --
        // Username should be at least 8 characters and alphabetic (non-numeric)
        if identifier == "login" {
            if countElements(usernameTextField.text!) >= 8 && (usernameTextField.text as NSString).rangeOfCharacterFromSet(NSCharacterSet.decimalDigitCharacterSet()).location == NSNotFound && countElements(passwordTextField.text!) >= 8 {
                return true
            }
        
            return false
        }
        
        return false
        
    }
    
    // Dismisses the Keyboard when tapping Return on the Keyboard
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        for textField in textFieldCollection {
            textField.resignFirstResponder()
        }
        
        return true
        
    }
    
    
    // Dismisses the Keyboard when tapping off the UITextFields
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }

}
