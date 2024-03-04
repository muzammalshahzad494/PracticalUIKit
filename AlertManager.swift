//
//  AlertManager.swift
//  PracticeUIKit
//
//  Created by Muzammal Shahzad on 01/02/2024.
//

import UIKit

class AlertManager {
    
    static func showAlert(from viewController: UIViewController, title: String?, message: String, actions: [UIAlertAction]? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if let actions = actions {
            for action in actions {
                alertController.addAction(action)
            }
        } else {
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
        }
        
        viewController.present(alertController, animated: true, completion: nil)
    }
    
}

//func showAlert() {
//    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//    AlertManager.showAlert(from: self, title: "Your Title", message: "Your Message", actions: [okAction])
//}
