//
//  UILabel+Extensions.swift
//  AdBoards
//
//  Created by Nam on 6/10/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    func headerLabel() {
        self.font = .boldSystemFont(ofSize: 26)
        self.textColor = .black
        self.numberOfLines = 0
    }
    
    func descriptLabel() {
        self.font = .systemFont(ofSize: 14)
        self.textColor = UIColor.gray
        self.numberOfLines = 0
    }
    
    func nameCard() {
        
    }
    
    func typeFace() {
        self.font = .boldSystemFont(ofSize: 14)
        self.textColor = .gray
        
    }
}
