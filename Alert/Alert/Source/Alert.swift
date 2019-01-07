//
//  Alert.swift
//  Alert
//
//  Copyright © 2018 AGGWIN. All rights reserved.
//

import UIKit

public class Alert: UIView {
    
    public init(title: String, type: AlertType) {
        super.init(frame: .zero)
        
        setupViews()
    }
    
    // MARK: - View
    
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.cyan
        return view
    }()
    
    func setupViews() {
        addSubview(contentView)
        addConstraints(format: "H:|-20-[v0]-20-|", views: contentView)
        addConstraints(format: "V:|-20-[v0]-20-|", views: contentView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
