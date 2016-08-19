//
//  RNGlobalDefined.swift
//  Vae+
//
//  Created by 婉卿容若 on 16/8/19.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import Foundation
import UIKit

/// Some Constant Value
public let ScreenWidth = UIScreen.mainScreen().bounds.size.width
public let ScreenHeight = UIScreen.mainScreen().bounds.size.height
public let MainBounds = UIScreen.mainScreen().bounds
public let globalTabbarHeight = 49
public let globalNavigationBarHeight = 64
public let globalSizeWithoutNavbarOrTabbar = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight - CGFloat(globalTabbarHeight + globalNavigationBarHeight))
public let statusBar = 20
