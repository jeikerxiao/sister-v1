//
//  MeFootViewVM.swift
//  Sister-v1
//
//  Created by xiao on 2018/3/26.
//  Copyright © 2018年 jeikerxiao. All rights reserved.
//

import UIKit
import Alamofire

class MeFootViewVM {
    
    class func loadMeVCData(_ finishedBlock: @escaping (_ dataArray: [MeFootModel])->()){
        // http://api.budejie.com/api/api_open.php?a=square&c=topic
        let urlString = "http://api.budejie.com/api/api_open.php"
        let parameter = ["a":"square","c":"topic",]
        
        Alamofire.request(urlString, method: .get, parameters: parameter).responseJSON { (respond) in
            guard let dic = respond.result.value as? [String: Any] else {
                return
            }
            guard let datas = dic["square_list"] as? [[String: Any]] else {
                return
            }
            var meFootViewModels = [MeFootModel]()
            for dic in datas {
                let model = MeFootModel(dic)
                meFootViewModels.append(model)
            }
            finishedBlock(meFootViewModels)
        }
    }

}
