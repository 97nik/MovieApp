//
//  MainRouter.swift
//  MovieApp
//
//  Created by Никита on 12.04.2022.
//

import UIKit

internal final class MainRouter {
    private let tabbar: UITabBarController
    
    private let firstNC: UINavigationController
    private let firstVC: UIViewController
    
    private let secondNC: UINavigationController
    private let secondVC:  UIViewController
    
    private let thirdNC: UINavigationController
    private let quotesVC: UIViewController
    
    internal init()
    {
        self.tabbar = UITabBarController()
        
        self.firstVC = ViewController()
        self.firstNC = UINavigationController(rootViewController: self.firstVC)
        
        self.secondVC = ViewController2()
        self.secondNC = UINavigationController(rootViewController: self.secondVC)
        
        self.quotesVC = ViewController()
        self.thirdNC = UINavigationController(rootViewController: self.quotesVC)
        
        configFirstVC()
        configSecondVC()
        configThirdNC()
        
        self.tabbar.setViewControllers([self.firstNC, self.secondNC, self.thirdNC], animated: true)
    }
    
    internal func returnController() -> UITabBarController {
        return self.tabbar
    }
    
    private func configFirstVC() {
        self.firstNC.navigationBar.prefersLargeTitles = true
        self.firstVC.title = "Trending"
        self.firstNC.tabBarItem.title = "Trending"
        self.firstNC.tabBarItem.image = UIImage(systemName: "star.fill")
    }
    
    private func configSecondVC() {
        self.secondNC.navigationBar.prefersLargeTitles = true
        self.secondVC.title = "Find"
        self.secondNC.tabBarItem.title = "Find"
        self.secondNC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
    }
    private func configThirdNC() {
        self.thirdNC.navigationBar.prefersLargeTitles = true
        self.quotesVC.title = "Account"
        self.thirdNC.tabBarItem.title = "Account"
        self.thirdNC.tabBarItem.image = UIImage(systemName: "person.fill")
    }
}
