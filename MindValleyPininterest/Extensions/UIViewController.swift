//
//  UIViewController.swift
//  MindValleyPininterest
//
//  Created by Muhammad Usman Tarar on 9/20/19.
//  Copyright © 2019 Usman Tarar. All rights reserved.
//

import UIKit

extension UIViewController {
    // MARK: Top VC

    class func topViewController(_ base: UIViewController? = UIApplication.shared.windows.first!.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(presented)
        }
        return base
    }
}
