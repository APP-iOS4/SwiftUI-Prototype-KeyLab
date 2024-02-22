//
//  MyReviewView.swift
//  KeyLab
//
//  Created by woong on 2/22/24.
//

import SwiftUI

struct MyReviewView: View {
    var body: some View {
        ScrollView {
            Image("mareview")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    MyReviewView()
}
