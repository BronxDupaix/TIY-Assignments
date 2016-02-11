//: Playground - noun: a place where people can play

import UIKit

//Step 1

let mainBundle = NSBundle.mainBundle()

//Step 2

if let ourURL = mainBundle.URLForResource("data", withExtension: "json")
    {

       if let data = NSData(contentsOfURL: ourURL){
        
        let aString = NSString(data: data, encoding: NSUTF8StringEncoding) as? String
        
        if let newString = aString {
            print(newString) 
        }
            
        }

}