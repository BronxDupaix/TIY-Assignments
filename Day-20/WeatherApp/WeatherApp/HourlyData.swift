//
//  HourlyData.swift
//  WeatherApp
//
//  Created by Bronson Dupaix on 2/25/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class HourlyData {
    
    var time: Int = 0
    
    var summary: String = ""
    
    var temperature: Double = 0.00
    
    var humidity: Double = 0.00
    
    var windSpeed: Double = 0.00
    
    init(dict: JSONDictionary) {
        
        
        if let time = dict["time"] as? Int {
            self.time = time
        } else {
            print("no hourly time")
        }
        
        if let summary = dict["summary"] as? String {
            self.summary = summary
        }
        
        if let temperature = dict["temperature"] as? Double {
            
            self.temperature = temperature
        } else {
            print(" no hourly temperature")
        }
        
        if let humidity = dict["humidity"] as? Double {
            
            self.humidity = humidity
        } else {
            print(" no hourly humidity")
        }
        
        if let windSpeed = dict["windSpeed"] as? Double {
            
            self.windSpeed = windSpeed
        } else {
            print(" no hourly windSpeed")
        }
        
    }
    
}