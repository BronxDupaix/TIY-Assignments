//
//  SpotifyApi .swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 2/29/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation


class SpotifyApi {
    
    func fetchArtist(artist: String) {
        
        
        let urlString = "https://api.spotify.com/v1/search?q=\(artist)&type=artist" 
        
        
        if let url = NSURL(string: urlString)
        {
            
            let session = NSURLSession.sharedSession()
            
            let task = session.dataTaskWithURL(url, completionHandler: {
                
                (data, response, error) -> () in
                
                if error != nil {
                    debugPrint("an error occured \(error)")
                }else {
                    
                    
                    // print(data)
                    
                    if let data = data {
                        
                        do {
                            
                            if let dictionary = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? JSONDictionary {
                                
                                // print(dictionary)
                                
                                let artist = Artist(dict: dictionary)

                                
                            } else {
                                debugPrint("cant parse dictionary")
                            }
                            
                        } catch {
                            
                            debugPrint("cant parse JSON")
                            
                        }
                    }
                }
                
            })
            
            task.resume()
            
        } else {
            debugPrint("cant print data")
        }
        
    }
    
    func fetchAlbum(artistID: String) {
        
        
        let urlString = "https://api.spotify.com/v1/albums/\(artistID)"
        
        
        if let url = NSURL(string: urlString)
        {
            
            let session = NSURLSession.sharedSession()
            
            let task = session.dataTaskWithURL(url, completionHandler: {
                
                (data, response, error) -> () in
                
                if error != nil {
                    debugPrint("an error occured \(error)")
                }else {
                    
                    
                    // print(data)
                    
                    if let data = data {
                        
                        do {
                            
                            if let albumDict = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? JSONDictionary {
                                
                                // print(dictionary)
                                
                                
                            } else {
                                debugPrint("cant parse dictionary")
                            }
                            
                        } catch {
                            
                            debugPrint("cant parse JSON")
                            
                        }
                    }
                }
                
            })
            
            task.resume()
            
        } else {
            debugPrint("cant print data")
        }
        
    }

    
    
    
    func fetchTracks(albumID: String) {
        
        
        let urlString = "https://api.spotify.com/v1/albums/\(albumID)/tracks"
        
        if let url = NSURL(string: urlString)
        {
            
            let session = NSURLSession.sharedSession()
            
            let task = session.dataTaskWithURL(url, completionHandler: {
                
                (data, response, error) -> () in
                
                if error != nil {
                    debugPrint("an error occured \(error)")
                }else {
                    
                    
                    // print(data)
                    
                    if let data = data {
                        
                        do {
                            
                            if let trackDict = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? JSONDictionary {
                                
                                // print(dictionary) 
                                
                                
                            } else {
                                debugPrint("cant parse dictionary")
                            }
                            
                        } catch {
                            
                            debugPrint("cant parse JSON")
                            
                        }
                    }
                }
                
            })
            
            task.resume()
            
        } else {
            debugPrint("cant print data")
        }
        
    }
    
    
}