//
//  FirstOnboardingView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct FirstOnboardingView: View {
    private var string: String = """
                                너무나 어려운
                                커스텀 키보드
                                """
    
    var body: some View {
        VStack {
            Image("onboarding0")
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
    FirstOnboardingView()
}
