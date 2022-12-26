//
//  Landmark.swift
//  Landmark_Ex
//
//  Created by runnysun on 2022/11/10.
//

import SwiftUI
import CoreLocation


//    "name": "Turtle Rock",
//    "category": "Rivers",
//    "city": "Twentynine Palms",
//    "state": "California",
//    "id": 1001,
//    "isFeatured": true,
//    "isFavorite": true,
//    "park": "Joshua Tree National Park",
//    "coordinates": {
//        "longitude": -116.166868,
//        "latitude": 34.011286
//    },
//    "description
struct Landmark: Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    private var coordinates: Coordinate
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude,
                               longitude: coordinates.longitude)
    }
   
    struct Coordinate: Codable {
        var longitude: Double
        var latitude: Double
    }

}

