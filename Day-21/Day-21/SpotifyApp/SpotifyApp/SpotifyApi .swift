//
//  SpotifyApi .swift
//  SpotifyApp
//
//  Created by Bronson Dupaix on 2/29/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation


class SpotifyApi {
    
    var artist = Artist()
    
    var track = Track()
    
    var delegate: RetrieveArtist?
    
    var trackDelegate: RetrieveTracksProtocol? 
    
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
                            // Step One Dictionary
                            if let dictionary = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? JSONDictionary {
                                
                                // print(dictionary)
                                
                                if let artistsDict = dictionary["artists"] as?  JSONDictionary {
                                    
                                   var arrayOfArtists = [Artist]()
                                    
                                    if let itemsArray = artistsDict["items"] as? JSONArray {
                                        
                                        
                                        if let itemDict = itemsArray.first {
                                            
                                            self.artist = Artist(dict: itemDict)
                                            
                                 
                                            self.fetchAlbum(self.artist.artistID)
                                       }
                                        
                                    }else {
                                        print( " i couldnt loop through artists")
                                        
                                        
                                    }
                                } else {
                                    print(" coudnt get artists from dictionary")
                                }
                                
                                
                                
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
        
        
        let urlString = "https://api.spotify.com/v1/artists/\(artistID)/albums?market=US&album_type=album&limit=10" 
        
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
                                
                                if let items = albumDict["items"] as? JSONArray{
                                    var albums = [Album]()
                                    
                                    for item in items {
                                        
                                        let a = Album(dict: item)
                                        
                                       // print(a.albumName)
                                        
                                        // print(a.albumID)
                                        
                                        albums.append(a)
                                        
                                    }
                                    
                                    self.artist.albums = albums 
                                    
                                
                                    
                                    
                                }
                                
                                self.delegate?.passArtist(self.artist) 
                                
                                
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
                                
                               // print(trackDict)
                                
                                var tracks = [Track]()
                                
                                if let itemsArray = trackDict["items"] as? JSONArray {
                                    
                                    for item in itemsArray {
                                        
                                        self.track = Track(dict: item)
                                        
                                        tracks.append(self.track)
                                        
                                      
                                    }
                                    
                                    self.trackDelegate?.passTracks(tracks)
                                    
                                 
                                    
                             } else {
                                    print("couldnt convert items array to array")
                                }
                                
                                
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