//
//  AddViewController.swift
//  MyStore
//
//  Created by Bronson Dupaix on 3/3/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var companyTextField: UITextField!
    
    @IBOutlet weak var versionTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func saveButton(sender: UIButton) {
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
