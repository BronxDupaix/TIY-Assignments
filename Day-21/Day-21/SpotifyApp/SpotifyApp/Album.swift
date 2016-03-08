//
//  Album.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 2/29/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

let kAlbumName = "albumName"

let kAlbumID = "albumID"

class Album: NSObject, NSCoding { 
    
    var albumName: String = ""
    
    var albumID: String = ""
    
    
    override init(){
        
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
    
    required init?(coder aDecoder: NSCoder) {
        
        self.albumName = aDecoder.decodeObjectForKey(kAlbumName) as! String
        
        self.albumID = aDecoder.decodeObjectForKey(kAlbumID) as! String
        
        super.init()
    }

    
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(albumName, forKey: kAlbumName)
        
        aCoder.encodeObject(albumID, forKey: kAlbumID)
    }

    
    
    
}