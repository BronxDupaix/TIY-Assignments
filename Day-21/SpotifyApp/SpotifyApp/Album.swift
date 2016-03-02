//
//  Album.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 2/29/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class Album {
    
    var albumName: String = ""
    
    var albumID: String = ""
    
    // var releaseDate: Int = 0
    
    // var trackArray = [Track]()
    
    
    init() {
        
    }
    
    
    init(dict: JSONDictionary) {
        
        if let albumName = dict["name"] as? String {
            
            self.albumName = albumName
            
        } else {
            print(" no album name")
        }
        
        if let albumID = dict["id"] as? String {
            
            self.albumID = albumID 
        }
        
    }
    
}