//
//  Artist.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 2/29/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

typealias JSONDictionary = [String: AnyObject]
typealias JSONArray = [JSONDictionary]


let kname = "name"

let kartistID = "artistID"

let kAlbums = "albums"



class Artist: NSObject, NSCoding {
    
    var name: String = ""
    
    var artistID: String = ""
    
    var albums = [Album]() 
    
    
    override init () {
        
    }
    
    init(dict: JSONDictionary) {
        
        if let name = dict["name"] as? String {
            
            self.name = name
        }
        
        if let artistID = dict["id"] as? String {
            
            self.artistID = artistID 
        }
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        self.name = aDecoder.decodeObjectForKey(kname) as! String
        
        self.artistID = aDecoder.decodeObjectForKey(kartistID) as! String
        
        self.albums = aDecoder.decodeObjectForKey(kAlbums) as! Array 
        
      super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(name, forKey: kname)
        
        aCoder.encodeObject(artistID, forKey: kartistID)
        
        aCoder.encodeObject(albums, forKey: kAlbums)
    }

    
}