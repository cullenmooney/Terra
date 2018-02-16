//
//  MapController.swift
//  Terra
//
//  Created by Cullen Mooney on 2/15/18.
//  Copyright © 2018 Cullen Mooney. All rights reserved.
//

import UIKit
import Mapbox

class MapController: UIViewController, MGLMapViewDelegate {
    
    @IBOutlet weak var mapViewContainer: UIView!
    @IBOutlet weak var annotationContext: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "mapbox://styles/mapbox/streets-v10")
        let mapView = MGLMapView(frame: mapViewContainer.bounds, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        mapView.setCenter(CLLocationCoordinate2D(latitude: 41.8837, longitude: -87.6289), zoomLevel: 9, animated: false)
        
        mapView.delegate = self
        mapViewContainer.addSubview(mapView)
        
        annotationContext.isHidden = true
        
        // Allow the map view to display the user's location
        mapView.showsUserLocation = true
        
        
    }
    
    func mapViewDidFinishLoadingMap(_ mapView: MGLMapView) {
        
        // Defining an example marker
        let wrigleyBuilding = MGLPointAnnotation()
        wrigleyBuilding.coordinate = CLLocationCoordinate2D(latitude: 41.8897551, longitude: -87.6247747 )
        // wrigleyBuilding.title = "Wrigley Building"
        // wrigleyBuilding.subtitle = "400 N. Michigan Ave., Chicago, IL 60611"
        
        // adding the marker to the map
        mapView.addAnnotation(wrigleyBuilding)
        
        annotationContext.isHidden = true
    }
    
    // Use the default marker. See also: our view annotation or custom marker examples.
    func mapView(_ mapView: MGLMapView, viewFor annotation: MGLAnnotation) -> MGLAnnotationView? {
        return nil
    }
    
    // Zooming into annotation
    func mapView(_ mapView: MGLMapView, didSelect wrigleyBuilding: MGLAnnotation) {
        let camera = MGLMapCamera(lookingAtCenter: wrigleyBuilding.coordinate, fromDistance: 4000, pitch: 0, heading: 0)
        mapView.setCamera(camera, animated: true)
    
        
        annotationContext.layer.cornerRadius = 5
        annotationContext.isHidden = false
    }

}
