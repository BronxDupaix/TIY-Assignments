//
//  LoginViewController.swift
//  BossSecretaryApp
//
//  Created by Bronson Dupaix on 2/24/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, BossProtocol {

    
    
    var api = APIController() // creates a local object of the API Class
    
    var usersArray = [User]() // local array of Users
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.delegate = self 
        
        api.fetchUsers() // starts the fetch users process in the api controller

    } // end of view did load

    
    func giveMeUsersArray(users: [User]) {
    
    
        // I do the work
        
        // Reload Data
    
    
    }
} // end of view
