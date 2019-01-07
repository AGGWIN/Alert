//
//  AlertType.swift
//  Alert
//
//  Copyright © 2018 AGGWIN. All rights reserved.
//

import Foundation

public enum AlertType: String {
    case success
    case warning
    case error

    public var icon: UIImage? {
        return UIImage(named: rawValue, in: Bundle(for: Alert.self), compatibleWith: nil)
    }
    
    public var color: UIColor? {
        switch self {
        case .success:
            return UIColor.fromHEX("#33CD63")
        case .warning:
            return UIColor.fromHEX("#FFA616")
        case .error:
            return UIColor.fromHEX("#F8493B")
        }
    }
    
}
