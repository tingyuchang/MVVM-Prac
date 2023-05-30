//
//  MVVM_PracApp.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import SwiftUI

@main
struct MVVM_PracApp: App {
    // using property wapper let myApp know, using AppDelegate
    // Q: applicationDidBecomeActive, applicationDidEnterBackground not work
    // A: using UISceneDelegate to replace UIApplicationDelegate
    // TODO: applicationDidReceiveMemoryWarning，applicationWillTerminate not work
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @Environment(\.scenePhase) var scenePhase
    

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: self.scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("App becomes active.")
            case .inactive:
                print("App becomes inactive.")
            case .background:
                print("App enters background")
            default:
                print("Other scenes \(newScenePhase).")
            }
        }
    }
}
