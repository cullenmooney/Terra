//
//  MapController.swift
//  Terra
//
//  Created by Cullen Mooney on 2/15/18.
//  Copyright © 2018 Cullen Mooney. All rights reserved.
//

import UIKit
import Mapbox

class MapController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "mapbox://styles/mapbox/streets-v10")
        let mapView = MGLMapView(frame: view.bounds, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude: 41.8837, longitude: -87.6289), zoomLevel: 12, animated: false)
        view.addSubview(mapView)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
