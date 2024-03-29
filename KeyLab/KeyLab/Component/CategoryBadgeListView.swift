//
//  CategoryBadgeListView.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import SwiftUI

let categoryMockData: [String] = [
    "노브",
    "노브 엔코더",
    "하우징",
    "키캡",
    "스위치",
    "스테빌라이저",
    "보강판",
    "흡음재",
    "PCB",
    "실리콘 패드",
    "높낮이 조절대"
]

struct CategoryBadgeListView: View {
    var categoryList: [String]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(categoryList, id: \.self) { category in
                    Button {
                        
                    } label: {
                        Text(category)
                            .font(.caption)
                            .foregroundStyle(.white)
                            .padding(8)
                    }
                    .background(.mainorange)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                }
            }
            .padding(.horizontal, 16)
        }
        .padding(.vertical, 4)
        .background()
        .scrollIndicators(.hidden)
        .frame(height: 60)
    }
}

#Preview {
    CategoryBadgeListView(categoryList: categoryMockData)
}
