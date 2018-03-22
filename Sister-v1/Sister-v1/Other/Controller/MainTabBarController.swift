//
//  MainTabBarViewController.swift
//  Sister-v1
//
//  Created by xiao on 2018/3/22.
//  Copyright © 2018年 jeikerxiao. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 通过 appearance 统一设置 UITabBarItem 的文字属性
        let tabBar = UITabBarItem.appearance()
        let attrs_Normal = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12), NSAttributedStringKey.foregroundColor: UIColor.gray]
        let attrs_Select = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12), NSAttributedStringKey.foregroundColor: UIColor.darkGray]
        tabBar.setTitleTextAttributes(attrs_Normal, for: .normal)
        tabBar.setTitleTextAttributes(attrs_Select, for: .selected)
        
        setupView()
    }
}

extension MainTabBarController {
    
    fileprivate func setupView() {
        setValue(MainTabBar(), forKey: "tabBar")
        // ViewController 数组
        let vcArray:[UIViewController] = [EssenceViewController(),
                                          NewViewController(),
                                          FriendViewController(),
                                          MeViewController()]
        // tabBar 标题，图片名称数组
        let titleArray = [("精华", "essence"),
                          ("新帖", "new"),
                          ("关注", "friendTrends"),
                          ("我", "me")]
        // 设置所有的tabBar
        for (index, vc) in vcArray.enumerated() {
            vc.tabBarItem.title = titleArray[index].0
            vc.tabBarItem.image = UIImage(named: "tabBar_\(titleArray[index].1)_icon")
            vc.tabBarItem.selectedImage = UIImage(named: "tabBar_\(titleArray[index].1)_click_icon")
            let nav = MainNavigationController(rootViewController: vc)
            addChildViewController(nav)
        }
    }
}
