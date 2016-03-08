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
    
    
    @IBOutlet weak var departedLabel: UILabel!
    @IBOutlet weak var presentLabel: UILabel!
    
    @IBOutlet weak var speedLabel: UILabel!
    
    @IBAction func setDestinationButton(sender: AnyObject) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print("segue")
    }
    
    @IBAction func exitSegue(segue: UIStoryboardSegue) {
        
        if segue.identifier == "exitSegue" {
            
            
            let newDate = segue.sourceViewController as! SetDestinationViewController
            
            let futureDate = newDate.destinationDate
            
            destinationLabel.text = futureDate
        }
        
        
        print("exitedSegue") 
    }

    
    func dates(){
        
        let today = NSDate()
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateFormat = "MMM-dd-yyyy"
        
        let todayString = dateFormatter.stringFromDate(today)
        
        presentLabel.text = todayString
    }
    
    
    
    @IBAction func travelBackButton(sender: AnyObject) {
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(speed, target: self, selector: "speedUpdate", userInfo: nil, repeats: true)

        speedUpdate()
        
    }
    
    var timer: NSTimer?
    
    var count: Int = 0
    
    let speed:  NSTimeInterval = 0.03
    
    func speedUpdate() {
        
        
        if count <= 88 {
            speedLabel.text = "\(count) MPH"
            count = count+1
        }else{
            
            if count == 89 {
                performSegueWithIdentifier("deloreanSegue", sender: self)
                
                timer?.invalidate()
                
            }
            
            
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dates()
        
        speedUpdate()
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func travelBack(segue: UIStoryboardSegue) {
        
        if segue.identifier == "travelBack" {
            
            departedLabel.text = presentLabel.text
            
            presentLabel.text = destinationLabel.text
            
            count = 0
            
            speedLabel.text = "\(count)"
            
        
            
        }
        
    }

}



