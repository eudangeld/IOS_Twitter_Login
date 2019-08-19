//
//  AppDelegate.swift
//  IOS_Twitter_Login
//
//  Created by dan on 19/08/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit
import TwitterKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        TWTRTwitter.sharedInstance().start(withConsumerKey:"Ck2VbYUAMuPiES7OwULwfKbLE", consumerSecret:"your-comsumer-secret")
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return TWTRTwitter.sharedInstance().application(app, open: url, options: options)
    }

}

