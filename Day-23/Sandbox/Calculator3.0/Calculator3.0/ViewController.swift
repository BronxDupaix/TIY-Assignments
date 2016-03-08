//
//  ViewController.swift
//  Calculator3.0
//
//  Created by Bronson Dupaix on 2/14/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var value1: Double = 0
    
    var value2: Double = 0
    
    var runningTotal: Double = 0
    
    var operation: String = ""
    
    var hasPerformedCalculation: Bool = false
    
    var valueHasntChanged: Bool = false
    
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    
    
    @IBAction func numbers(sender: UIButton) {
        
        if hasPerformedCalculation == true {
            self.displayLabel.text = "0"
            hasPerformedCalculation = false
        }
        
        let labelText = self.displayLabel?.text
        
        if labelText != nil && labelText != "" {
            
            if labelText == "0" {
                self.displayLabel?.text = "\(sender.tag)"
            } else {
                self.displayLabel.text = "\(labelText!)\(sender.tag)"
            }
        }
        
    }
    
    
    
    @IBAction func divide(sender: UIButton) {
        
        operation = "/"
        
        value2 = self.convertStringToDouble(self.displayLabel?.text)
        
        runningTotal = value1 / value2
        print(runningTotal)
        
        if valueHasntChanged == false{
            
            runningTotal = value2
            
            valueHasntChanged = true
        }
        
        value1 = runningTotal
        
        hasPerformedCalculation = true
        self.displayLabel?.text = "\(runningTotal)"
        
        
    }
    
    
    
    
    @IBAction func multiply(sender: UIButton) {
        
        operation = "*"
        
        value2 = self.convertStringToDouble(self.displayLabel?.text)
        
        runningTotal = value1 * value2
        print(runningTotal)
        
        if valueHasntChanged == false{
            
            runningTotal = value2
            
            valueHasntChanged = true
        }
        
        value1 = runningTotal
        
        hasPerformedCalculation = true
        self.displayLabel?.text = "\(runningTotal)"
        
        print("Times Button Tapped")
    }
    
    
    
    
    
    
    @IBAction func subtraction(sender: UIButton) {
        
        operation = "-"
        
        value2 = self.convertStringToDouble(self.displayLabel?.text)
        
        runningTotal = value1 - value2
        
        if valueHasntChanged == false{
            
            runningTotal = value2
            
            valueHasntChanged = true
        }
        
        value1 = runningTotal
        
        
        hasPerformedCalculation = true
        self.displayLabel?.text = "\(runningTotal)"
        
        
        
        print("Minus Button Tapped")
    }
    
    
    
    
    
    
    @IBAction func addition(sender: UIButton) {
        
        func add(){
        
        operation = "+"
        
        value2 = self.convertStringToDouble(self.displayLabel?.text)
        
        runningTotal = value1 + value2
        
        value1 = runningTotal
        
        hasPerformedCalculation = true
        self.displayLabel?.text = "\(runningTotal)"
        }
        add()
    }
    
    
    
    
    
    
    @IBAction func equals(sender: UIButton) {
        
        //        if operationType == + {
        //        addButtonTapped()
        //        }
        
        //        switch {
        //            case
        //        }
        
        print("Equals Button Tapped")
    }
    
    
    
    
    
    
    @IBAction func clear(sender: AnyObject) {
        func clear() {
            
            value1 = 0
            value2 = 0
            runningTotal = 0
            
            valueHasntChanged = false
            
            self.displayLabel?.text = ""
        }
        clear()
        
    }
    
    
    
    func convertStringToDouble(str: String?) -> Double {
        
        var returnDouble: Double = 0
        
        if str == nil || str == "" {
            return returnDouble
        }
        
        returnDouble = Double(str!)!
        
        return returnDouble
    }



}

