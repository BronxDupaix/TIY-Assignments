//
//  StarWarsCharacter.swift
//  StarWarsApp
//
//  Created by Bronson Dupaix on 2/15/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class StarWarsCharacter{
    
    var name: String
    var homeworld: String
    var overview: String
    var photo: String 
    
    init(name: String, homeworld: String, overview: String, photo: String){
    
    self.name = name
    self.homeworld = homeworld
    self.overview = overview
    self.photo = photo
        
    }
    

    
}