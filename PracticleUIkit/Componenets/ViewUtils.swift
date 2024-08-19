//
//  ViewExtension.swift
//  PracticleUIkit
//
//  Created by Muzammal_09 on 19/08/2024.
//

import UIKit

extension UIView {
    
    // Computed property to get or set the corner radius
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    // Computed property to get or set the border width
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    // Computed property to get or set the border color
    var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor ?? UIColor.clear.cgColor)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
