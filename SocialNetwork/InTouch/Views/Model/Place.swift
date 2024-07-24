//
//  Place.swift
//  InTouch
//
//  Created by BK on 2024/06/12.
//

import Foundation
import GoogleMaps
import GooglePlaces

struct Place {
    let name: String
    let identifier: String
    let address: String
    var coordinate: CLLocationCoordinate2D?
}
