//
//  RestuarantTableViewController.swift
//  RestuarantRaider
//
//  Created by Bronson Dupaix on 2/18/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

typealias JSONDictionary = [String: AnyObject]
typealias JSONArray = [JSONDictionary]

class RestuarantTableViewController: UITableViewController {
    
    var restuarantArray = [Restuarant]()
    
    var currentRestuarant: Restuarant?
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let (jsonString, data) = self.loadJSONFile("restuarants2", fileType: "json") 
        
        
        
        if let data = data{
            do {
                let object = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)
                
                if let dict = object as? JSONDictionary {
                    
                   parseJson(dict)
                    
                    
                }
            } catch {
                
                print("Data Error - Unable to parse the original jsonString")
            }
        }
        
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return restuarantArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        self.currentRestuarant = self.restuarantArray[indexPath.row]
        
        let cell = UITableViewCell()
        
        let name = self.currentRestuarant!.name 
    
        
        cell.textLabel?.text = "\(name)"

        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentRestuarant = restuarantArray[indexPath.row]
        
       performSegueWithIdentifier("restuarantProfileSegue", sender: self)
        
        print("segue performed") 
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "restuarantProfileSegue" {
            let viewcontroller = segue.destinationViewController as? RestuarantProfileViewController
            
            viewcontroller?.restuarant = self.currentRestuarant
            
            
        }
        
    }

    
    func parseJson(dict: JSONDictionary) {
        
        //print(dict)
        
        if let results = dict["restuarants"] as? JSONArray {
            
            for result in results {
                
                let r = Restuarant()
                
                print(result)
                
                if let name = result["name"] as? String {
                    r.name = name
                } else {
                    print("no name")
                }
                
                if let style = result["style"] as? String {
                    r.style = style
                } else {
                    print("no style")
                }
                
                if let address = result["address"] as? String {
                    
                    r.address = address
                } else {
                    print("no address")
                }
                
                if let ourRating = result["ourRating"] as? Int {
                    
                    r.ourRating = ourRating
                    
                } else {
                    print("no rating")
                }
                
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

