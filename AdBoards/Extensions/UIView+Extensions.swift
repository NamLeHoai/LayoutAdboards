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

typealias GradientPoints = (startPoint: CGPoint, endPoint: CGPoint)

enum GradientOrientation {
  case topRightBottomLeft
  case topLeftBottomRight
  case horizontal
  case vertical

var startPoint: CGPoint {
    return points.startPoint
}

var endPoint: CGPoint {
    return points.endPoint
}

var points: GradientPoints {
    switch self {
    case .topRightBottomLeft:
        return (CGPoint(x: 0.0, y: 1.0), CGPoint(x: 1.0, y: 0.0))
    case .topLeftBottomRight:
        return (CGPoint(x: 0.0, y: 0.0), CGPoint(x: 1, y: 1))
    case .horizontal:
        return (CGPoint(x: 0.0, y: 0.5), CGPoint(x: 1.0, y: 0.5))
    case .vertical:
        return (CGPoint(x: 0.0, y: 0.0), CGPoint(x: 0.0, y: 1.0))
    }
  }
}


extension UIView {
    func applyGradient(withColours colours: [UIColor], locations: [NSNumber]? = nil) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
    }

    func applyGradient(withColours colours: [UIColor], gradientOrientation orientation: GradientOrientation) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.startPoint = orientation.startPoint
        gradient.endPoint = orientation.endPoint
        self.layer.insertSublayer(gradient, at: 0)
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
        
        let lineView: UIView = {
            let view = UIView()
            view.backgroundColor = .lightGray
            return view
        }()
        
        self.sv(formLabel, formTextField, lineView)
        self.layout(
            |formLabel| ~ 20,
            8,
            |formTextField| ~ 16,
            16,
            |lineView| ~ 1
        )
        
        
    }
    
    
}
