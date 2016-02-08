//
//  ViewController.swift
//  TipCalculator
//
//  Created by Bronson Dupaix on 2/6/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBOutlet weak var textfield: UITextField!

    
    @IBOutlet weak var totalLabel: UILabel!
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        return true
    }

    
    
    @IBAction func twentypercentbutton(sender: UIButton) {
    
        
        print("twenty")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

