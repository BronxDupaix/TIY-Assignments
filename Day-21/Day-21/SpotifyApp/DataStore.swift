//
//  DataStore.swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 3/2/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation


class DataStore: NSObject {
    
    static let sharedInstance = DataStore()
    
    private override init() {}
    
    var artistsArray = [Artist]()
    
    let artistArchiveURL: NSURL = {
        let documentsDirectories = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: . UserDomainMask)
        
        let documentDirectory = documentsDirectories.first!
        
        return documentDirectory.URLByAppendingPathComponent("artist.archive")
    }()
    
    func loadArtists() -> Bool {
        if let archivedArtists = NSKeyedUnarchiver.unarchiveObjectWithFile(self.artistArchiveURL.path!) as? [Artist] {
            
            self.artistsArray = archivedArtists
            
         //   print("artists have been unarchived")
            
            return true
            
        } else {
            print(" couldnt unarchive artists")
        }
        
        
        return false
    }
    
    
    func saveChanges() -> Bool {
        
      //  print("saving artists to \(artistArchiveURL.path!)")
        
        
        return NSKeyedArchiver.archiveRootObject(artistsArray, toFile: artistArchiveURL.path!)
    }
    
    
    
    
}