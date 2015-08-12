//
//  UIColor+Hex.swift
//  LayoutDemo
//
//  Created by 祝文博 on 15/8/12.
//  Copyright (c) 2015年 KevinLab. All rights reserved.
//

import UIKit

public extension UIColor {
    
    public convenience init?(hex: Int) {
        self.init(hex: hex, alpha: 1.0)
    }
    
    public convenience init?(hex: Int, alpha: CGFloat) {
        let redPercent = (CGFloat)((hex & 0xff0000) >> 16) / 255.0
        let greenPercent = (CGFloat)((hex & 0xff00) >> 8) / 255.0
        let bluePercent = (CGFloat)(hex & 0xff) / 255.0
        
        self.init(red: redPercent, green: greenPercent, blue: bluePercent, alpha: alpha)
    }
}