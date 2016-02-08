//
//  ViewController.swift
//  Segue app
//
//  Created by Bronson Dupaix on 2/5/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "ShowViewTwoSegue" {
            
            print("viewtwo")
            
            let viewControllerTwo = segue.destinationViewController as! ViewControllerTwo
            
            viewControllerTwo.fromViewControllerOne = "Hello from View One"
            
            
        }
        
    }


}

