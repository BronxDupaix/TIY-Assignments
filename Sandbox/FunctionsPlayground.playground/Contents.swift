//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"






func hello(name: String = "World", numberOfTimes: Int = 1){
    
    for _ in 1 ... numberOfTimes {
        
        print("Hello, \(name)")
    }
    
    
    
}

hello()

hello("Swift Programmer")

hello("Swift 2 Adopter", numberOfTimes:  3)