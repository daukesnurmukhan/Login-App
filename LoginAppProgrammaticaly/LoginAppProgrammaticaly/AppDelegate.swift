//
//  AppDelegate.swift
//  LoginAppProgrammaticaly
//
//  Created by Нұрмұхан Дәукес on 21.02.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//                window = UIWindow()
//                window = UIWindow()
//                window?.makeKeyAndVisible()
//                window?.rootViewController = LoginViewController()
                
                
                window = UIWindow()
                let firstVC = LoginViewController()
                let navigationController = UINavigationController(rootViewController: firstVC)
                window?.rootViewController = navigationController
                window?.makeKeyAndVisible()
                
                
//                window = UIWindow()
//                let firstVC = AboutMeController()
//                let secondVC = SkilsController()
//                let thirdVC = HobbyController()
//
//                //nav
//                let firstController = UINavigationController(rootViewController: firstVC)
//                let secondController = UINavigationController(rootViewController: secondVC)
//                let thirdController = UINavigationController(rootViewController: thirdVC)
//
//                //tab
//                let tabBarVC = UITabBarController()
//                tabBarVC.setViewControllers([firstController, secondController, thirdController], animated: true)
//
//                window?.rootViewController = tabBarVC
//                window?.makeKeyAndVisible()
                
                return true
       
    }


}

