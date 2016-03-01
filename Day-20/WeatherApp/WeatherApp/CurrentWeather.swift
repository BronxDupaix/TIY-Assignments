//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Bronson Dupaix on 2/25/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class CurrentWeather {
    
    
    var time: Double = 0
    
    var summary: String = ""
   
    var temperature: Double = 0.00
    
    var apparentTemperature: Double = 0.00
    
    var humidity: Double = 0.00
    
    var windSpeed: Double = 0.0
    
    init() {
        
    }
    
    init(dict: JSONDictionary) {
        
        
        if let time = dict["time"]  as? Double { 
            
            self.time = time
            
            print(time)
            
        } else {
            print("no current time")
        }
        
        if let summary = dict["summary"] as? String {
            
            
            self.summary = summary
            
            print(summary)
            
        } else {
            
            print(" no current summary")
        }
        
        if let temperature = dict["temperature"] as? Double {
            
            self.temperature = temperature
            
            print(temperature)
        } else {
            
            print("no current temperature")
        }
        
        if let apparentTemperature = dict["apparentTemperature"] as? Double {
            
            self.apparentTemperature = apparentTemperature
            
            print(apparentTemperature)
        } else {
            print(" no current apparent temperature")
        }
        
        if let humidity = dict["humidity"] as? Double {
            
            self.humidity = humidity
            
            print(humidity)
        } else {
            
            print(" no current humidity")
        }
        
        if let windSpeed = dict["windSpeed"] as? Double {
            
            self.windSpeed = windSpeed
            print(windSpeed) 
        } else {
            
            print("no current windspeed")
        }
    
    }
    
    
}