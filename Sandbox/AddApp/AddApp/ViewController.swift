//
//  ViewController.swift
//  AddApp
//
//  Created by Bronson Dupaix on 2/12/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstNumber: Double = 0
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var numberOneTextField: UITextField!
    
    
    @IBAction func addButtonTapped(sender: UIButton) {
        
        self.firstNumber = self.convertsStringToDouble(numberOneTextField.text)
    }

    @IBAction func equalButtonTapped(sender: UIButton) {
    }

    @IBAction func minusButtonTapped(sender: UIButton) {
    }

    
    func convertsStringToDouble(str: String?) -> Double{
        
        var doubleValue:Double = 0
        
        if str == nil || str == "" {
        return 0
    }else{
    if let str = str {
    
    let doubleValue = Double(str)
    
    }
    }
        return numberOneTextField
        
    }

}

