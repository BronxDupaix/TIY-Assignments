//
//  ViewController.swift
//  CoreDataTableView-Swfit
//
//  Created by Bronson Dupaix on 3/21/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    
    var tasksArray = [String]()
    
    var addTaskView: UIView?
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addTaskButton(sender: UIBarButtonItem) {
        
       // self.addTaskView?.bounds = 
        
        self.view .addSubview(addTaskView!)
        
        
        
        
    }
  
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ProCell") as! ProCellTableViewCell
        
        cell.createdDateLabel.text = "11-11-2211"
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasksArray.count
    }


}

