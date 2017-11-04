//
//  ElegantSlideMenuDto.swift
//  ElegantSlideMenuView
//
//  Created by Min on 2017/3/26.
//  Copyright © 2017年 cdu.com. All rights reserved.
//

import UIKit

public struct ElegantSlideMenuDto {
    /** 对应页标签标题 */
    public var title: String!
    /** 对应页标签视图 */
    public var view: UIView!
    public var isInitial: Int!
    public init() {
        
    }
    
    public init(title: String, view: UIView, isInitial: Int) {
        self.title = title
        self.view = view
        self.isInitial = isInitial
    }
}
