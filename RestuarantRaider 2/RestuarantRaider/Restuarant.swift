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
    
    var ourRating: Int = 0 
    
    var description: String = "" 
    
    var menus = [Menu]() 

    
    init(dict: JSONDictionary){
        
    }
    
    
    
}