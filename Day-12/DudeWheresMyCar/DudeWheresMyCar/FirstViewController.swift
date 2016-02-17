//
//  FirstViewController.swift
//  DudeWheresMyCar
//
//  Created by Bronson Dupaix on 2/16/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        saveDefaults()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadDefaults()
        
    }
    

    
    @IBOutlet weak var makeTextField: UITextField!

    
    @IBOutlet weak var modelTextField: UITextField!
    
    
    @IBOutlet weak var yearTextField: UITextField!
    
    
    @IBOutlet weak var liscencePlateTextField: UITextField!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        
//    }
    
    func saveDefaults(){
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject(NSDate(), forKey: "PreviouslyUsed")
        
        defaults.setValue(self.makeTextField.text, forKey: "Make")
        
        defaults.setValue(self.modelTextField.text, forKey: "Model")
        
        defaults.setValue(self.yearTextField.text, forKey: "Year")
        
        defaults.setValue(self.liscencePlateTextField.text, forKey: "LiscencePlate")
        
        defaults.synchronize()
        
        
        
    }
    
    func loadDefaults() {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        let today = defaults.objectForKey("PreviouslyUsed") as? NSDate
        
        if today != nil{
            
            let makeString = defaults.valueForKey("Make") as! String
            
            self.makeTextField?.text = makeString
            
            
            
            self.modelTextField.text = defaults.valueForKey("Model") as? String
            
            self.yearTextField.text = defaults.valueForKey("Year") as? String
            
            self.liscencePlateTextField.text = defaults.valueForKey("LiscencePlate") as? String
            
            
            
            
            
        } else {
            print("No defaults have been saved")
        }

        
    }


}

