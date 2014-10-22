//
//  AppDelegate.swift
//  Sep18
//
//  Created by Matthew Whitesides on 9/18/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let screenRect = UIScreen.mainScreen().bounds
        window = UIWindow(frame: CGRectZero)
        
        let navigationController = UINavigationController(nibName: nil, bundle: nil)
        let yellowViewController = YellowViewController(nibName: nil, bundle: nil)
        navigationController.pushViewController(yellowViewController, animated: false)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        
        return true
    }

}

