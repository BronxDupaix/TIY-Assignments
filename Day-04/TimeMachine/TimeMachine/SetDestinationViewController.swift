//
//  SetDestinationViewController.swift
//  TimeMachine
//
//  Created by Bronson Dupaix on 2/4/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class SetDestinationViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var destinationDate = ""
    
    
   
    @IBAction func datePicker(sender: UIDatePicker) {

        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateFormat = "MMM-dd-yyyy"
        
        destinationDate = dateFormatter.stringFromDate(datePicker.date)
        
        print(destinationDate.uppercaseString) 
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
