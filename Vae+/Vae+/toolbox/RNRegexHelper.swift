//
//  RNRegexHelper.swift
//  OZner
//
//  Created by 婉卿容若 on 16/7/25.
//  Copyright © 2016年 sunlinlin. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import UIKit

// 摘自  《100个swift 2 开发必备 Tip》=> Tip 32 正则表达式

struct RNRegexHelper {
    
    let regex: NSRegularExpression
    
    init(_ pattern: String) throws {
        
        try regex = NSRegularExpression(pattern: pattern, options: NSRegularExpressionOptions.CaseInsensitive)
        
    }
    
    func match(input: String) -> Bool {
        
        let matches = regex.matchesInString(input, options: [], range: NSMakeRange(0, input.characters.count))
        
        return matches.count > 0
    }
}

// 使用

//// 邮箱格式
//func isValidateEmail(email: String) -> Bool{
//    
//    let emailRegex = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
//    let matcher: RNRegexHelper
//    do {
//        matcher = try! RNRegexHelper(emailRegex)
//    }
//    
//    return matcher.match(email)
//}
