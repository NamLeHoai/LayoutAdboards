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
//        self.layer.cornerRadius = 6
        self.contentHorizontalAlignment = .center
        self.setImage(UIImage(named: name), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 315)
        self.layer.cornerRadius = 6
        self.layer.masksToBounds = true // cắt bỏ phần chườm ra khỏi bounds
    }

    func smallButton() {
        self.layer.cornerRadius = self.frame.height/2
        self.backgroundColor = .lightGray
    }

    func editButton() {
        self.width(25).height(25)
    }
    
    //hàm draw chạy sau khi view dc layout
//    open override func draw(_ rect: CGRect) {
//        self.applyGradient(withColours: [UIColor.color1(),UIColor.color2()], gradientOrientation: .horizontal)
//    }
}
