//
//  DetailViewController.swift
//  NavigationApp
//
//  Created by Bronson Dupaix on 2/4/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    let segueIdentifier = "showDetailViewController"
    
    var nameOfBigPhoto: String = ""
    
    
    override func viewDidAppear(animated: Bool) { super.viewDidAppear(animated)
        
        imageView.image = UIImage(named: nameOfBigPhoto)
    }
}
    



