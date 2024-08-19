//
//  NavigationUtils.swift
//  PracticeUIKit
//
//  Created by Muzammal Shahzad on 01/02/2024.
//

import UIKit


class NavigationUtils {
    static func pushToViewController(from viewController: UIViewController, withIdentifier identifier: String, animated: Bool = true, configuration: ((UIViewController) -> Void)? = nil) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let destinationViewController = storyBoard.instantiateViewController(withIdentifier: identifier)
        configuration?(destinationViewController)
        viewController.navigationController?.pushViewController(destinationViewController, animated: animated)
    }
}
