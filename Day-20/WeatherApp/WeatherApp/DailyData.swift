//
//  DailyData.swift
//  WeatherApp
//
//  Created by Bronson Dupaix on 2/25/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class DailyData {
    
    var time: Int = 0
    
    var summary: String = ""
    
    var sunRiseTime: Int = 0
    
    var sunsetTime: Int = 0
    
    var temperatureMin: Double = 0.00
    
    var temperatureMax: Double = 0.00
    
    init(dict: JSONDictionary) {
        
        if let time = dict["time"] as? Int {
            self.time = time
        } else {
            print(" no daily time")
        }
        
        if let summary = dict["summary"] as? String{
            
            self.summary = summary
        } else {
            print(" no daily summary")
        }
        
        if let sunRiseTime = dict["sunriseTime"] as? Int {
            self.sunRiseTime = sunRiseTime
        } else {
            print("no sunrise time")
        }
        
        if let sunsetTime = dict["sunsetTime"] as? Int {
            self.sunsetTime = sunsetTime
        } else {
            print("sunset Time")
        }
        
        if let temperatureMin = dict["temperatureMin"] as? Double {
            self.temperatureMin = temperatureMin
        } else {
            print(" no temperature min")
        }
        
        if let temperatureMax = dict["temperatureMax"] as? Double {
            
            self.temperatureMax = temperatureMax
        } else {
            print("no temperature max" ) 
        }
    }
    
    
    
    
}