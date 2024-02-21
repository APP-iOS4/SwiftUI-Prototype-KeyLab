//
//  OnBoardingPagingView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct OnBoardingPagingView: View {
    @State var navigationPath: NavigationPath = .init()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            TabView {
                FirstOnboardingView()
                SecondOnboardingView()
                ThridOnboardingView()
                FourthOnboardingView()
            }
            .tabViewStyle(PageTabViewStyle())
        }
        
    }
}

#Preview {
    OnBoardingPagingView()
}
