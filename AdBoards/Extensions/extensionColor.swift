//
//  extensionColor.swift
//  AdBoards
//
//  Created by Nam on 6/29/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import Foundation
import UIKit
extension UIColor {
    class func color1() ->UIColor {
        let color = UIColor(red: 0.04, green: 0.77, blue: 0.73, alpha: 1.00)
        return color
    }
    class func color2() ->UIColor {
        let color = UIColor(red: 0.17, green: 0.85, blue: 0.56, alpha: 1.00)
        return color
    }
    class func shadowColor() ->UIColor {
        let color = UIColor(red: 0.62, green: 0.64, blue: 0.71, alpha: 0.20)
        return color
    }
    class func shadowColorForCard() ->UIColor {
        let color = UIColor(red: 0.62, green: 0.64, blue: 0.71, alpha: 0.16)
        return color
    }
    class func descriptLabel() -> UIColor {
        let color = UIColor(red: 0.20, green: 0.21, blue: 0.26, alpha: 1.00)
        return color
    }
    class func searchTFColor() -> UIColor {
        let color = UIColor(red: 0.46, green: 0.46, blue: 0.50, alpha: 0.12)
        return color
    }
    
    class func addArea() -> UIColor {
        let color = UIColor(red: 0.93, green: 0.93, blue: 0.94, alpha: 1.00)
        return color
    }
    
    class func addArea1() -> UIColor {
        let color = UIColor(red: 0.20, green: 0.21, blue: 0.26, alpha: 1.00)
        return color
    }
}
