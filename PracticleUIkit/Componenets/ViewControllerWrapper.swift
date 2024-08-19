//
//  ViewControllerWrapper.swift
//  PracticleUIkit
//
//  Created by Muzammal_09 on 19/08/2024.
//

import SwiftUI

extension UIViewController {
    func toSwiftUI() -> some View {
        UIViewControllerPreview(viewController: self)
    }
}

struct UIViewControllerPreview: UIViewControllerRepresentable {
    let viewController: UIViewController
    
    func makeUIViewController(context: Context) -> UIViewController {
        viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

