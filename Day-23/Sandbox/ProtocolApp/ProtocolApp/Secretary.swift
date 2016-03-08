//
//  Secretary.swift
//  ProtocolApp
//
//  Created by Bronson Dupaix on 2/22/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class Secretary: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var users = ["Sean", "Phil", "Bronson", "Garrett", "Mitch"]
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ourCell")
        
        cell?.textLabel?.text = "Hello World"
        
        return cell! 
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("didselectrowatindexPath")
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
}
