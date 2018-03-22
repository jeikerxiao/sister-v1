//
//  UIBarButtonItem+Extesion.swift
//  Sister-v1
//
//  Created by xiao on 2018/3/22.
//  Copyright © 2018年 jeikerxiao. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    //遍历构造器必须以 convenience 开头, 并且调用自身init构造器方法(注意: 不需要return)
    convenience init(image: String, highImage: String, target: Any, action: Selector) {
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: image), for: .normal)
        button.setBackgroundImage(UIImage(named: highImage), for: .highlighted)
        button.addTarget(target, action: action, for: .touchUpInside)
        button.sizeToFit()
        self.init(customView: button)
    }
    
    convenience init(title: String, fontSize: CGFloat, _ target: Any?, _ SEL: Selector) {
        let button = UIButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.lightGray, for: .disabled)
        button.addTarget(target, action: SEL, for: .touchUpInside)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        self.init(customView: button)
    }
}
