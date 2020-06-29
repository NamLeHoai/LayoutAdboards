//
//  UIButton+Extensions.swift
//  AdBoards
//
//  Created by Nam on 6/10/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import Foundation
import UIKit
import Stevia
extension UIButton {
    func gradientButton(_ name: String) {
        self.layer.cornerRadius = 6
        self.backgroundColor = .lightGray
        self.contentHorizontalAlignment = .center
        self.setImage(UIImage(named: name), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 315)
//        self.applyGradient(withColours: [.red, .yellow], gradientOrientation: GradientOrientation.topLeftBottomRight)
    }
    
    func smallButton() {
        self.layer.cornerRadius = self.frame.height/2
        self.backgroundColor = .lightGray
    }
    
    func editButton() {
        self.width(25).height(25)
    }
}
