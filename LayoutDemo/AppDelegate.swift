//
//  AppDelegate.swift
//  LayoutDemo
//
//  Created by 祝文博 on 15/8/12.
//  Copyright (c) 2015年 KevinLab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UITabBarControllerDelegate {
    
    var window: UIWindow?
    
    var navigationController: UINavigationController!
    var tabBarController: UITabBarController!
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor();
        window?.makeKeyAndVisible();
        
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        tabBarController = UITabBarController()
        
        let historyViewController: HistoryViewController! = HistoryViewController()
        historyViewController.tabBarItem = UITabBarItem(title: "历史", image: UIImage(named: "tab_history"), selectedImage: UIImage(named: "tab_history_selected"))
        
        tabBarController.viewControllers = [historyViewController]
        tabBarController.title = tabBarController.selectedViewController?.title
        tabBarController.delegate = self
        tabBarController.tabBar.translucent = false
        
        UITabBar.appearance().backgroundColor = UIColor.whiteColor();
        
        navigationController = UINavigationController(rootViewController: tabBarController)
        navigationController.navigationBar.translucent = false
        navigationController.navigationBar.barTintColor = UIColor(hex: 0x6299F7)
        let navigationBarTitleAttributes: NSDictionary = [NSForegroundColorAttributeName : UIColor.whiteColor()];
        navigationController.navigationBar.titleTextAttributes = navigationBarTitleAttributes as [NSObject : AnyObject]
        
        window?.rootViewController = navigationController
        window?.addSubview(navigationController.view)
        
        UIApplication.sharedApplication().setStatusBarHidden(false, withAnimation: UIStatusBarAnimation.None)
        
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //MARK: - UITabBarControllerDelegate
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        
        if tabBarController.selectedViewController != viewController {
            tabBarController.selectedViewController = viewController
            tabBarController.navigationItem.leftBarButtonItem = nil
            tabBarController.navigationItem.rightBarButtonItem = nil
            tabBarController.title = viewController.title
            return true
        }
        
        return false;
    }
}

