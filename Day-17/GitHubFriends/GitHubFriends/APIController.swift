//
//  APIController.swift
//  AlbumSearch
//
//  Created by Phil Wright on 02/21/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import Foundation

class APIController
{
    typealias JSONDictionary = [String:AnyObject]
    typealias JSONArray = [JSONDictionary]
    
    var delegate: APIControllerProtocol
    
    
    
    // MARK: - Initializer
    
    init(delegate: APIControllerProtocol) {
        self.delegate = delegate
    } 
    
    // MARK: - Public Methods
    
    func searchGithubFor(searchTerm: String) {
        
        
            let urlPath = "https://api.github.com/users/bronxdupaix"
            
            if let url = NSURL(string: urlPath) {
                
                let session = NSURLSession.sharedSession()
                
                let task = session.dataTaskWithURL(url, completionHandler: { data, response, error -> () in
                    
                    debugPrint("Task completed")
                    
                    if error != nil {
                        debugPrint("An error occurred \(error)")
                    } else {
                        if let data = data,
                            let dictionary = self.parseJSON(data) {
                                
                                let f = Friend(dict: dictionary)
                                
                                print("hello")  
                                
                                
//                                if let Friend: dictionary[init dict]   {
//                                    self.delegate.didReceiveAPIResults(JSONDictionary)
//                                
                        }
                    }
                })
                task.resume()
            } else {
                debugPrint("The url \(urlPath) was not valid.")
//            }
        }
    }
    
    func parseJSON(data: NSData) -> JSONDictionary?
    {
        do {
            if let dict = try NSJSONSerialization.JSONObjectWithData(data, options: []) as? JSONDictionary {
                return dict
            }
        }
        catch let error as NSError {
            debugPrint(error.localizedDescription)
        }
        return nil
    }
}