//
//  TestViewController.swift
//  PracticleUIkit
//
//  Created by Muzammal_09 on 20/08/2024.
//

import UIKit
import SwiftUI

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
    }

    func setupScrollView() {
        // Create the scroll view
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        // Add constraints to the scroll view
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

        // Create the container view
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(containerView)
        
        // Add constraints to the container view
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor) // Ensure container view width is the same as scroll view width
        ])

        // Create a label
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0 // Allows multiline text
        label.textAlignment = .center
        containerView.addSubview(label)

        // Add constraints to the label
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            label.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            label.widthAnchor.constraint(equalTo: containerView.widthAnchor, constant: -20) // Ensure label width matches container view width
        ])
        
        // Create a string with colored views information
//        let colors: [UIColor] = [.red, .green, .blue, .yellow, .orange]
//        let coloredViewsText = colors.enumerated().map { index in
//            let color = colors[index]
//            return "View \(index + 1): \(color.description)"
//        }.joined(separator: "\n")

        // Set the text of the label
        label.text = "If you want to place a UILabel inside the UIScrollView instead of using a UIStackView, you can replace the stack view with a label and adjust the constraints accordingly. Here's how you can modify your setupScrollView method to include a UILabel with five different colored views, each with a fixed height of 200 points, stacked verticallyIf you want to place a UILabel inside the UIScrollView instead of using a UIStackView, you can replace the stack view with a label and adjust the constraints accordingly. Here's how you can modify your setupScrollView method to include a UILabel with five different colored views, each with a fixed height of 200 points, stacked verticallyIf you want to place a UILabel inside the UIScrollView instead of using a UIStackView, you can replace the stack view with a label and adjust the constraints accordingly. Here's how you can modify your setupScrollView method to include a UILabel with five different colored views, each with a fixed height of 200 points, stacked verticallyIf you want to place a UILabel inside the UIScrollView instead of using a UIStackView, you can replace the stack view with a label and adjust the constraints accordingly. Here's how you can modify your setupScrollView method to include a UILabel with five different colored views, each with a fixed height of 200 points, stacked verticallyIf you want to place a UILabel inside the UIScrollView instead of using a UIStackView, you can replace the stack view with a label and adjust the constraints accordingly. Here's how you can modify your setupScrollView method to include a UILabel with five different colored views, each with a fixed height of 200 points, stacked vertically"
    }


}


#Preview(body: {
    TestViewController().toSwiftUI()
})


