//
//  StarWarsAPI .swift
//  StarWarsAPI
//
//  Created by Bronson Dupaix on 3/5/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

import CoreData

typealias JSONDictionary = [String: AnyObject]
typealias JSONArray = [JSONDictionary]

class StarWarsAPI {
    
    var person = Person()
    
    var dataController = DataController()
    
    func fetchCharacter(number: String) {
        
        let urlString = "http://swapi.co/api/people/\(number)/" 
        
        
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
                                
                                
                                self.seedPerson(dictionary)
                                
       
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
    
    
    func seedPerson(dict: JSONDictionary){
        
        let mom = dataController.managedObjectContext
        
        let entity = NSEntityDescription.insertNewObjectForEntityForName("Person", inManagedObjectContext: mom) as! Person
        
        
        if let gender = dict["gender"] as? String {
            
            entity.setValue(gender, forKey: "gender")
            
          //  print(entity.gender)
        }
        
        
        if let name = dict["name"] as? String {
            
            entity.setValue(name, forKey: "name")
            
          //  print(entity.name)
        }
        
        if let date = dict["date"] as? NSDate {
            
            entity.setValue(date, forKey: "created") 
        }
        
        do {
            
            try mom.save()
            
            print("we made it")
            
        } catch {
            
            fatalError("an error occurred saving person and starship entity \(error)")
        }
        
    }
    
    
    
    
    func fetchStarship() {
        
        let urlString = "http://swapi.co/api/starships/9/"
        
        
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
                            
                            if let starshipDict = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? JSONDictionary {
                                
                                 // print(starshipDict)
                                
                                
                                self.seedStarship(starshipDict)
                                
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
    
    
    func seedStarship(dict: JSONDictionary) {
        
        let mom = dataController.managedObjectContext
        
        let starshipEntity = NSEntityDescription.insertNewObjectForEntityForName("Starship", inManagedObjectContext: mom) as! Starship
        
        if let name = dict["name"] as? String {
            
            starshipEntity.setValue(name, forKey: "name")
            
           // print(starshipEntity.name)
            
            
        }
        
    }

    

}