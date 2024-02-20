//
//  OnBoardingPagingView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct OnBoardingPagingView: View {
    @State var navigationPath: NavigationPath = .init()
    @State private var tabViewIndex: Int = 1
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            TabView(selection: $tabViewIndex) {
                FirstOnboardingView()
                    .tag(1)
                SecondOnboardingView()
                    .tag(2)
                ThridOnboardingView()
                    .tag(3)
                FourthOnboardingView()
                    .tag(4)
            }
            .tabViewStyle(PageTabViewStyle())
            
            if tabViewIndex == 4 {
                NavigationLink("시작하기") {
                    LoginView()
                }
            }
        }
        
    }
}

#Preview {
    OnBoardingPagingView()
}
