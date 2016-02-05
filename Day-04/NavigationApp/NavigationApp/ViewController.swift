//
//  ViewController.swift
//  NavigationApp
//
//  Created by Bronson Dupaix on 2/4/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let nameOfBigPhoto = "1-1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print("prepareForSegue")
        
        if segue.identifier == "showDetailViewController" {
            
        print("showPhotoSegue")
        
        let viewController = segue.destinationViewController as! DetailViewController
        
        viewController.nameOfBigPhoto = "1-1"
    }




  }
}