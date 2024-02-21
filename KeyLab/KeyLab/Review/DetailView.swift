//
//  DetailView.swift
//  KeyLab
//
//  Created by 강 태훈 on 2/20/24.
//

import SwiftUI

struct DetailView: View {
    let item: ReviewItem

    var body: some View {
        ScrollView {
            VStack {
                Text("제목")
                    .font(.largeTitle)
                
                // 제목과 네모박스를 같은 VStack에 넣어 정렬
                VStack(alignment: .leading, spacing: 0) {
                    CustomRectangle(text: "글쓴이: 하세기")
                    
                    // 이미지와 추가적인 네모박스를 포함하는 VStack
                    VStack(alignment: .leading, spacing: 0) {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.black)
                            .padding([.top, .bottom], 4)
                            .padding([.leading, .trailing], 20)
                        
                        // 모든 텍스트를 포함하는 네모박스
                        VStack(alignment: .leading, spacing: 8) {
                            CustomText(text: "부품 정보: 세트구매")
                                .padding([.horizontal, .top], 12) // 좌우 상단 여백 추가
                                .frame(maxWidth: .infinity, alignment: .leading) // 가로 크기를 늘립니다.
                            CustomText(text: "총가격: 800000원")
                                .padding(.horizontal, 12) // 좌우 여백 추가
                                .frame(maxWidth: .infinity, alignment: .leading) // 가로 크기를 늘립니다.
                            CustomText(text: "글쓴이의 생각: 좋습니다.")
                                .padding([.horizontal, .bottom], 10) // 좌우 하단 여백 추가
                                .frame(maxWidth: .infinity, alignment: .leading) // 가로 크기를 늘립니다.
                        }
                        .background(Color.gray) // 회색 박스 설정
                        .padding(.horizontal, 15) // 좌우 여백 추가
                        .padding(.bottom, 30)
                    }
                }
                
                
                
                // 부품정보 네모박스 밖에 위치하는 댓글 텍스트
                VStack {
                    Text("댓글")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .padding(.leading, -180)
        
                    
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 355, height: 100)
                    
                    
                        
             
                        
           
                }
                     // 좌측 여백 추가
                Spacer()
                    
            }
        }
    }
}

struct CustomRectangle: View {
    let text: String

    var body: some View {
        ZStack {
            Rectangle() // 네모 박스 추가
                .foregroundColor(.gray) // 회색으로 채우기
                .frame(height: 50) // 높이 설정
            Text(text)
                .padding()
                .foregroundColor(.black) // 텍스트 색상 설정
                .frame(maxWidth: .infinity, alignment: .leading) // 텍스트 왼쪽으로 정렬
        }
        .padding(.horizontal) // 가로 여백 추가
        .background(Color.white) // 배경색을 흰색으로 설정
    }
}

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .padding(.horizontal, 8) // 좌우 여백 추가
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleItem = ReviewItem(id: 1, image: "sampleImage", title: "Sample Title", content: "Sample Content", heartCount: 10)
        return DetailView(item: sampleItem)
    }
}

