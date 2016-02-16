//
//  ViewController.swift
//  StarWarsApp
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

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == true {
        let cell = tableView.dequeueReusableCellWithIdentifier("TypeOneCell", forIndexPath: indexPath) as! TypeOneTableViewCell
        
        cell.nameLabel?.text = self.character[indexPath.row]
        
        cell.profileImageView.image = UIImage(named: "chewbacca")
        
        return cell
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("TypeTwoCell", forIndexPath: indexPath) as! TypeTwoTableViewCell
            
            cell.nameLabel?.text = self.characterArray[indexPath.row]
            
            
            
        }
        return UITableViewCell()
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterArray.count
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100.0 
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let (jsonString, data) = loadJSONFile
        
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
    
    func parseJSON(dict: JSONDictionary) {
        
        print("\n\nDictionary\n\n \(dict)")
        
        
        
        if let characters = dict["characters"] as? JSONArray {
            
            
            for character in characters {
                
                let character = StarWarsCharacter(name: "", homeworld: "", overview: "", photo: "")
                
                if let name = character["name"] as? String {
                    
                    character.name = name
                    
                    print(name)
                    
                
            }
                
                if let homeworld = character["homeworld"] as? String {
                    character.homeworld = homeworld
                    
                    print(homeworld)
                }
                
                if let overview = characters["overview"] as? String {
                    character.overview = overview
                    print(overview)
                }
                if let photo = character["photo"] as? String {
                    character.photo = photo
                }
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

}