//
//  Person.swift
//  OfO
//
//  Created by Tang Chenyu on 2022/7/6.
//

import SwiftUI
import CoreLocation

struct Person: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var updateTime: String
    
    fileprivate var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
