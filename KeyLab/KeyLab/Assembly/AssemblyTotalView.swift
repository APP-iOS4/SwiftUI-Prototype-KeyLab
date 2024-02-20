//
//  AssemblyTotalView.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct AssemblyTotalView: View {
    //enum으로 0 = 키캡 / 1 = 스위치 이런식으로 보이도록
    @State private var progressCount = 1
    @State private var sortString = "최신순"
    @State private var isShowingCartSheet: Bool = false
    @State private var isShowingFilterSheet: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                //이 단계의 부품 이미지
                Spacer()
                Divider()
                Image("assemblyMainImage").resizable().aspectRatio(contentMode: .fit).frame(height: 180)
                VStack{
                    Text("But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born ").padding().frame(height: 100).background(Color(red: 255 / 255, green: 154 / 255, blue: 105 / 255).opacity(0.2))
                }.padding()
                
                //카테고리
                
                //
                Divider()
                HStack{
                    AssemblyCategoryBar().frame(maxHeight: 20)
                    Button(action: {
                        isShowingFilterSheet.toggle()
                    }, label: {
                        Text("\(sortString)").frame(minWidth: 100)
                    }).foregroundColor(.orange).background(.blue)
                }.frame(maxHeight: 25)
                //상품 쫘라락~
                //상품 선택시 표시 0
                
                Divider()
                //
                ProductList().frame(height: 250)
                
                AssemblyProgressView(progressCount: $progressCount).frame(height: 5)
                Spacer(minLength: 20)
            }.navigationTitle("조립")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .status) {
                        HStack{
                            Button(action: {
                                if progressCount > 1{
                                    progressCount -= 1
                                }else{
                                    
                                }
                            }, label: {
                                Label("이전", systemImage: "arrowshape.left.fill")
                            })
                            Spacer()
                            Text("\(progressCount) / 12")
                            Spacer()
                            Button(action: {
                                if progressCount >= 12{
                                    isShowingCartSheet.toggle()
                                }
                                else{
                                    progressCount += 1
                                }
                                print("nxt : \(progressCount)")
                            }, label: {
                                Label("다음", systemImage: "arrowshape.right.fill")
                            })
                        }.foregroundColor(Color(red: 255 / 255, green: 154 / 255, blue: 105 / 255))
                }
            }.sheet(isPresented: $isShowingCartSheet, content: {
                AssemblyCartView(isShowingCartSheet : $isShowingCartSheet)
            })
            .sheet(isPresented: $isShowingFilterSheet, content: {
                ProductFilter(isShowingFilterSheet : $isShowingFilterSheet, sortString: $sortString)
            })
            
            
        }.ignoresSafeArea(.all)
    }
}

#Preview {
    AssemblyTotalView()
}
