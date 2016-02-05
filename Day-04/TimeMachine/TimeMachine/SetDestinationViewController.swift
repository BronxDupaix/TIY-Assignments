//
//  SetDestinationViewController.swift
//  TimeMachine
//
//  Created by Bronson Dupaix on 2/4/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class SetDestinationViewController: UIViewController {

    
    var currentDate: NSDate?
    
    @IBAction func datePicker(sender: UIDatePicker) {
        
        
        currentDate = sender.date
        
        print(currentDate)
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectDateButton(sender: UIButton) {
        
        self.performSegueWithIdentifier("exitSegue", sender: self)
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
