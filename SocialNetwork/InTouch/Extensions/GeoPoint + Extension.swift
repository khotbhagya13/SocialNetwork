//
//  GeoPoint + Extension.swift
//  InTouch
//
//  Created by BK on 2024/06/16.
//

import CoreLocation
import FirebaseFirestore
import Foundation

extension GeoPoint {
    func toCLLocationCoordinate2D() -> CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
