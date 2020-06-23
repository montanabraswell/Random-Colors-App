//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Montana  on 6/22/20.
//  Copyright © 2020 Montana Braswell. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor {
        
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        
        return (randomColor)
    }
}
