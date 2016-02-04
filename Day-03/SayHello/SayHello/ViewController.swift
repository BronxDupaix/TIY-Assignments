//
//  ViewController.swift
//  SayHello
//
//  Created by Bronson Dupaix on 2/3/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {

        if textField == nameTextField {
            passwordTextField.becomeFirstResponder()
        }
            
        else if textField == passwordTextField {
            welcomeLabel.text = "Hello"
            
            nameTextField.resignFirstResponder()
            passwordTextField.resignFirstResponder()
        }
        return true
        }
}

