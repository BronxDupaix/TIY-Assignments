//
//  ViewController.swift
//  HeroApp
//
//  Created by Bronson Dupaix on 2/8/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCellWithIdentifier("HerosCell")
        
        return cell!
    }

}

