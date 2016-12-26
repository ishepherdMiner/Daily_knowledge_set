//
//  ComConfig.swift
//  Daily_knowledge_set
//
//  Created by Jason on 08/12/2016.
//  Copyright © 2016 Jason. All rights reserved.
//

import UIKit

class ComConfig: NSObject {
    public lazy var dataList = {
        return [
            [
                "name":"iOS中数据传递的机制",
                "ctrl":"DataTransferViewController"
            ],
        ]
    }()
    
    // http://www.cocoachina.com/swift/20151207/14584.html
    static let shared = ComConfig()
}
