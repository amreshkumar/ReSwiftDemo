//
//  AppDelegate.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import UIKit
import ReSwift

var store = Store<AppState>(reducer: appReducer,
                            state: nil,
                            middleware: [loggingMiddleware])


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

}

