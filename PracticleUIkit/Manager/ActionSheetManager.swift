//
//  ActionSheetManager.swift
//  PracticeUIKit
//
//  Created by Muzammal Shahzad on 01/02/2024.
//

import UIKit


class ActionSheetManager {
    static func presentActionSheet(from viewController: UIViewController, indexPath: IndexPath, updateHandler: (() -> Void)?, deleteHandler: (() -> Void)?, presentHandler: (() -> Void)?) {

        
        let actionSheet = UIAlertController(title: "Action Sheet", message: "You can make changes here", preferredStyle: .actionSheet)
        
        let updateAction = UIAlertAction(title: "Update", style: .default) { _ in
            updateHandler?()
        }
        
        let deleteAction = UIAlertAction(title: "Delete", style: .default) { _ in
            deleteHandler?()
        }
        
        let readAction = UIAlertAction(title: "Present", style: .default) { _ in
            presentHandler?()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        actionSheet.addAction(updateAction)
        actionSheet.addAction(deleteAction)
        actionSheet.addAction(readAction)
        actionSheet.addAction(cancelAction)
        
        viewController.present(actionSheet, animated: true)
    }
}





