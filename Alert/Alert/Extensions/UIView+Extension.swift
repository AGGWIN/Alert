//
//  UIView+Extension.swift
//  Alert
//
//  Copyright © 2019 AGGWIN. All rights reserved.
//

import Foundation

extension UIView {
    
    func addConstraints(format: String, views: UIView...) {
        var viewDictionary = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewDictionary[key] = view
            
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewDictionary))
    }
    
    static var hasTopNotch: Bool {
        if #available(iOS 11.0,  *) {
            return UIApplication.shared.delegate?.window??.safeAreaInsets.top ?? 0 > 24
        }
        return false
    }
    
    var naviGap: CGFloat {
        return UIView.hasTopNotch ? 88.0 : 64.0
    }
    
    var bottomGap: CGFloat {
        return UIView.hasTopNotch ? 34.0 : 0.0
    }
    
}
