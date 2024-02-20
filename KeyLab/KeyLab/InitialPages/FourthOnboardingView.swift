//
//  FourthOnboardingView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct FourthOnboardingView: View {
    private var string: String = "우리 함께 시작해 볼까요?"
    
    var body: some View {
        VStack {
            Image("onboarding3")
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
    FourthOnboardingView()
}
