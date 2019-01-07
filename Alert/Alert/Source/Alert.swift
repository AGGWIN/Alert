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
        view.layer.cornerRadius = 5
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 5
        return view
    }()
    
    let iconView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "alert_ic_error")
        imageView.tintColor = .black
        return imageView
    }()
    
    func setupViews() {
        let width = UIScreen.main.bounds.width
        addSubview(contentView)
        
        addConstraints(format: "H:|-20-[v0(\(width - 40))]-20-|", views: contentView)
        addConstraints(format: "V:|-(-44)-[v0(44)]", views: contentView)
        
        contentView.addSubview(iconView)
        contentView.addConstraints(format: "H:[v0(20)]", views: iconView)
        contentView.addConstraints(format: "V:[v0(20)]", views: iconView)
        iconView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        iconView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        print(UIView.hasTopNotch)
    }
    
    public func show() {
        let window = UIApplication.shared.keyWindow!
        window.addSubview(self)
        
        let y: CGFloat = UIView.hasTopNotch ? 88 : 64
        UIView.animate(withDuration: 0.3, delay: 1.5, animations: {
            self.transform = CGAffineTransform(translationX: 0, y: y)
        }) { _ in
            UIView.animate(withDuration: 0.3, delay: 1.5, animations: {
                self.transform = CGAffineTransform(translationX: 0, y: -y)
            }) { _ in
                self.removeFromSuperview()
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
