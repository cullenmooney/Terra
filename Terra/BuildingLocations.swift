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
    var addressTwo: String
    var architect: String
    var year: String
    var image: UIImage
    var design: String
    init(_ latitude:CLLocationDegrees,_ longitude:CLLocationDegrees,name:String,address:String,addressTwo:String,architect:String,year:String,image:UIImage,design:String) {
        self.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        self.name = name
        self.address = address
        self.addressTwo = addressTwo
        self.architect = architect
        self.year = year
        self.image = image
        self.design = design
    }
}

class BuildingAnnotations: NSObject {
    var buildings: [BuildingAnnotation]
    
    override init() {
        buildings = [BuildingAnnotation(41.889707,-87.624861, name: "Wrigley Building", address: "400-410 N. Michigan Ave.", addressTwo: "Chicago, IL 60611", architect: "Graham, Anderson, Probst & White", year: "1924", image: #imageLiteral(resourceName: "wrigley"), design: "With its triparite base and cathedral tower, the Wrigley Building reflects European classical tradition. Most of the building is covered with terra-cotta tiles glazed in white, which are magnificently lit at night; because the tiles are graded from off-white to bluish, the building appears to grow brighter as the eye moves up the tower. Construction of the southern building was completed before the northern lot was bought, but the buildings complement each other in design and style.")]
        buildings += [BuildingAnnotation(41.88393,-87.630202, name: "Daley Center", address: "50 W. Washington St.", addressTwo: "Chicago, IL 60602", architect: "C.F. Murphy Associates", year: "1964", image: #imageLiteral(resourceName: "daleycenter"), design: "Made of Cor-Ten, a self-weathering steel developed around 1930, the Richard J. Daley Center houses 120 courtrooms, a library, and offices. Like the buildings designed by Ludwig Mies van der Rohe, the Daley Center's exterior exposes its internal structure. Built from trusses, each structural bay is 87 feet long and about 48 feet wide, creating 31 stories at a height of 650 feet. A Cor-Ten sculpture designed by Pablo Picasso is exhibited in the plaza on the south side of the building.")]
        buildings += [BuildingAnnotation(41.948038,-87.65568, name: "Wrigley Field", address: "1600 W. Addison St.", addressTwo: "Chicago, IL 60613", architect: "Zachary Taylor Davis", year: "1914", image: #imageLiteral(resourceName: "wrigleyfield"), design: "The oldest surviving National League ballpark and the hoe to the Chicago Cubs professional baseball team, Wrigley Field is one of the few remaining ballparks built in baseball's 'golden age,' 1910-1925. During that period, permanent materials such as steel, brick, and concrete were used, as well as post-and-beam construction, which allowed fans to be closer to the field. Zachary Taylor Davis also designed Chicago's original Comiskey Park (home to the White Sox), which has since been demolished. Wrigley Field's nickname, 'the friendly confines,' originates in part from its ivy-covered walls and hand-operated scoreboard. In its urban setting, surrounded by homes where fans gather on rooftops to watch their team, it feels like an old-time ballpark.")]
        buildings += [BuildingAnnotation(41.887986,-87.628761, name: "Marina City", address: "300 N. State St.", addressTwo: "Chicago, IL 60654", architect: "Bertrand Goldberg Associates", year: "1967", image: #imageLiteral(resourceName: "marina"), design: "Resembling two corncobs standing on end, the Marina City towers created quite a stir with their innovative 'city within a city' design concepts. The building included everything a city dweller needed: shopping, entertainment (theater, restaurants, art gallery, bowling alley, skating rink, swimming pool, and exercise club), a marina, and office and residential spaces, including a spiral parking garage. Constructed from the core outward, the 60-story cast concrete towers were successful from the beginning. Pie-shaped apartments above the 18-story parking garage provide a panoramic view of the city.")]
        buildings += [BuildingAnnotation(41.866110,-87.616940, name: "The Field Museum", address: "1400 S. Lake Shore Dr.", addressTwo: "Chicago, IL 60605", architect: "Burnham & Company", year: "1920", image: #imageLiteral(resourceName: "field"), design: "The museum's white marble exterior was inspired by classical greek temples. Its grand neoclassical central hall, surrounded by Ionic columns, is filled with equally grand artifacts including elephants, dinosaurs, and totem poles. In 1976, the landmark building was placed in the National Register of Historic Places. The Field Museum is part of the Grant Park Museum Complex along the shores of Lake Michigan, called by historian Carl Condit 'architecturally the most impressive 'cultural center' in the United States.'")]
    }
}
