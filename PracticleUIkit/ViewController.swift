//
//  ViewController.swift
//  PracticleUIkit
//
//  Created by Muzammal_09 on 19/08/2024.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //ScrollView
        let scrollView = UIComponents.createScrollView()
        scrollView.backgroundColor = .green
        
        
        //containerView
        let containerView = UIComponents.createView(backgroundColor: .gray)
        containerView.cornerRadius = 20
        
        
        //stackView
        let stackView = UIComponents.createStackView(axis: .vertical, spacing: 10)
        stackView.backgroundColor = .red
        stackView.distribution = .fillEqually
        stackView.cornerRadius = 20
        
        
        //Lable
        let label1 = UIComponents.createLabel(text: "Hello, sample world!", textColor: .black, fontSize: 18)
        label1.textAlignment = .center
        stackView.addArrangedSubview(label1)
        
        (1...5).forEach { _ in
            let label = UIComponents.createLabel(text: "Hello, this world!", textColor: .black, fontSize: 18)
            label.textAlignment = .center
            stackView.addArrangedSubview(label)
        }
        
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(stackView)
        
        ConstraintManager.shared.addView(scrollView, to: view, withConstraints: [
            .leading(0),
            .trailing(0),
            .top(0),
            .bottom(0),
//            .centerX,
//            .centerY
        ])
        
        ConstraintManager.shared.addView(containerView, to: scrollView, withConstraints: [
            .leading(20),
            .trailing(-20),
            .top(20),
            .height(1000),
            .width(400),
            .bottom(20),
            .centerX,
            .centerY
        ])
        
        ConstraintManager.shared.addView(stackView, to: containerView, withConstraints: [
            .leading(20),
            .trailing(-20),
            .top(20),
            .bottom(-20),
            .centerX,
            .centerY
        ])
        
    }
    
}

//
//#Preview(body: {
//    ViewController().toSwiftUI()
//})

