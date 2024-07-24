//
//  UITextField + Extension.swift
//  InTouch
//
//  Created by BK on 2024/06/12.
//

import UIKit

extension UITextField {
    func addPadding(left: CGFloat, right: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: frame.size.height))
        leftView = paddingView
        leftViewMode = .always

        let paddingViewRight = UIView(frame: CGRect(x: 0, y: 0, width: right, height: frame.size.height))
        rightView = paddingViewRight
        rightViewMode = .always
    }
}
