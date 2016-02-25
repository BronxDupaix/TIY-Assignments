//
//  ViewController.swift
//  RestuarantRaider
//
//  Created by Bronson Dupaix on 2/18/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var usernameHasValue: Bool? 
    
    @IBAction func loginButton(sender: UIButton) {
        
        saveDefaults()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadDefaults()
        
        if usernameHasValue == true {
            
            performSegueWithIdentifier("loginSegue", sender: self)
        }
    }
    
    func saveDefaults() {
        
        let username = usernameTextField.text
        
        let password = passwordTextField.text
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setValue(username, forKey: "username")
        
        defaults.setValue(password, forKey: "password")
        
        usernameHasValue = true
        
        defaults.synchronize()
        
    }
    
    func loadDefaults() {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        self.usernameTextField!.text = defaults.stringForKey("username") 
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
    

   
}





