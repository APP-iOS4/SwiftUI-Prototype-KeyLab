//
//  OnBoardingPagingView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct OnBoardingPagingView: View {
    var body: some View {
        TabView {
            FirstOnboardingView()
            SecondOnboardingView()
            ThridOnboardingView()
            FourthOnboardingView()
        }
        .tabViewStyle(PageTabViewStyle())
//        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    OnBoardingPagingView()
}
