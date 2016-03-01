//
//  Artist.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 2/29/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String: AnyObject]
typealias JSONArray = [JSONDictionary]

class Artist {
    
    var items = [Items]()
    
    
    init(dict: JSONDictionary) {
        
        if let itemsArray = dict["items"] as? JSONArray? {
            

            }
    
    }
    
}