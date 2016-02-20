//
//  RestuarantProfileViewController.swift
//  RestuarantRaider
//
//  Created by Bronson Dupaix on 2/18/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class RestuarantProfileViewController: UIViewController {
    
    var restuarant: Restuarant?
    
    

    @IBOutlet weak var restuarantNameLabel: UILabel!
    
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        restuarantNameLabel.text = "\(restuarant!.name)"
        
        
        
        descriptionLabel.text = "\(restuarant!.description)" 
        
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "viewMenuSegue" {
            let viewcontroller = segue.destinationViewController as? MenuTableViewController
            
            viewcontroller?.currentRestuarant = self.restuarant
            
            
            }
        
    }
    
    
    @IBAction func viewMenuButton(sender: UIButton) {
        
        
        print("view menu performed Segue") 
    }



}
