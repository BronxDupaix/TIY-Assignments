//
//  ViewController.swift
//  TextField- Day 03
//
//  Created by Bronson Dupaix on 2/3/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            print("textFieldShouldReturn")
            
            return true
        }
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

