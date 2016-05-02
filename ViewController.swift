//
//  ViewController.swift
//  test.mapbox
//
//  Created by Francisco Vaquero C on 29/04/16.
//  Copyright © 2016 Francisco Vaquero C. All rights reserved.
//

import UIKit
import Mapbox
import CoreLocation
//import MapboxDirections

class ViewController: UIViewController {
    @IBOutlet var mapView: MGLMapView!
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let point = MGLPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 19.3316503, longitude: -99.1335038)
        point.title = "Hola que tal Mapbox"
        point.subtitle = "Vamos a romperla con esta aplicaicon mas que national geographic"
       
        mapView.userLocation?.title = "Estas Aqui"
        
        mapView.centerCoordinate = CLLocationCoordinate2D(latitude: 19.3316503, longitude: -99.1335038)
        mapView.setUserTrackingMode(MGLUserTrackingMode.FollowWithHeading, animated: true)
        mapView.addAnnotation(point)
        
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool{
        return true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

