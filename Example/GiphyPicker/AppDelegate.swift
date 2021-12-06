//
//  AppDelegate.swift
//  AppDelegate
//
//  Created by Markin Ruslan on 03/12/2021.
//  Copyright (c) 2021 Markin Ruslan. All rights reserved.
//

import UIKit
import GiphyPicker

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GiphyPicker.defaultConfig(token: "AchSs39rgoLZLkML6m1JRjam3IQYTlRU")
        return true
    }
}

