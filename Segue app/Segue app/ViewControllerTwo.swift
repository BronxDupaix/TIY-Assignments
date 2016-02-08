//
//  ViewControllerTwo.swift
//  Segue app
//
//  Created by Bronson Dupaix on 2/5/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    @IBOutlet weak var secondViewLabel: UILabel!
    
    var fromViewControllerOne:String = ""

    
    override func viewWillAppear(animated: Bool) {
            super.viewWillAppear(animated)
        
        
        self.secondViewLabel.text = fromViewControllerOne
    }

}
