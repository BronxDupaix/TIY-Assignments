//
//  RestuarantClass.swift
//  RestuarantRaider
//
//  Created by Bronson Dupaix on 2/18/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation
import UIKit

class Restuarant{
    
    var name: String = ""
    
    var style: String = ""
    
    var address: String = ""
    
    var ourRating: String = ""
    
    var latitude: Double = 0.00
    
    var longitude: Double = 0.00
    
    var description: String = ""
    
    var photo: String = "" 
    
    var menus = [Menu]() 

    
    init(dict: JSONDictionary){
        
    }
    
    
    
}