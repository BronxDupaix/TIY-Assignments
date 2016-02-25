//
//  FriendDetailViewController.swift
//  webapp
//
//  Created by Bronson Dupaix on 2/24/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {
    
    var friend: Friend? 

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
        nameLabel.text = friend?.name
        
        emailLabel.text = friend?.email 
        
    }
}
