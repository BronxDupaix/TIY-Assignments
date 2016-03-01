//
//  HourlyWeather .swift
//  WeatherApp
//
//  Created by Bronson Dupaix on 2/25/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class HourlyWeather {
    
    var summary: String = ""
    
    var hourlyArray = [HourlyData]()
    
    init() {
        
    }
    
    init(dict: JSONDictionary) {
        
        if let summary = dict["summary"] as? String {
            self.summary = summary
        } else {
            
            print(" no hourly summary") 
        }
        
        
        if let hourlyArray = dict["data"] as? JSONArray {
            
            for hourly in hourlyArray {
                
                let h = HourlyData(dict: hourly)
                
                self.hourlyArray.append(h)
            
            
            }
            
            print(hourlyArray)
            
        } else {
            print("no hourly data") 
        }
    }
}