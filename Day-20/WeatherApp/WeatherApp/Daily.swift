//
//  Daily.swift
//  WeatherApp
//
//  Created by Bronson Dupaix on 2/25/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

class DailyWeather {
    
    var summary: String = ""

    
    var dailyArray = [DailyData]()
    
    init() {
        
    }
    
    init(dict: JSONDictionary) {
        
        if let summary = dict["summary"] as? String {
            self.summary = summary
        } else {
            print(" no daily summary")
        }
        
        if let dailyData = dict["data"] as? JSONArray{
            
            for daily in dailyData {
                
                let d = DailyData(dict: daily)
                
                
                self.dailyArray.append(d)
            }
            print(" daily data")
        } else {
            print("no daily data") 
        }
    }
}