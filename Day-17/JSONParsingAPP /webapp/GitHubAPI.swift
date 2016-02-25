//
//  GitHubAPI.swift
//  webapp
//
//  Created by Bronson Dupaix on 2/23/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String:AnyObject]
typealias JSONArray = [JSONDictionary]

class GitHubAPI {
    
    
    var delegate: GitHubFriendsprotocol? 
    
 
    
    func fetchUsers() {
        
        
    
    //step one
    let urlString = "https://api.github.com/users/touchopia"  
    // step two
    if let url = NSURL(string: urlString)
        {
        // step three
        let session = NSURLSession.sharedSession()
        // step four
        let task = session.dataTaskWithURL(url, completionHandler: {
            
            (data, response, error) -> () in
            
            if error != nil {
                debugPrint("an error occured \(error)")
            }else {
                
                // parse JSON from data
                
                //print(data)
                
                if let data = data {
                    
                    do {
                        
                        if let dictionary = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? JSONDictionary {
                            
                            // valid dictionary
                            
                    //print("dictionary")
                            
                            // step five create a new instance of the class
                            
                            
                            
                            let f = Friend(dict: dictionary)
                            
                            
                                print(f.name)
                            
                            var friendsArray = [Friend]()
                            
                            friendsArray.append(f)
                            
                            var x = Friend()
                            
                                x.name = "Bronson"
                            
                                x.email = "bronx@gmail.com"
                            
                            friendsArray.append(x)
                            
                            var y = Friend()
                            
                                y.name = "Garrett"
                            
                                y.email = "garrett@garrett.garrett"
                            
                            friendsArray.append(y) 
                            
                            var z = Friend()
                            
                                z.name = "Mitch"
                            
                                z.email = "duche@mitch.ell"
                            
                            friendsArray.append(z)
                            
                            
                            
                            
                            //valid Friend 
                            
                            self.delegate?.passFriend(friendsArray)
                            
                            
                            
                            
                        
                            
                            
                            
                        } else {
                            debugPrint("i couldnt parse dictionary")
                        }
                        
                    } catch {
                        
                        debugPrint("I couldnt parse JSON")
                        
                        
                    }
                    
                }
            }
            
        })
        
        task.resume()
        
        
        
        
        
        } else {
    debugPrint("")
        }
    }

}