//
//  SecondOnboardingView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct SecondOnboardingView: View {
    private var string: String = "쉽고 빠르게 만들어 볼까요?"
    
    var body: some View {
        VStack {
            Image("onboarding1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 30, trailing: 30))
            
            Text(string)
                .font(.title)
                .fontWeight(.semibold)
        }
        
    }
}

#Preview {
    SecondOnboardingView()
}
