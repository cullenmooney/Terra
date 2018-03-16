//
//  BuildingLocations.swift
//  Terra
//
//  Created by Cullen Mooney on 2/25/18.
//  Copyright © 2018 Cullen Mooney. All rights reserved.
//

import Foundation
import Mapbox

class BuildingAnnotation:NSObject,MGLAnnotation{
    var coordinate: CLLocationCoordinate2D
    var name: String
    var address: String
    var architect: String
    var year: String
    var image: UIImage
    init(_ latitude:CLLocationDegrees,_ longitude:CLLocationDegrees,name:String,address:String,architect:String,year:String,image:UIImage) {
        self.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        self.name = name
        self.address = address
        self.architect = architect
        self.year = year
        self.image = image
    }
}

class BuildingAnnotations: NSObject {
    var buildings: [BuildingAnnotation]
    
    override init() {
        buildings = [BuildingAnnotation(41.889707,-87.624861, name: "Wrigley Building", address: "400-410 N. Michigan Ave., Chicago, IL 60611", architect: "Graham, Anderson, Probst & White", year: "1924", image: #imageLiteral(resourceName: "wrigley"))]
        buildings += [BuildingAnnotation(41.8866,-87.6249, name: "Carbide & Carbon Building", address: "230 N. Michigan Ave., Chicago, IL 60601", architect: "Burnham Brothers", year: "1929", image: #imageLiteral(resourceName: "carbide"))]
        buildings += [BuildingAnnotation(41.881826,-87.628151, name: "Chicago Building", address: "7 W. Madison St., Chicago, IL 60602", architect: "Holabird & Roche", year: "1905", image: #imageLiteral(resourceName: "chicago"))]
    }
}
