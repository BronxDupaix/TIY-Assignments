//
//  ViewController.swift
//  Agent Access
//
//  Created by Bronson Dupaix on 2/3/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBAction func authenticateButton(sender: AnyObject) {

        
        if firstNameTextField.text == "Bronson" {
            
            if lastNameTextField.text == "Dupaix"{
                self.view.backgroundColor = UIColor.purpleColor()
                
                if let name = lastNameTextField.text{
                    
                    label.text = "Fuck you, Agent \(name)"

                    
                }
                
                            }
        } else {
            print("failed")
            self.view.backgroundColor = UIColor.redColor()
            
                label.text = "Self Destruct"
        

        
        }
    }
    
    @IBOutlet weak var label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    

        
        
    }
  
    

