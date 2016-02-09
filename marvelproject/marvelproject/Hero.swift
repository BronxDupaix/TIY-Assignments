//
//  Hero.swift
//  marvelproject
//
//  Created by Bronson Dupaix on 2/8/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation


class Hero {
    
    var name: String
    var homeworld: String
    var powers: String
    
    init(name: String, homeworld: String, powers: String){
    self.name = name
    self.homeworld = homeworld
    self.powers = powers
    }
}