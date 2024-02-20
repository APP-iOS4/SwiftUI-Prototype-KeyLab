//
//  DetailView.swift
//  KeyLab
//
//  Created by 강 태훈 on 2/20/24.
//

import SwiftUI

struct DetailView: View {
    let item: ReviewItem

    // 각 그리드에 대한 텍스트 배열
    let texts = ["작성자 정보", "", "부품정보\n총가격\n글쓴이 생각"]

    var body: some View {
        VStack(spacing: 0) { // 여기서 spacing을 0으로 설정하여 그리드 아이템 간의 간격을 제거합니다.
            Text("제목")
                .padding() // 제목 위에 여백 추가

            ScrollView(.vertical, showsIndicators: true) {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 0) { // spacing을 0으로 설정하여 간격 제거
                    ForEach(texts, id: \.self) { text in
                        VStack(alignment: .leading) {
                            Text(text)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                                .background(Color.gray)
                        }
                        .frame(height: 50) // 각 그리드 항목의 높이 설정
                    }
                }
            }
        }
    }
}

