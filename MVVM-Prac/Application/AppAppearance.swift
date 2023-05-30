//
//  AppAppearance.swift
//  MVVM-Prac
//
//  Created by matt on 2023/5/29.
//

import Foundation
import SwiftUI


final class AppAppearance {
    static func setupAppearance() {
        if #available(iOS 15, *) {
            let appreance = UINavigationBarAppearance()
            appreance.configureWithOpaqueBackground()
            appreance.titleTextAttributes = [.foregroundColor: UIColor.white2]
            appreance.backgroundColor = UIColor.navy2
            UINavigationBar.appearance().standardAppearance = appreance
            UINavigationBar.appearance().scrollEdgeAppearance = appreance
        } else {
            UINavigationBar.appearance().barTintColor = .black
            UINavigationBar.appearance().tintColor = .white
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            
            
        }
        
        
    }
}
