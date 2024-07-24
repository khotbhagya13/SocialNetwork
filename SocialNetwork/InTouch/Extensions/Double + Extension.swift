//
//  Double + Extension.swift
//  InTouch
//
//  Created by BK on 2024/06/11.
//

import Foundation

extension Double {
    func rounded(toPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
