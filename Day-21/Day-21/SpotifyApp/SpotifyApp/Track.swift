//
//  Track.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 2/29/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

let kTrackName = "trackName"

class Track: NSObject, NSCoding {
    
    
    var trackName: String = ""
    
    
    override init() {
        
    }
    
    init(dict: JSONDictionary) {
        
        if let trackName = dict["name"] as? String {
            
            self.trackName = trackName 
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
       self.trackName = aDecoder.decodeObjectForKey(kTrackName) as! String
        
        super.init()
    }

    
    
    
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(trackName, forKey: kTrackName)
        
       }

    
    
 
}