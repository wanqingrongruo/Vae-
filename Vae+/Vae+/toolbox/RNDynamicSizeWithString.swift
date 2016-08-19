//
//  RNDynamicSizeWithString.swift
//  HoyoServicer
//
//  Created by 婉卿容若 on 16/5/25.
//  Copyright © 2016年 com.ozner.net. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import UIKit

class RNDynamicSizeWithString: NSObject {
    
    /**
     根据字符串动态计算宽度
     
     - parameter string:     字符串
     - parameter fontSize:   字体
     - parameter maxWidth:   最大宽度
     - parameter maxHeight:  最大高度
     - parameter extraSpace: 计算的宽度额外的空间(一般为了美观)
     
     - returns: 宽度
     */
    class func widthForDynamicString(string: String, fontSize: CGFloat, maxWidth: CGFloat, maxHeight: CGFloat, extraSpace: CGFloat) -> CGFloat{
        
        let attrDic = [NSFontAttributeName: UIFont.systemFontOfSize(fontSize)]
        let w = (string as NSString).boundingRectWithSize(CGSizeMake(maxWidth, maxHeight), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: attrDic, context: nil).size.width + extraSpace
        
        return w
    }
    
    
    /**
     根据字符串动态计算高度
     
     - parameter string:     字符串
     - parameter fontSize:   字体
     - parameter maxWidth:   最大宽度
     - parameter maxHeight:  最大高度
     - parameter extraSpace: 计算的高度额外的空间(一般为了美观)
     
     - returns: 高度
     */
    class func heightForDynamicString(string: String, fontSize: CGFloat, maxWidth: CGFloat, maxHeight: CGFloat, extraSpace: CGFloat) -> CGFloat{
        
        let attrDic = [NSFontAttributeName: UIFont.systemFontOfSize(fontSize)]
        let h = (string as NSString).boundingRectWithSize(CGSizeMake(maxWidth, maxHeight), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: attrDic, context: nil).size.height + extraSpace
        
        return h
    }


}
