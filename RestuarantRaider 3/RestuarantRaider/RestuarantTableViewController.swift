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
        
        let (jsonString, data) = self.loadJSONFile("restaurant3", fileType: "json")
        
        
        
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
        
        if let results = dict["restuarants"] as? JSONArray{
            
            for result in results{
                
                let rClass = Restuarant(dict: result)
                
                
                if let name = result["name"] as? String {
                    
                rClass.name = name
                } else {
                    print("no name")
                }
                
                if let style = result["style"] as? String{
                    
                    
                    rClass.style = style
                } else {
                    print("no style")
                }
                
                
                if let address = result["address"] as? String {
                    
                    rClass.address = address
                } else {
                    print("no address")
                }
                
                if let ourRating = result["ourRating"] as? Int {
                    
                    rClass.ourRating = ourRating
                    
                } else {
                    print("no rating") 
                }
                
                if let description = result["description"] as? String {
                    
                    rClass.description = description 
                } else{
                    print("no description")
                }
                
             
                
                
                
                if let menuesArray = result["menu"] as? JSONArray{
                    
                    print("menuArray")
                    

                    for menuDict in menuesArray{
                        
                        let mClass = Menu(dict: menuDict)
                        
                            rClass.menus.append(mClass)
                        
                            print("menuAppended")
                        
                        
                                if let menuName = menuDict["menuName"] as? String {
                                        mClass.menuName = menuName
                                    print("\(menuName)")
                                } else {
                                    print("No menu name")
                        }
                        
                        
                        
                        if let dishArray = menuDict["dishes"] as? JSONArray{
                            
                            for dishDict in dishArray{
                        
                        
                                let dClass = Dish(dict: dishDict)
                        
                                                if let dishName = dishDict["dishname"] as? String {
                                        
                                        dClass.dishName = dishName
                                                } else {
                                                    print("no dish name")
                                }
                                    
                                    if let description = dishDict["description"] as? String {
                                        
                                        dClass.description = description
                                    } else {
                                        print(" NO description")
                                }
                                    
                                    if let photo = dishDict["photo"] as? String {
                                        
                                        dClass.photo = photo
                            
                                    }
                                
                                mClass.dishes.append(dClass)
                                print("dishesAppended")
                                
                            }

                        } else {
                            print("no dish array")
                        }
                        
                        
                    }
                
                }
                
                self.restuarantArray.append(rClass)
            
            }
            
            
        }
        
        for result in self.restuarantArray {
            print(result.name)
            
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

