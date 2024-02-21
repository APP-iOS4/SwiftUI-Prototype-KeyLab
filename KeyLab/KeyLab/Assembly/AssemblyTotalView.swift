//
//  AssemblyTotalView.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct AssemblyTotalView: View {
    @State private var progressCount = 1
    @State private var sortString = "최신순"
    @State private var isShowingCartSheet: Bool = false
    @State private var isShowingFilterSheet: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                AssemblyProgressView(progressCount: $progressCount).frame(height: 8)
                
                Text("\"\(categoryMockData[progressCount-1])\" 이미지 이렇게 저렇게 보여주기").frame(height: 150).border(.gray)
                VStack{
                    Text("\"\(categoryMockData[progressCount-1])\"는 이러쿵 저렁쿵 어쩌구 저쩌구해서 이렇게 저렇게 골라서 어절티비 저쩔티비 해야합니다. ").padding().frame(height: 100).background(Color.mainorange.opacity(0.2))
                }.padding()
                
                Divider()
                HStack{
                    AssemblyCategoryBar(progressCount : $progressCount).frame(maxHeight: 25)
                    
                    Button(action: {
                        isShowingFilterSheet.toggle()
                    }, label: {
                        Text("\(sortString)").frame(minWidth: 100)
                    }).foregroundColor(.mainorange)
                    
                }.frame(maxHeight: 25)
                Divider()
                
                
                
                ProductList(progressCount: $progressCount).frame(height: 250)

                HStack{
                    Button(action: {
                        if progressCount > 1{
                            progressCount -= 1
                        }else{
                        }
                    }, label: {
                        if progressCount > 1 {
                            HStack {
                                Image(systemName: "arrowshape.left.fill")
                                Text("이전")
                            }
                        }else {
                            HStack {
                                Image(systemName: "arrowshape.left.fill")
                                Text("이전")
                            }.hidden()
                        }
                    })
                    Spacer()
                    Text("\(progressCount) / 10")
                    Spacer()
                    Button(action: {
                        if progressCount >= 10{
                            isShowingCartSheet.toggle()
                        }
                        else{
                            progressCount += 1
                        }
                    }, label: {
                            if progressCount >= 10{
                                HStack {
                                    Text("카트")
                                    Image(systemName: "cart")
                                }
                            }
                            else{
                                HStack {
                                    Text("다음")
                                    Image(systemName: "arrowshape.right.fill")
                                }
                            }
                        
                        
                    })
                }.padding()
                
            }
            .navigationTitle("\(categoryMockData[progressCount-1])")
                .navigationBarTitleDisplayMode(.inline)
            
            
            
                .sheet(isPresented: $isShowingCartSheet, content: {
                    AssemblyCartView(isShowingCartSheet : $isShowingCartSheet, progressCount : $progressCount)
                })
        
                .sheet(isPresented: $isShowingFilterSheet, content: {
                    ProductFilter(isShowingFilterSheet : $isShowingFilterSheet, sortString: $sortString)
                })
        }.foregroundColor(.mainorange)
    }
}

#Preview {
    TabView{
        AssemblyTotalView()
    }
}
