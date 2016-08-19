//
//  RNMainTabBarController.swift
//  Vae+
//
//  Created by 婉卿容若 on 16/8/19.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import UIKit

class RNMainTabBarController: UITabBarController {

    // MARK: - properties - 即定义的各种属性
    
    
    
    // MARK: -  Life cycle - 即生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addAllChildViewController()
        
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

extension RNMainTabBarController{
    
}

// MARK: - Private Methods - 即私人写的方法

extension  RNMainTabBarController{
    
    func addAllChildViewController(){
        // vae
        addChildVC(RNVaeViewController(), title: "Vae", image: "vae_default", selected: "vae_selected")
        // 圈子
        addChildVC(RNCycleViewController(), title: "圈子", image: "cycle_default", selected: "cycle_selected")
        // 发现
        addChildVC(RNFindViewController(), title: "发现", image: "find_default", selected: "find_selected")
        // 消息
        addChildVC(RNMineViewController(), title: "消息", image: "message_default", selected: "message_selected")
        //我
        addChildVC(RNMineViewController(), title: "我", image: "mine_default", selected: "mine_selected")
    }

 
    /**
     添加子视图控制器
     
     :param: childVC  NavigationViewController的根视图类型
     :param: title    tabbar item的文字
     :param: image    tabbar item的默认图片的名称
     :param: selected tabbar item的选中状态下图片的名称
     */
    func addChildVC(childVC: UIViewController, title: String?, image: String, selected: String) {
        childVC.tabBarItem.title = title
        childVC.tabBarItem.image = UIImage(named: image)
        childVC.tabBarItem.selectedImage = UIImage(named: selected)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        // 设置点击之后字体的颜色
        childVC.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: RNColorManager.mainColor()], forState:UIControlState.Selected)
        
        // 设置导航控制器
        let childNaviagation = RNNavigationController(rootViewController: childVC)
        addChildViewController(childNaviagation)
    }

}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension  RNMainTabBarController{
    
}

// MARK: - Delegates - 即各种代理方法


