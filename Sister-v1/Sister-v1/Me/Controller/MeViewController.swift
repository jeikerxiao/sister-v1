//
//  MeViewController.swift
//  Sister-v1
//
//  Created by xiao on 2018/3/22.
//  Copyright © 2018年 jeikerxiao. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {
    
    lazy var tableView: UITableView = { [weak self] in
        let tableView = UITableView(frame: (self?.view.bounds)!, style:.plain)
        // iOS11默认开启self-sizing,关闭self-sizing，才可以触发heightForHeaderInSection代理方法（以下三行代码）
        tableView.estimatedRowHeight = 0;
        tableView.estimatedSectionHeaderHeight = 0;
        tableView.estimatedSectionFooterHeight = 0;
        
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "我"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}
