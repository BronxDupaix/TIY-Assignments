//
//  MovieDBAPI .swift
//  MovieDBApp2
//
//  Created by Bronson Dupaix on 2/24/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//


typealias JSONDictionary = [String:AnyObject]
typealias JSONArray = [JSONDictionary]

import Foundation

class MovieAPI {
    
    var delegate: MovieProtocol?
    
    func fetchMovies() {
        
        
        let urlString = "http://api.themoviedb.org/3/movie/popular?api_key=410bc0e3ca214ef14ad810b8009e52ba"
        
        
        if let url = NSURL(string: urlString)
        {
            
            let session = NSURLSession.sharedSession()
            
            let task = session.dataTaskWithURL(url, completionHandler: {
                
                (data, response, error) -> () in
                
                if error != nil {
                    debugPrint("an error occured \(error)")
                }else {
                    
                    
                    //print(data)
                    
                    if let data = data {
                        
                        do {
                            
                            if let dictionary = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? JSONDictionary {
                                
                                if let results = dictionary["results"] as? JSONArray {
                                    
                                    for result in results {
                                        
                                        let movie = Movie(dict: result as!JSONDictionary)
                                        
                                        print(movie.title)
                                        
                                        print(movie.overview)
                                        
                                        var movieArray = [Movie]()
                                        
                                        
                                        movieArray.append(movie)
                                        
                                        self.delegate?.passMovie(movieArray)
                                        
                                    }
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
