//
//  RestuarantProfileViewController.swift
//  RestuarantRaider
//
//  Created by Bronson Dupaix on 2/18/16.
//  Copyright © 2016 Bronson Dupaix. All rights reserved.
//

import UIKit

import CoreLocation

import MapKit


class RestuarantProfileViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate   {
    
    var restuarant: Restuarant?
    
    var locationManager = CLLocationManager()
    

 

    @IBOutlet weak var restuarantNameLabel: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var restaurantImage:
    UIImageView!
    
    @IBOutlet weak var restaurantRating: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let longitude = restuarant!.longitude
        
        let latitude = restuarant!.latitude
        
        print(latitude)
        
        print(longitude) 
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        let initialLocation = CLLocation(latitude: latitude, longitude: longitude)
        
        
        
        self.createAnnotation(restuarant!.name, subTitle: restuarant!.address, coordinate: initialLocation.coordinate) 
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
        let photo = self.restuarant!.photo
        
        restuarantNameLabel.text = "\(restuarant!.name)"
        
        
        
        descriptionLabel.text = "\(restuarant!.description)"
        
        
        restaurantImage?.image = UIImage(named: "\(photo)")
        
        restaurantRating?.text = "Our Rating- \(restuarant!.ourRating)"
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "viewMenuSegue" {
            let viewcontroller = segue.destinationViewController as? MenuTableViewController
            
            viewcontroller?.currentRestuarant = self.restuarant
            
            
            }
        
    }
    
    
    @IBAction func viewMenuButton(sender: UIButton) {
        
        
        print("view menu performed Segue") 
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        
        
        print("didChangeAuthStatus")
        
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
                
                let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
                
                self.mapView.setRegion(region, animated: true)
                self.mapView.showsUserLocation = true
                
                print("mapview updated")
                
            }
            
        }
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print(error.localizedDescription)
    }

    
    func createAnnotation(title: String, subTitle: String, coordinate: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.title = title
        annotation.subtitle = subTitle
        annotation.coordinate = coordinate
        
        if self.mapView != nil {
            self.mapView.addAnnotation(annotation)
        }
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        
        let identifier = "MyPinIdentifier"
        
        
        // ensure annotation
        if annotation.isKindOfClass(MKUserLocation) {
            return nil
        }
        
        // Reuse the annotation if possible
        
        var annotationView:MKPinAnnotationView? = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier) as? MKPinAnnotationView
        
        if annotationView == nil {
            
            // pin color
            annotationView?.pinTintColor = UIColor.orangeColor()
            
            // Ensure proper use of identifier
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            
            // show Callout (true/false)
            annotationView?.canShowCallout = true
            
            let leftIconView = UIImageView(frame: CGRectMake(0, 0, 37, 30))
            leftIconView.image = UIImage(named: "apple")
            annotationView?.leftCalloutAccessoryView = leftIconView
            //
            //            // Automatically select the annotation
            //            self.mapView.selectAnnotation(annotation, animated: false)
        }
        
        return annotationView
    }





}
