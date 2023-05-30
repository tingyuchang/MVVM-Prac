//
//  AppDelegate.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        print("Start from here")
        // set up NavigationBar appearance
        AppAppearance.setupAppearance()
        
        
        // old code
        /*
         window = UIWindow(frame: UIScreen.main.bounds)
         let navigationController = UINavigationController()

         window?.rootViewController = navigationController
         appFlowCoordinator = AppFlowCoordinator(
             navigationController: navigationController,
             appDIContainer: appDIContainer
         )
         appFlowCoordinator?.start()
         window?.makeKeyAndVisible()
         */
        
        
        return true
    }
}
