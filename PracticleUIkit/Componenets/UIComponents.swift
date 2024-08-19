//
//  CustomUIComponents.swift
//  PracticleUIkit
//
//  Created by Muzammal_09 on 19/08/2024.
//

import UIKit

class UIComponents {
    
    // UILabel - Displays static text
    static func createLabel(text: String, textColor: UIColor, fontSize: CGFloat) -> UILabel {
        let label: UILabel = {
            let label = UILabel()
            label.text = text
            label.textColor = textColor
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: fontSize)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        return label
    }
    
    // UIButton - A tappable button
    static func createButton(title: String, backgroundColor: UIColor) -> UIButton {
        let button: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle(title, for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = backgroundColor
            button.layer.cornerRadius = 8
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        return button
    }
    
    // UITextField - A single-line text input field
    static func createTextField(placeholder: String) -> UITextField {
        let textField: UITextField = {
            let textField = UITextField()
            textField.placeholder = placeholder
            textField.borderStyle = .roundedRect
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        }()
        return textField
    }
    
    // UITextView - A multi-line text input field
    static func createTextView(text: String) -> UITextView {
        let textView: UITextView = {
            let textView = UITextView()
            textView.text = text
            textView.font = UIFont.systemFont(ofSize: 18)
            textView.layer.borderColor = UIColor.gray.cgColor
            textView.layer.borderWidth = 1.0
            textView.layer.cornerRadius = 8
            textView.translatesAutoresizingMaskIntoConstraints = false
            return textView
        }()
        return textView
    }
    
    // UISwitch - A toggle switch control
    static func createSwitch(isOn: Bool) -> UISwitch {
        let switchControl: UISwitch = {
            let switchControl = UISwitch()
            switchControl.isOn = isOn
            switchControl.translatesAutoresizingMaskIntoConstraints = false
            return switchControl
        }()
        return switchControl
    }
    
    // UISlider - A horizontal slider to select a value
    static func createSlider(minValue: Float, maxValue: Float, currentValue: Float) -> UISlider {
        let slider: UISlider = {
            let slider = UISlider()
            slider.minimumValue = minValue
            slider.maximumValue = maxValue
            slider.value = currentValue
            slider.translatesAutoresizingMaskIntoConstraints = false
            return slider
        }()
        return slider
    }
    
    // UISegmentedControl - A segmented control to select between a set of options
    static func createSegmentedControl(items: [String]) -> UISegmentedControl {
        let segmentedControl: UISegmentedControl = {
            let segmentedControl = UISegmentedControl(items: items)
            segmentedControl.selectedSegmentIndex = 0
            segmentedControl.translatesAutoresizingMaskIntoConstraints = false
            return segmentedControl
        }()
        return segmentedControl
    }
    
    // UIActivityIndicatorView - An indicator that shows a loading process
    static func createActivityIndicator(style: UIActivityIndicatorView.Style) -> UIActivityIndicatorView {
        let activityIndicator: UIActivityIndicatorView = {
            let activityIndicator = UIActivityIndicatorView(style: style)
            activityIndicator.translatesAutoresizingMaskIntoConstraints = false
            return activityIndicator
        }()
        return activityIndicator
    }
    
    // UIProgressView - A horizontal bar that shows progress
    static func createProgressView(progress: Float) -> UIProgressView {
        let progressView: UIProgressView = {
            let progressView = UIProgressView(progressViewStyle: .default)
            progressView.progress = progress
            progressView.translatesAutoresizingMaskIntoConstraints = false
            return progressView
        }()
        return progressView
    }
    
    // UIStepper - A control for incrementing or decrementing a value
    static func createStepper(minValue: Double, maxValue: Double, stepValue: Double) -> UIStepper {
        let stepper: UIStepper = {
            let stepper = UIStepper()
            stepper.minimumValue = minValue
            stepper.maximumValue = maxValue
            stepper.stepValue = stepValue
            stepper.translatesAutoresizingMaskIntoConstraints = false
            return stepper
        }()
        return stepper
    }
    
    // UIDatePicker - A control for selecting dates and times
    static func createDatePicker(mode: UIDatePicker.Mode) -> UIDatePicker {
        let datePicker: UIDatePicker = {
            let datePicker = UIDatePicker()
            datePicker.datePickerMode = mode
            datePicker.translatesAutoresizingMaskIntoConstraints = false
            return datePicker
        }()
        return datePicker
    }
    
    // UIPickerView - A control for selecting values from multiple components
    static func createPickerView() -> UIPickerView {
        let pickerView: UIPickerView = {
            let pickerView = UIPickerView()
            pickerView.translatesAutoresizingMaskIntoConstraints = false
            return pickerView
        }()
        return pickerView
    }
    
    // UIPageControl - Indicates the number of pages and the current page
    static func createPageControl(numberOfPages: Int) -> UIPageControl {
        let pageControl: UIPageControl = {
            let pageControl = UIPageControl()
            pageControl.numberOfPages = numberOfPages
            pageControl.currentPage = 0
            pageControl.translatesAutoresizingMaskIntoConstraints = false
            return pageControl
        }()
        return pageControl
    }
    
    // UIStackView - A view for arranging subviews in a horizontal or vertical stack
    static func createStackView(axis: NSLayoutConstraint.Axis, spacing: CGFloat) -> UIStackView {
        let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = axis
            stackView.spacing = spacing
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
        return stackView
    }
    
    
    // Method to create a UIView
    static func createView(backgroundColor: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    // Method to create a UIScrollView
    static func createScrollView() -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }
    
    // Method to create a UITableView
    static func createTableView() -> UITableView {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }
    
    // Method to create a UICollectionView
    static func createCollectionView(itemSize: CGSize) -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = itemSize
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }
    
    // Method to create a UIAlertController
    static func createAlertController(title: String, message: String, actionTitle: String, actionHandler: (() -> Void)?) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: actionTitle, style: .default) { _ in
            actionHandler?()
        }
        alertController.addAction(action)
        return alertController
    }
    
    // Method to create a UINavigationBar
    static func createNavigationBar(title: String) -> UINavigationBar {
        let navigationBar = UINavigationBar()
        let navigationItem = UINavigationItem(title: title)
        navigationBar.setItems([navigationItem], animated: false)
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        return navigationBar
    }
    
    // Method to create a UIToolbar
    static func createToolbar(items: [UIBarButtonItem]) -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.setItems(items, animated: false)
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        return toolbar
    }
    
    // Method to create a UITabBar
    static func createTabBar(items: [UITabBarItem]) -> UITabBar {
        let tabBar = UITabBar()
        tabBar.setItems(items, animated: false)
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        return tabBar
    }
    
    
    
    //MARK: - Gestures
    // Method to create a UITapGestureRecognizer
    static func createTapGestureRecognizer(target: Any?, action: Selector?, tapsRequired: Int = 1) -> UITapGestureRecognizer {
        let tapGestureRecognizer = UITapGestureRecognizer(target: target, action: action)
        tapGestureRecognizer.numberOfTapsRequired = tapsRequired
        return tapGestureRecognizer
    }
    
    // Method to create a UIPinchGestureRecognizer
    static func createPinchGestureRecognizer(target: Any?, action: Selector?) -> UIPinchGestureRecognizer {
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: target, action: action)
        return pinchGestureRecognizer
    }
    
    // Method to create a UIPanGestureRecognizer
    static func createPanGestureRecognizer(target: Any?, action: Selector?) -> UIPanGestureRecognizer {
        let panGestureRecognizer = UIPanGestureRecognizer(target: target, action: action)
        return panGestureRecognizer
    }
    
    // Method to create a UISwipeGestureRecognizer
    static func createSwipeGestureRecognizer(target: Any?, action: Selector?, direction: UISwipeGestureRecognizer.Direction) -> UISwipeGestureRecognizer {
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: target, action: action)
        swipeGestureRecognizer.direction = direction
        return swipeGestureRecognizer
    }
    
    // Method to create a UIRotationGestureRecognizer
    static func createRotationGestureRecognizer(target: Any?, action: Selector?) -> UIRotationGestureRecognizer {
        let rotationGestureRecognizer = UIRotationGestureRecognizer(target: target, action: action)
        return rotationGestureRecognizer
    }
    
    // Method to create a UILongPressGestureRecognizer
    static func createLongPressGestureRecognizer(target: Any?, action: Selector?, minimumPressDuration: TimeInterval = 0.5) -> UILongPressGestureRecognizer {
        let longPressGestureRecognizer = UILongPressGestureRecognizer(target: target, action: action)
        longPressGestureRecognizer.minimumPressDuration = minimumPressDuration
        return longPressGestureRecognizer
    }
    
    
    
    
    // MARK: - UINavigationBar
    static func createNavigationBar(withTitle title: String) -> UINavigationBar {
        let navigationBar = UINavigationBar()
        let navigationItem = UINavigationItem(title: title)
        navigationBar.setItems([navigationItem], animated: false)
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        return navigationBar
    }
    
    // MARK: - UITabBar
    static func createTabBar(withItems items: [UITabBarItem]) -> UITabBar {
        let tabBar = UITabBar()
        tabBar.setItems(items, animated: false)
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        return tabBar
    }
    
    // MARK: - UIToolbar
    static func createToolbar(withItems items: [UIBarButtonItem]) -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.setItems(items, animated: false)
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        return toolbar
    }
    
    // MARK: - UISearchBar
    static func createSearchBar(placeholder: String) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.placeholder = placeholder
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }
    
    // MARK: - UIStatusBar (Note: UIStatusBar is managed by the system and not directly modifiable)
    static func configureStatusBar(style: UIStatusBarStyle) {
        if let viewController = UIApplication.shared.windows.first?.rootViewController {
            viewController.setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    // MARK: - UITabBarItem
    static func createTabBarItem(title: String, image: UIImage?, tag: Int) -> UITabBarItem {
        let tabBarItem = UITabBarItem(title: title, image: image, tag: tag)
        return tabBarItem
    }
    
    // Method to create a UIControl
    static func createControl() -> UIControl {
        let control: UIControl = {
            let control = UIControl()
            control.backgroundColor = .lightGray
            control.translatesAutoresizingMaskIntoConstraints = false
            return control
        }()
        return control
    }
    
    
    //MARK: - UINavigationController
    // Method to create a UINavigationController
    static func createNavigationController(rootViewController: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        return navigationController
    }
    
    // Method to create a UITabBarController
    static func createTabBarController(viewControllers: [UIViewController]) -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = viewControllers
        return tabBarController
    }
    
    // Method to create a UISplitViewController
    static func createSplitViewController(masterViewController: UIViewController, detailViewController: UIViewController) -> UISplitViewController {
        let splitViewController = UISplitViewController()
        splitViewController.viewControllers = [masterViewController, detailViewController]
        return splitViewController
    }
    
    // Method to get a UIModalPresentationStyle
    static func getModalPresentationStyle(style: UIModalPresentationStyle) -> UIModalPresentationStyle {
        return style
    }
    
    
    // Method to create a UIViewController
    static func createViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .white
        return viewController
    }
    
    // Method to create an UIAlertController
    static func createAlertController(title: String, message: String, preferredStyle: UIAlertController.Style, actions: [UIAlertAction]) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        actions.forEach { alertController.addAction($0) }
        return alertController
    }
    
    // Method to create a UIRefreshControl
    static func createRefreshControl(target: Any, action: Selector) -> UIRefreshControl {
        let refreshControl: UIRefreshControl = {
            let refreshControl = UIRefreshControl()
            refreshControl.addTarget(target, action: action, for: .valueChanged)
            return refreshControl
        }()
        return refreshControl
    }
    
}
