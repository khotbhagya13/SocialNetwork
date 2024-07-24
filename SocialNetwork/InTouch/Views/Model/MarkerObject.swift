//
//  MarkerObject.swift
//  InTouch
//
//  Created by BK on 2024/06/12.
//

import CoreLocation
import Foundation
import UIKit

struct Marker {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var markerTintColor: UIColor?
    var imageBlock: ImageBlock?
}
