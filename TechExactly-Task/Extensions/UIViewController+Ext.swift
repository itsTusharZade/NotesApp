//
//  UIViewController+Ext.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 28/02/24.
//

import UIKit

extension UIViewController{
    func deleteAlert(title: String, message: String, withCompletionHandler completionHandler: @escaping ((_ success: Bool) -> Void)) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let deleteAction = UIAlertAction(title: "Delete", style: UIAlertAction.Style.destructive, handler: {
            (_)in
            completionHandler(true)
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: {
            (_)in
           
        })
        alert.addAction(deleteAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
}
