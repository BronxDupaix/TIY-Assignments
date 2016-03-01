//
//  APIWeather.swift
//  WeatherApp
//
//  Created by Bronson Dupaix on 2/25/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import Foundation

protocol LocationRetrieveProtocol {
    
    func retrieveLatitude(passedLatitude: Double)
    
    func retrieveLongitude(passedLongitude: Double)
}


class ApiWeather {
    
    var delegate: WeatherRetreiveProtocol? 
    

    func fetchWeather(latitude: Double, longitude: Double) {

        
        
        let urlString = "https://api.forecast.io/forecast/bfffaf00b74c2b8145fa338bd5101a4b/\(latitude),\(longitude)" 
        
        
        if let url = NSURL(string: urlString)
        {
            
            let session = NSURLSession.sharedSession()
            
            let task = session.dataTaskWithURL(url, completionHandler: {
                
                (data, response, error) -> () in
                
                if error != nil {
                    debugPrint("an error occured \(error)")
                }else {
                    
                    
                    // print(data)
                    
                    if let data = data {
                        
                        do {
                            
                            if let dictionary = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? JSONDictionary {
                                
                                //print(dictionary)
                                
                                var weatherArray = [Weather]()
                                
                                let weather = Weather(dict: dictionary)
                                
                                let current = weather.currently 
                                
                                weatherArray.append(weather)
                                
                               
                                self.delegate?.passWeather(weatherArray) 
                                
                                
                            } else {
                                debugPrint("cant parse dictionary")
                            }
                            
                        } catch {
                            
                            debugPrint("cant parse JSON")
                            
                        }
                    }
                }
                
            })
            
            task.resume()
            
        } else {
            debugPrint("cant print data")
        }
        
    }
    
    
}