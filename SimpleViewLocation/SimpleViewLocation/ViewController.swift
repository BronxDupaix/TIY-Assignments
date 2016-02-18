//
//  ViewController.swift
//  SimpleViewLocation
//
//  Created by Bronson Dupaix on 2/17/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

import CoreLocation

import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate  {

    
    var locationManager = CLLocationManager()
    

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
    }
    
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        
        switch(status) {
        case.NotDetermined: print("I dont know if I have Permission")
        case.AuthorizedWhenInUse: print("Authorized when in use")
        case.AuthorizedAlways: print("Always Authorized")
        case.Denied: print("denied")
        default: print("other Auth")
        }
        
        if status != .Denied{
            manager.requestLocation()
        }
        
        print("Did Change Auth Status")
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.count > 0 {
            let l = locations.first
            
            let coordinate = l?.coordinate
            
            print(coordinate?.latitude)
            print(coordinate?.longitude)
            
            
            if let center = coordinate {
                
                let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
                
                self.mapView.setRegion(region, animated: true)
                self.mapView.showsUserLocation = true
                
                print("mapview updated")
                
            }
            
        }
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print(error.localizedDescription) 
    }
    
}

