//
//  AppDelegate.swift
//  MovieApp
//
//  Created by Никита on 12.04.2022.
//

import CoreData
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
       let mainVC = ViewController()
 
        window = UIWindow(frame: UIScreen.main.bounds)
        UITabBar.appearance().tintColor = .systemGray
        window?.overrideUserInterfaceStyle = .light
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        return true
    }
}
