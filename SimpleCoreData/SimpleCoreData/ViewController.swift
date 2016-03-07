//
//  ViewController.swift
//  SimpleCoreData
//
//  Created by Bronson Dupaix on 3/4/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

import CoreData

class ViewController: UIViewController {
    
    let dataController = DataController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        seedPerson()
        
        fetchPersons()
        
    }
    
    
    func fetchPersons() {
        
        
        let mom = dataController.managedObjectContext
        
        let fetchPerson = NSFetchRequest(entityName: "Person")
        
        do {
            
            let persons = try mom.executeFetchRequest(fetchPerson) as! [Person]
            
            for person in persons {
                
                print(person.name)
                
                print(person.created)
                
                if let starships = person.starships {
                    
                    let starshipsArray = Array(starships) as! [Starship] 
                    
                    for s in starshipsArray {
                        print(s.name)
                    }
                }
                
            }
   
            
        }catch {
            
            fatalError("i couldnt fetch persons \(error)")
        }
        
    }
    
    func seedPerson(){
        
        let mom = dataController.managedObjectContext
        
        let entity = NSEntityDescription.insertNewObjectForEntityForName("Person", inManagedObjectContext: mom) as! Person
        
        let today = NSDate()
        
        
        entity.setValue("Luke Skywalker", forKey: "name")
        
        entity.setValue("Female", forKey: "gender")
        
        entity.setValue(today, forKey: "created")
        
        
        
        let entityStarship = NSEntityDescription.insertNewObjectForEntityForName("Starship", inManagedObjectContext: mom) as! Starship
        
        entityStarship.setValue("X-Wing", forKey: "name")
        
        entityStarship.setValue(today, forKey: "created")
        
        entityStarship.setValue(entity, forKey: "person")
        
        
        let starships = NSSet(object: entityStarship) 
        
        entity.setValue(starships, forKey: "starships")
        
        do {
            
           try mom.save()
            
            print("we made it") 
            
        } catch {
            
            fatalError("an error occurred saving person and starship entity \(error)")
        }

    }

}