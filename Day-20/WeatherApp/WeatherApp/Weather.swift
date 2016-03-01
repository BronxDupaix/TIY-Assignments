//
//  Weather.swift
//  WeatherApp
//
//  Created by Bronson Dupaix on 2/25/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation


typealias JSONDictionary = [String: AnyObject]
typealias JSONArray = [JSONDictionary]

class Weather {
    
    var latitude: Double = 0.00
    
    var longitude: Double = 0.00
    
    var timezone: String = ""
    
    var offset: Int = 0
    
    var currently = CurrentWeather() 
    
    var hourly = HourlyWeather()
    
    var daily = DailyWeather()
    
    init(){
        
    }
    
    init(dict: JSONDictionary) {
        
        if let latitude =  dict["latitude"] as? Double {
            self.latitude = latitude
        } else {
            print("no latitude") 
        }
        
        if let longitude = dict["longitude"] as? Double {
            self.longitude = longitude
        } else {
            print("no longitude")
        }
        
        if let timezone = dict["timezone"] as? String {
            
            self.timezone = timezone
        } else {
            print("no timezone")
        }
        
        if let offset = dict["offset"] as? Int{
            
            self.offset = offset
        } else {
            print("no offset")
        }
        
        if let currently = dict["currently"] as? JSONDictionary { 
            
            // print(currently)
            
            self.currently = CurrentWeather(dict: currently)
            
        } else {
            print("no currently")
        }
        
        if let hourly = dict["hourly"] as? JSONDictionary {
            
            // print(hourly)
            
           // self.hourly = HourlyWeather(dict: hourly)
            
        } else {
            
            
            print("no hourly") 
        }
        
        if let daily = dict["daily"] as?  JSONDictionary{
            
           // print(daily) 
            
            print("n/--------------daily n/n")
            //self.daily = DailyWeather(dict: daily)
            
        } else {
            print("no daily weather")
        }
    }
    
    
}