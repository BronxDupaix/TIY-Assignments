//
//  ViewController.swift
//  StarWarsAPI
//
//  Created by Bronson Dupaix on 3/5/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

import CoreData

class ViewController: UIViewController {
    
    var api = StarWarsAPI()
    
    var dataController = DataController() 

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func button(sender: UIButton) {
        
        fetchPersons()
        
        fetchStarship() 
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.fetchCharacter("\(1)")
        
        api.fetchStarship()
        
        

    } 
    
    
    func fetchPersons() {
        
        
        let mom = dataController.managedObjectContext
        
        let fetchPerson = NSFetchRequest(entityName: "Person")
        
        do {
            
            let persons = try mom.executeFetchRequest(fetchPerson) as! [Person]
            
            for person in persons {
                
                print(person.name)
                
                print(person.gender)
                
//                if let starships = person.starships {
//                    
//                    let starshipsArray = Array(arrayLiteral: starships) as! [Starship]
//                    
//                    for s in starshipsArray {
//                        print(s.name)
//                    }
//                }

                
            }
            
            
        }catch {
            
            fatalError("i couldnt fetch persons \(error)")
        }
        
    }
    
    func fetchStarship() { 
        
        
        let mom = dataController.managedObjectContext
        
        let fetchStarship = NSFetchRequest(entityName: "Starship")
        
        do {
            
            let starships = try mom.executeFetchRequest(fetchStarship) as! [Starship]
            
            for starship in starships {
                
                print(starship.name)
                
                
            }
            
            
        }catch {
            
            fatalError("i couldnt fetch starships \(error)")
        }
        
    }




}

