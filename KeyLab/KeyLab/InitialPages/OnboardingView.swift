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
                GeometryReader { geometry in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 0) {
                            ForEach(0..<4) { index in
                                Image("onboarding\(index)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width)
                            }
                        }
                    }
                    .scrollTargetBehavior(.paging)
                }
            }
            
            VStack {
                Spacer()
                
                Text("\(onBoardingStrings[0])")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                PageControl(numberOfPages: 4, currentPage: $currentPageNum)
                
                
                VStack {
                    NavigationLink(destination: LoginView()) {
                        
                        Button {
                            
                        } label: {
                            Text("로그인")
                                .font(.title)
                                .padding()
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.mainorange)
                        .padding()
                    }
                }
                
                
                Button {
                    
                } label: {
                    Text("회원가입")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                }
                .tint(.mainorange)
                .padding()
            }
        }
        //            .toolbar {
        //                ToolbarItem(placement: .topBarTrailing, content: {
        //                    Button {
        //
        //                    } label: {
        //                        Text("건너뛰기")
        //                    }
        //                    .tint(.gray)
        //                })
        //            }
        
        
        
    }
}
#Preview {
    NavigationStack {
        OnboardingView()
    }
}
