//
//  ViewController.swift
//  StarWarsApp
//
//  Created by Bronson Dupaix on 2/15/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

let dateKey = "DateKey"
class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        writeData()
    
        loadData()
        
    }
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        <#code#>
//    }
//    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
    
    func loadData(){
        let defaults = NSUserDefaults.standardUserDefaults()
        
       let today = defaults.valueForKey(dateKey) as! NSDate
        
        let labelString = defaults.valueForKey("ourLabelString") as! String
        
        let myBool = defaults.boolForKey("isFirstTap")
        
        let ourString = defaults.valueForKey("ourString") as! String
        
        print(labelString)
        print(myBool)
        print(ourString)
    }

    
    func writeData(){
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setValue("ourLabelString", forKey: "ourLabelString")
        defaults.setBool(true, forKey: "isFirstTap")
        defaults.setValue("ourString", forKey: "ourString")
        
        let today = NSDate()
        
        defaults.setValue(today, forKey: dateKey)
        
        defaults.synchronize()
        
        
    }

}


