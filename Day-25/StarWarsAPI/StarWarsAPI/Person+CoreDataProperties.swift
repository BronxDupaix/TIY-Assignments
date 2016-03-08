//
//  Person+CoreDataProperties.swift
//  StarWarsAPI
//
//  Created by Bronson Dupaix on 3/5/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Person {

    @NSManaged var name: String?
    @NSManaged var gender: String?
    @NSManaged var created: NSDate?
    @NSManaged var starships: Starship?
    
    

}
