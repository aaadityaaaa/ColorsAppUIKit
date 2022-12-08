//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Aaditya Singh on 08/12/22.
//

import UIKit

extension UIColor {
    static func generateAColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
