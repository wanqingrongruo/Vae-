//
//  RNColor+Expand.swift
//  HoyoServicer
//
//  Created by 婉卿容若 on 16/6/16.
//  Copyright © 2016年 com.ozner.net. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import UIKit

class RNColor_Expand: NSObject {
    
    //纯色转图片
    func imageFromColor(color: UIColor, view: UIView) -> UIImage {
        let rect: CGRect = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)
        UIGraphicsBeginImageContext(rect.size)
        let context: CGContextRef = UIGraphicsGetCurrentContext()!
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsGetCurrentContext()
        return image
    }
    
    // 色值
    func COLORRGBA(r:Int,g:Int,b:Int,a:CGFloat)->UIColor
    {
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: a)
    }


}
