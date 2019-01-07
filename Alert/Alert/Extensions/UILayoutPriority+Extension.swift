//
//  UILayoutPriority+Extension.swift
//  Alert
//
//  Copyright © 2019 AGGWIN. All rights reserved.
//

import UIKit

extension UILayoutPriority {
    
    static func +(lhs: UILayoutPriority, rhs: Float) -> UILayoutPriority {
        return UILayoutPriority(lhs.rawValue + rhs)
    }
    
    static func -(lhs: UILayoutPriority, rhs: Float) -> UILayoutPriority {
        return UILayoutPriority(lhs.rawValue - rhs)
    }
    
}
