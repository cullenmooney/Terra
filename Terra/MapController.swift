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
    @IBOutlet weak var buildingName: UILabel!
    @IBOutlet weak var buildingAddress: UILabel!
    @IBOutlet weak var buildingArchitect: UILabel!
    @IBOutlet weak var buildingYear: UILabel!
    @IBOutlet weak var buildingImage: UIImageView!
    
    var mapView: MGLMapView!
    
    
    let buildingAnnotations = BuildingAnnotations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "mapbox://styles/mapbox/streets-v10")
        mapView = MGLMapView(frame: mapViewContainer.bounds, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        mapView.setCenter(CLLocationCoordinate2D(latitude: 41.8837, longitude: -87.6289), zoomLevel: 9, animated: false)
        
        mapView.delegate = self
        mapViewContainer.addSubview(mapView)
        
        
        // Allow the map view to display the user's location
        mapView.showsUserLocation = true
        
       setupAnnotationContextView()
    }

    
    func mapViewDidFinishLoadingMap(_ mapView: MGLMapView) {

        // Defining an example marker
        let wrigleyBuilding = MGLPointAnnotation()
        wrigleyBuilding.coordinate = CLLocationCoordinate2D(latitude: 41.8897551, longitude: -87.6247747 )

        // adding the marker to the map
        mapView.addAnnotations(buildingAnnotations.buildings)
    }
    
    

    // Use the default marker. See also: our view annotation or custom marker examples.
    func mapView(_ mapView: MGLMapView, viewFor annotation: MGLAnnotation) -> MGLAnnotationView? {
        return nil
    }

    // Zooming into annotation
    func mapView(_ mapView: MGLMapView, didSelect buildings: MGLAnnotation) {
        let camera = MGLMapCamera(lookingAtCenter: buildings.coordinate, fromDistance: 4000, pitch: 0, heading: 0)
        mapView.setCamera(camera, animated: true)
        annotationContext.layer.cornerRadius = 5
        annotationContext.alpha = 1.0

//        buildingName.text = buildings.name
//        buildingAddress.text = buildings.address

    }

    func setupAnnotationContextView() {
        annotationContext.alpha = 0
        let blurView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        blurView.frame = annotationContext.bounds
        blurView.layer.cornerRadius = 5
        blurView.clipsToBounds = true
        blurView.translatesAutoresizingMaskIntoConstraints = false
        annotationContext.insertSubview(blurView, at: 0)
    }
}

