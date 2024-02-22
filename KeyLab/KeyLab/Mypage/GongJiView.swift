//
//  GongJiView.swift
//  KeyLab
//
//  Created by woong on 2/22/24.
//

import SwiftUI

struct GongJiView: View {
    var body: some View {
        ScrollView {
            Image("gongji")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    GongJiView()
}
