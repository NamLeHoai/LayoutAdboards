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
        self.backgroundColor = .searchTFColor()
        self.placeholder = "Search"
        self.leftViewMode = UITextField.ViewMode.always
        self.rightViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let image = UIImage(named: "question")
        imageView.image = image
        let imageView1 = UIImageView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        let image1 = UIImage(named: "question")
        imageView1.image = image1
        self.leftView = imageView
        self.rightView = imageView1
        
        
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
    
    open override func draw(_ rect: CGRect) {
        self.applyGradient(withColours: [UIColor.color1(),UIColor.color2()], gradientOrientation: .horizontal)
    }
    
    
}
