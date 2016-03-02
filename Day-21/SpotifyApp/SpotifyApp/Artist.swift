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
    
    var name: String = ""
    
    var artistID: String = ""
    
    var albums = [Album]() 
    
    
    init () {
        
    }
    init(dict: JSONDictionary) {
        
        if let name = dict["name"] as? String {
            
            self.name = name
        }
        
        if let artistID = dict["id"] as? String {
            
            self.artistID = artistID 
        }
        
        
    }

    
}