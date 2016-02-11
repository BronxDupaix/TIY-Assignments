//
//  ViewController.swift
//  MarvelApp
//
//  Created by Bronson Dupaix on 2/8/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var herosArray = [Hero]()
    
    var currentHero: Hero?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getJsonNames()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return herosArray.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        self.currentHero = self.herosArray[indexPath.row]
        
        let cell = UITableViewCell()
        
        let name = self.currentHero!.name
        
        cell.textLabel?.text = "\(name)"
        
        return cell
    }
    
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentHero = herosArray[indexPath.row]
        
        performSegueWithIdentifier("heroInfoSegue", sender: self)
        
        print(indexPath.row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "heroInfoSegue" {
            let viewcontroller = segue.destinationViewController as! HeroInfoViewController
            
            viewcontroller.hero = self.currentHero
        
        
        print(segue.identifier)
            }
    }
    
    func getJsonNames() {
        typealias JSONDictionary = [String:AnyObject]
        typealias JSONArray = [AnyObject]
        
        
        
        
        var jsonString = ""
        
        if let filepath = NSBundle.mainBundle().pathForResource("heros", ofType: "json") {
            do {
                jsonString = try NSString(contentsOfFile: filepath, usedEncoding: nil) as String
            } catch {
                print("Could not load data")
            }
        } else {
            print("heros not found")
        }
    
        
        let str = String(jsonString)
        
        let data = str.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
        
        do {
            if let data = data,
                namesArray = try
                    NSJSONSerialization.JSONObjectWithData(data, options: []) as?
                JSONArray {
                    for result in namesArray {
                        
                        if let jsonResult = result as? JSONDictionary {
                            
                            //print(jsonResult)
                            
                            var hero = Hero(name: "", powers: "", homeworld: "")
                            
                            if let name = jsonResult["name"] as? String {
                                hero.name = name
                                
                                print(name)
                            }
                            
                            if let homeworld = jsonResult["homeworld"] as? String {
                                hero.homeworld = homeworld
                                
                                print(homeworld)
                            }
                            
                            if let powers = jsonResult["powers"] as? String {
                                hero.powers = powers
                                
                                print(powers) 
                            }
                            
                            self.herosArray.append(hero)
                        }
                    }
            }
        } catch {
            print("An error occurred")
        }
        
        
        for hero in herosArray {
            print(hero.name)
        }

    }
    
}



