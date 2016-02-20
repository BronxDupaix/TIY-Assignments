//
//  MenuTableViewController.swift
//  RestuarantRaider
//
//  Created by Bronson Dupaix on 2/18/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    var currentRestuarant: Restuarant?
    
    var currentMenu: Menu?

    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(currentRestuarant!.name)")
        
        
        
        
        print("viewMenu") 

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.currentMenu = currentRestuarant!.menus.first
        
        print("\(currentMenu!.menuName)")
        
//        self.dish = currentMenu!.dishes.first
//        
//        print("\(dish!.dishName)")
        
        
        for dish in currentMenu!.dishes {
            
            print(dish.dishName)
        }
        

        
    }



    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return (self.currentMenu?.dishes.count)!

    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let d = currentMenu?.dishes[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("menuCellOne", forIndexPath: indexPath)
        
         cell.textLabel?.text = "\(d!.dishName)"
        
            return cell
    }




}
