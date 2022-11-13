//
//  AppDelegate.swift
//  Number Puzzle
//
//  Created by MacBook Pro on 07/11/22.
//

import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = MainXib(nibName: "MainXib", bundle: nil)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }

    

}

