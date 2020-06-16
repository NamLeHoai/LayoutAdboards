//
//  UITextField+Extensions.swift
//  AdBoards
//
//  Created by Nam on 6/13/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    func searchTF(name: String) {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 24, height: 22))
        let image = UIImage(named: name)
        imageView.image = image
        self.leftViewMode = UITextField.ViewMode.always
        self.rightViewMode = UITextField.ViewMode.always
        self.leftView = imageView
        self.rightView = imageView
        
    }
    
    func underline() {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
