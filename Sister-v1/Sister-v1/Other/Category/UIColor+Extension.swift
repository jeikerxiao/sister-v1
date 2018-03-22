//
//  UIColor+Extension.swift
//  Sister-v1
//
//  Created by xiao on 2018/3/22.
//  Copyright © 2018年 jeikerxiao. All rights reserved.
//

import UIKit

extension UIColor {
    // 颜色
    /// - Parameters:
    ///   - r: red
    ///   - g: green
    ///   - b: blue
    ///   - a: alpha
    convenience init(_ r:CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
}
