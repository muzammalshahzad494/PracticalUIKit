//
//  ConstraintManager.swift
//  PracticleUIkit
//
//  Created by Muzammal_09 on 19/08/2024.
//

import UIKit

class ConstraintManager {
    
    static let shared = ConstraintManager()
    
    private init() {}
    
    // Method to add a view and set constraints
    func addView(_ view: UIView, to superview: UIView, withConstraints constraints: [Constraint]) {
        superview.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            constraints.map { constraint in
                switch constraint {
                case .centerX:
                    return view.centerXAnchor.constraint(equalTo: superview.centerXAnchor)
                case .centerY:
                    return view.centerYAnchor.constraint(equalTo: superview.centerYAnchor)
                case .top(let constant):
                    return view.topAnchor.constraint(equalTo: superview.topAnchor, constant: constant)
                case .bottom(let constant):
                    return view.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: constant)
                case .leading(let constant):
                    return view.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: constant)
                case .trailing(let constant):
                    return view.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: constant)
                case .width(let constant):
                    return view.widthAnchor.constraint(equalToConstant: constant)
                case .height(let constant):
                    return view.heightAnchor.constraint(equalToConstant: constant)
                }
            }
        )
    }
    
    // Enum for constraints
    enum Constraint {
        case centerX
        case centerY
        case top(CGFloat)
        case bottom(CGFloat)
        case leading(CGFloat)
        case trailing(CGFloat)
        case height(CGFloat)
        case width(CGFloat)
    }
}

