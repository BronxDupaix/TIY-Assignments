//
//  ArtistItems.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 2/29/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class Items {
    
    var artistID: String = ""
    
    var name: String = ""
    
    
    init(dict: JSONDictionary) {
        
        if let artistID = dict["id"] as? String {
            self.artistID = artistID
        } else {
            print(" no artist id")
        }
        
        if let name = dict["name"] as? String {
            self.name = name
        } else {
            print(" no artist name") 
        }
        
    }
}