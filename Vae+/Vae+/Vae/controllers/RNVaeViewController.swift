//
//  RNVaeViewController.swift
//  Vae+
//
//  Created by 婉卿容若 on 16/8/19.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import UIKit


class RNVaeViewController: RNBaseViewController {

    // MARK: - properties - 即定义的各种属性
    
    
    
    // MARK: -  Life cycle - 即生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        setupTab()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    deinit{
        
        
    }
    
}

// MARK: - Public Methods - 即系统提供的方法

extension RNVaeViewController{
}

// MARK: - Private Methods - 即私人写的方法

extension  RNVaeViewController{
    
    func setupTab(){
    
        let tc = TabPageViewController.create()
        let vc1 = RNStateViewController()
        vc1.view.backgroundColor = UIColor.whiteColor()
        let vc2 = RNJourneyViewController()
        vc2.view.backgroundColor = UIColor.brownColor()
        let vc3 = RNActivityViewController()
        vc3.view.backgroundColor = UIColor.redColor()
        tc.tabItems = [(vc1, "动态"), (vc2, "行程"),(vc3, "活动")]
        tc.displayControllerWithIndex(0, direction: .Forward, animated: false)
        var option = TabPageOption()
        option.tabWidth = view.frame.width / CGFloat(tc.tabItems.count)
        tc.option = option
        navigationController?.pushViewController(tc, animated: true)
    }
}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension  RNVaeViewController{
    
}

// MARK: - Delegates - 即各种代理方法


