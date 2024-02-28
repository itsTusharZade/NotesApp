//
//  AppStoryboard.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 27/02/24.
//

import UIKit

enum AppStoryboard: String {
    case main = "Main"
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
    
    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
        let storyboardID = String(describing: viewControllerClass)
        return instance.instantiateViewController(withIdentifier: storyboardID) as! T
    }
}
