//
//  String+Extension.swift
//  Sister-v1
//
//  Created by xiao on 2018/3/22.
//  Copyright © 2018年 jeikerxiao. All rights reserved.
//

import UIKit

extension String {
    
    /// 获取高度计算
    ///
    /// - Parameters:
    ///   - size: 矩形已知范围
    ///   - attributes: 文字属性
    /// - Returns: 高度
    public func height(_ size: CGSize, _ attributes: [NSAttributedStringKey: Any]?) -> CGFloat {
        
        let string = self as NSString
        let stringSize = string.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        return stringSize.height
        
    }
    
    /// 获取宽度计算
    ///
    /// - Parameters:
    ///   - size: 矩形已知范围
    ///   - attributes: 文字属性
    /// - Returns: 宽度
    public func width(_ size: CGSize, _ attributes: [NSAttributedStringKey: Any]?) -> CGFloat {
        
        let string = self as NSString
        let stringSize = string.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        return stringSize.width
        
    }
}
