//
//  GradientView.swift
//  AdBoards
//
//  Created by Nam on 6/10/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import Foundation
import UIKit
import Stevia

extension UIView {
    @discardableResult
    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
        return self.applyGradient(colours: colours, locations: nil)
    }

    @discardableResult
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
    
    func createFormView(formLabel: String, formTextField: String) {
        
        let formLabel : UILabel = {
            let label = UILabel()
            label.text = formLabel
            label.descriptLabel()
            
            return label
        }()
        
        let formTextField: UITextField = {
            let textfield = UITextField()
            textfield.textColor = .black
            textfield.font = UIFont.systemFont(ofSize: 14)
            textfield.text = formTextField
            textfield.underline()
            return textfield
        }()
        
        self.sv(formLabel, formTextField)
        self.layout(
            |formLabel| ~ 20,
            8,
            |formTextField| ~ 16
        )
        
        
    }
    
    
}
