//
//  ViewController.swift
//  marvelproject
//
//  Created by Bronson Dupaix on 2/8/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

var herosArray = [Hero]()
    
    var currentHero : Hero?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let hero1 = Hero(name: "Thor", homeworld: "Asgard", powers: "Superhuman strength, endurance, and longevity; abilities via Mjolnir: dimensional transportation; electric manipulation; flight; weather manipulation")
        
            self.herosArray.append(hero1)
        
        let hero2 = Hero(name: "Iron Man", homeworld: "Earth", powers: "Genius-level intellect; highly proficient scientist, engineer, and businessperson; via powered armored suit: superhuman strength and durability; supersonic flight at Mach 3; energy repulsors; missiles; regenerative life support (sometimes powered by solar power)")
        
        self.herosArray.append(hero2)
        
        for hero in herosArray {
            print(hero.name)
            print(hero.homeworld)
            print(hero.powers)
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        self.currentHero = self.herosArray[indexPath.row]
        
        
        cell.textLabel?.text = "\(self.currentHero!.name)"
        
        return cell
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return herosArray.count
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.currentHero = self.herosArray[indexPath.row]
        
        print("\(self.currentHero?.name)")
        
        self.performSegueWithIdentifier("showDetailSegue", sender: self)
       
        //tapped on and selected cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        print(segue.identifier)
        
        
        if segue.identifier == "showDetailSegue" {
            let viewcontroller = segue.destinationViewController as! HeroDetailViewController
            
            viewcontroller.hero = self.currentHero
            
            
            
            
        }
    }


}

