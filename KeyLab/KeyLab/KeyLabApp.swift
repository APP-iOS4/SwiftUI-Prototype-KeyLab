//
//  KeyLabApp.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

@main
struct KeyLabApp: App {
    var body: some Scene {
        WindowGroup {
            let isLogin = false
            
//            if isLogin {
//                KeyLabTabView()
//            } else {
                OnboardingView()
//            }
        }
    }
}
