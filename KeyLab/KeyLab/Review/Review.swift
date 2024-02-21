//
//  Review.swift
//  KeyLab
//
//  Created by 강 태훈 on 2/20/24.
//

import SwiftUI

struct Review: View {
    
    @State private var pressed = false
    
    let gridItems = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("후기")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                HStack {
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: -18 ) {
                                ForEach(texts.indices, id: \.self) { index in
                                    Capsule()
                                        .fill(Color.orange)
                                        .frame(width: 70, height: 30)
                                        .overlay(
                                            Text(texts[index])
                                                .foregroundColor(.white)
                                                .font(.subheadline)
                                        )
                                }
                                .padding(.horizontal) // 각 캡슐에 좌우 여백 추가
                            }
                        }
                        
                        Button(action: {
                            self.pressed.toggle()
                        }) {
                            HStack {
                                Text("인기순")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Image(systemName: pressed ? "chevron.up" : "chevron.down") // chevron.down 아이콘 추가
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                            
                        }
                        .padding(.leading, 285 ) // 우측 여백 추가
                        .padding(.vertical, 5)
                    }
                }
                
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 10) {
                        ForEach(reviewItems) { item in
                            NavigationLink(destination: DetailView(item: item)) {
                                VStack(alignment: .leading) {
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150, height: 100)
                                    Text(item.title)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.leading, 10)
                                    Text(item.content)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.leading, 10)
                                    HStack {
                                        Image(systemName: "heart")
                                            .font(.body)
                                            .foregroundColor(.red)
                                        Text("\(item.heartCount)")
                                            .font(.body)
                                            .foregroundColor(.white)
                                    }
                                    .frame(maxWidth: .infinity, alignment: .trailing) // 오른쪽 정렬
                                    .padding(.trailing, 10)
                                }
                                .frame(width: 170, height: 180) // 뷰의 크기 조정
                                .background(Color.gray)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                Spacer()
            }
//            .navigationBarTitle("후기")
            
            
            
        }
    }
}


struct Review_Previews: PreviewProvider {
    static var previews: some View {
        Review()
    }
}
