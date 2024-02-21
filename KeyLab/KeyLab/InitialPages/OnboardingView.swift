//
//  OnboardingView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentPageNum: Int = 0
    
    private let onBoardingStrings: [String] = [
        """
        너무나 어려운
        커스텀 키보드
        """,
        "쉽고 빠르게 만들어 볼까요?",
        "가이드를 따라가면 뚝딱!",
        "우리 함께 시작해 볼까요?",
    ]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Spacer(minLength: 110)
                OnBoardingPagingView()
                    .onAppear{
                        setUpAppearance()
                    }
            }
            VStack {
                NavigationLink(destination: LoginView()) {
                    Text("시작하기")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .clipShape(Capsule())
                .tint(.mainorange)
                .padding()
            }
        }
    }
    
    func setUpAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .mainorange
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray
    }
}
#Preview {
    NavigationStack {
        OnboardingView()
    }
}
