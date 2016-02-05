//
//  ViewController.swift
//  TimeMachine
//
//  Created by Bronson Dupaix on 2/4/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var destinationLabel: UILabel!
    
    
    @IBOutlet weak var presentLabel: UILabel!
    
    @IBOutlet weak var speedLabel: UILabel!
    
    @IBAction func setDestinationButton(sender: AnyObject) {
        
    
        
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print("segue")
    }
    
    @IBAction func unwindSeque(segue: UIStoryboardSegue) {
        
        
        print("here")
    }
  var count = 0
    
    @IBAction func travelBackButton(sender: AnyObject) {
        
        speedLabel.text = "\(count)"
        
      func speedUpdate(){  if count > 88 {
            count++
        }
        
    }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


