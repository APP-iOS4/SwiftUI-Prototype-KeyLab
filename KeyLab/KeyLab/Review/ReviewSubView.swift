//
//  ReviewSub.swift
//  KeyLab
//
//  Created by 강 태훈 on 2/21/24.
//

import SwiftUI

struct ReviewSubView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    Text("제목")
                        .font(.title)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image(systemName: "person")
                                .frame(width: 40, height: 40)
                                .overlay {
                                    Circle()
                                        .stroke()
                                }
                                .foregroundStyle(.mainorange)
                            
                            Text("닉네임") // 텍스트 추가
                                .font(.headline) // 텍스트 크기 지정
                            
                            Spacer()
                        }
                        .padding()
                        
                        Image("keyboard1")
                            .resizable()
                            .frame(height: 250)
                        
                        VStack(alignment: .leading) {
                            NavigationLink {
                                ProductDetailView()
                            } label: {
                                Text("체리축, 흰색키캡, ABS하우징")
                                    .font(.headline)
                                    .padding(.bottom, 6)
                            }
                            
                            Text("키보드 너무 멋져요~~")
                        }
                        .padding()
                        .foregroundColor(.black)
                    }
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 0.5)
                    }
                    
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 36)
                
                VStack(alignment: .leading) {
                    Text("연관상품")
                        .font(.title)
                        .padding(.horizontal, 16)
                    
                    ProductDoubleLineGridView()
                        .padding(.bottom)
                    
                    //                Text("댓글")
                    //                    .font(.title)
                    //                    .padding(.horizontal, 25)
                    //
                    //                ZStack(alignment: .topLeading) {
                    //                    Rectangle()
                    //                        .fill(Color.gray)
                    //                        .frame(width: 420, height: 150)
                    //
                    //                    Circle()
                    //                        .fill(Color.white)
                    //                        .frame(width: 50, height: 50)
                    //                        .offset(x:22, y: 15)
                    //
                    //                    Text("하세기") // 텍스트 추가
                    //                        .font(.headline) // 텍스트 크기 지정
                    //                        .foregroundColor(.black) // 텍스트 색상 지정
                    //                        .offset(x: 85, y: 30) // 위치 조정
                    //
                    //                    VStack { // 여러 텍스트를 수직으로 배치하는 VStack 추가
                    //                        Text("체리축, 흰색키캡, ABS하우징")
                    //                            .padding()
                    //                        Text("키보드 너무 멋져요~~") // 여러번 반복되는 텍스트
                    //                    }
                    //                    .foregroundColor(.black) // 텍스트 색상 지정
                    //                    .offset(x: 5, y: 65) // 위치 조정
                    //
                    //                }
                }
            }
        }
        
        
        
        //        Spacer()
    }
}

#Preview {
    ReviewSubView()
}

