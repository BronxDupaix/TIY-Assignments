//
//  ViewController.swift
//  Counter2.0
//
//  Created by Bronson Dupaix on 2/1/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var stepper: UIStepper!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      counterLabel.text = "\(counter)"
        
    }
    


    @IBAction func valueChanged(sender: UISlider) {
        
        counter = Int(sender.value)
        
        
        updateUI()

        
        
    }
    func updateUI() {
        counterLabel.text = "\(counter)"
    }

    @IBAction func stepper(sender: UIStepper) {
        
        counter = Int(sender.value)
        
        slider.value = Float(counter)
        
        updateUI() 
    }

}

