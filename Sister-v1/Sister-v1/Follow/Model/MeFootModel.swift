//
//  MeFootModel.swift
//  Sister-v1
//
//  Created by xiao on 2018/3/26.
//  Copyright © 2018年 jeikerxiao. All rights reserved.
//

import UIKit

class MeFootModel: NSObject {
    var icon = ""
    var name = ""
    var url = ""
    
    init(_ dic: [String: Any]) {
        guard let name = dic["name"] as? String, let icon = dic["icon"] as? String, let url = dic["url"] as? String else {
            return
        }
        self.name = name
        self.name = icon
        self.url = url
    }
}
