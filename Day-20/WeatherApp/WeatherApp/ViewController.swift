//
//  ViewController.swift
//  WeatherApp
//
//  Created by Bronson Dupaix on 2/25/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//


import UIKit

import CoreLocation

protocol WeatherRetreiveProtocol {
    
    func passWeather(weatherArray: [Weather]) 
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, WeatherRetreiveProtocol, UITextFieldDelegate { 
    
    
    var delegate: LocationRetrieveProtocol? 
    
    @IBOutlet weak var addCityOrZipTextField: UITextField!
    
    var Api = ApiWeather() 
    
    var weatherArray = [Weather]()
    
    var cityArray = [City]()
    
    var currentCity: City? 

    @IBOutlet weak var weatherTableView: UITableView! 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Api.delegate = self
        
        Api.fetchWeather(40.758478 , longitude: -111.888142)
        
    } // view did load - end
    
    @IBAction func addCityButton(sender: UIBarButtonItem) {
        
        let city = City()
        
        city.cityName = addCityOrZipTextField.text!
        
        self.cityArray.append(city)
        
        geocoding("\(addCityOrZipTextField.text)") {
            
            (latitude: Double, longitude: Double) in
            
            
            print(latitude)
            let lat: Double = latitude
            
            print(longitude)
            
            let long: Double = longitude 
            
            self.Api.fetchWeather(lat ,longitude:  long)
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let weather = self.weatherArray[indexPath.row]
        
        let city = self.addCityOrZipTextField.text
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cityWeatherCell") as? WeatherTableViewCell
        
        let current = weather.currently
        
        cell?.tempLabel.text = "\(current.temperature)˚"
        
        cell?.latitudeLabel.text = "\(city!)"
        
        cell?.weatherTypeImage.image = UIImage(named: "clear-day")
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    func passWeather(weatherArray: [Weather]) {
        
        self.weatherArray = weatherArray 
        
        print("current count-\(weatherArray.count)")
        
        dispatch_async(dispatch_get_main_queue(), {
            
            self.weatherTableView.reloadData()
        })
    } 
    
    func geocoding(location: String, completion: (Double, Double) -> ()) {
        CLGeocoder().geocodeAddressString(location) { (placemarks, error) in
            if placemarks?.count > 0 {
                let placemark = placemarks?[0]
                let location = placemark!.location
                let coordinate = location?.coordinate
                completion((coordinate?.latitude)!, (coordinate?.longitude)!)
            }
        }
    }
    
    
} // view - end

