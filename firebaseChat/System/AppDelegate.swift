//
//  AppDelegate.swift
//  firebaseChat
//
//  Created by Henry on 2020/01/18.
//  Copyright © 2020 tpsinc. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // fire base configuration
        FirebaseApp.configure()
        
        return true
    }


}

