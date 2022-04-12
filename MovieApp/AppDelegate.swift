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
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.overrideUserInterfaceStyle = .light
        window?.backgroundColor = .white
        let router = MainRouter()
        window?.rootViewController = router.returnController()
        window?.makeKeyAndVisible()
        return true
    }
}
