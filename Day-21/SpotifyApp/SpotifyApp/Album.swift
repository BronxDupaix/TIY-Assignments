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
    
    var releaseDate: Int = 0
    
    // var trackArray = [Track]()
    
    
    init(dict: JSONDictionary) {
        
        if let albumName = dict["name"] as? String {
            
            self.albumName = albumName
        } else {
            print(" no album name")
        }
        
        if let releaseDate = dict["release_date"] as? Int {
            
            self.releaseDate = releaseDate
        } else {
            
            print("no album release date") 
        }
        
    }
    
}