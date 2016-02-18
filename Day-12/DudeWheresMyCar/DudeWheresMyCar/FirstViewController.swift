//
//  FirstViewController.swift
//  DudeWheresMyCar
//
//  Created by Bronson Dupaix on 2/16/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    
    var redColorValue: Float = 1.0
    
    var blueColorValue: Float = 0.2
    
    var greenColorValue: Float = 0.2
    
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        saveDefaults()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadDefaults()
    
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        changeBackgroundColor()
    }
    
    func changeBackgroundColor(){
        
        
        let color = UIColor(red: CGFloat(Config.sharedInstance.redColorValue), green: CGFloat(Config.sharedInstance.greenColorValue), blue: CGFloat(Config.sharedInstance.blueColorValue), alpha: 1.0)
        
        
        
        self.view.backgroundColor = color
        
    }
    
    


    
    
    
    @IBOutlet weak var makeTextField: UITextField!

    
    @IBOutlet weak var modelTextField: UITextField!
    
    
    @IBOutlet weak var yearTextField: UITextField!
    
    
    @IBOutlet weak var liscencePlateTextField: UITextField!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder() 
        
        return true
    } 
    
    
    
    func saveDefaults(){
        
        Config.sharedInstance.make = self.makeTextField.text
        
        Config.sharedInstance.model = self.modelTextField.text
        
        Config.sharedInstance.year = self.yearTextField.text
        
        Config.sharedInstance.licensePlate = self.liscencePlateTextField.text
        
        Config.sharedInstance.saveConfiguration() 
    }
    
    func loadDefaults() {
        
        Config.sharedInstance.loadConfiguation()
     
        self.makeTextField.text = Config.sharedInstance.make
        
        self.modelTextField.text = Config.sharedInstance.model
        
        self.yearTextField.text = Config.sharedInstance.year
        
        self.liscencePlateTextField.text = Config.sharedInstance.licensePlate
        
        
            
            
        }

        
    }


