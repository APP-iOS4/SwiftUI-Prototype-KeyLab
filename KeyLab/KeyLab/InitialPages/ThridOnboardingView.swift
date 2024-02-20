//
//  ThridOnboardingView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct ThridOnboardingView: View {
    private var string: String = "가이드를 따라가면 뚝딱!"
    
    var body: some View {
        VStack {
            Image("onboarding2")
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
    ThridOnboardingView()
}
