//
//  APIController.swift
//  BossSecretaryApp
//
//  Created by Bronson Dupaix on 2/24/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

// This is our boss 

class APIController {
    
    var delegate: BossProtocol? 
    
    
    func fetchUsers() {
        
        let f = User()
        
        let x = User()
        
        x.name = "Phil"
        
        let y = User()
        
        y.name = "Garrett"
        
        // go out get users 
        
        // put users into an array 
        
        
        var usersArray = [User]()
        
        usersArray.append(f) 
        
        usersArray.append(x)
        
        usersArray.append(y)
        
        // Triggers the usersArray transfer to the LoginViewController 
        self.delegate?.giveMeUsersArray(usersArray) 
        
        
    }
    



} // end of view 

