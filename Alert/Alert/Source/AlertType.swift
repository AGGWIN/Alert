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
            return AlertConfig.successColor
        case .warning:
            return AlertConfig.warningColor
        case .error:
            return AlertConfig.errorColor
        }
    }
    
}
