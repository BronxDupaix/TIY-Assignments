//
//  ViewController.swift
//  StarWarsApp2
//
//  Created by Bronson Dupaix on 2/15/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

typealias JSONDictionary = [String:AnyObject]
typealias JSONArray = [JSONDictionary]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var characterArray = [StarWarsCharacter]() 
    
    var currentCharacter: StarWarsCharacter?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let (jsonString, data) = loadJSONFile("StarWars", fileType: "json")
        
        print(jsonString)
        
        
        
        if let data = data {
            do {
                let object = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)
                
                if let dict = object as? JSONDictionary {
                    
                    parseJSON(dict)
                    
                    
                }
            } catch {
                
                print("Data Error - Unable to parse the original jsonString")
            }
        }

  
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        self.currentCharacter = self.characterArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TypeOneCell", forIndexPath: indexPath) as? TypeOneTableViewCell
        
        let name = self.currentCharacter!.name
        
        let overview = self.currentCharacter!.overview
        
        let photo = self.currentCharacter!.photo
        
        cell?.nameLabel?.text = "\(name)"
        
        cell?.descriptionLabel?.text = "\(overview)"
        
        cell?.profileImage?.image = UIImage(named: "\(photo)")
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return characterArray.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.currentCharacter = characterArray[indexPath.row]
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200.0
    }
    
    
    func parseJSON(dict: JSONDictionary) {
        
        print("\n\nDictionary\n\n \(dict)")
        
        
        
        if let characters = dict["characters"] as? JSONArray {
            
            
            if let characters = dict["characters"] as? JSONArray {
                
                
                for character in characters {
                    
                    let details = StarWarsCharacter(name: "", homeworld: "", overview: "", photo: "")
                    
                    if let name = character["name"] as? String {
                        
                        details.name = name
                        
                        print(name)
                        
                        
                    }
                    
                    if let homeworld = character["homeworld"] as? String {
                        
                        details.homeworld = homeworld
                        
                        print(homeworld)
                    }
                    
                    if let overview = character["overview"] as? String {
                        
                        details.overview = overview
                        
                        print(overview)
                    }
                    if let photo = character["photo"] as? String {
                        
                        details.photo = photo
                    }
                    
                    self.characterArray.append(details)
          
                }
                

            }
            
            
        }
        
        for details in self.characterArray{
            print(details.name)
        }
        
        
        
    }
    

    
    
    func loadJSONFile(filename: String, fileType: String) -> (String, NSData?) {
        
        var returnString = ""
        var data: NSData? = nil
        
        guard let filePath = NSBundle.mainBundle().URLForResource(filename, withExtension: fileType) else { return (returnString, data) }
        
        if let jsondata = NSData(contentsOfURL: filePath) {
            if let jsonString = NSString(data: jsondata, encoding: NSUTF8StringEncoding) {
                returnString = jsonString as String
                data = jsondata
            }
        }
        return (returnString, data)
    }
    
    
    



}

