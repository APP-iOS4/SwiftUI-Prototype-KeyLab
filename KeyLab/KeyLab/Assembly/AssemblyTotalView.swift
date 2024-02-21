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
        NavigationView {
            ScrollView {
                LazyVStack(pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    Section {
                        Image("assembly\(progressCount)")
                            .resizable()
                            .frame(width: 250, height: 150)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 0.2)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.vertical, 16)
                        
                        Text("\"\(categoryMockData[progressCount-1])\"는 이러쿵 저렁쿵 어쩌구 저쩌구해서 이렇게 저렇게 골라서 어절티비 저쩔티비 해야합니다. ")
                            .padding()
                            .frame(height: 100)
                            .background(Color.mainorange.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.bottom, 16)
                        
                        VStack(spacing: 0) {
                            Rectangle()
                                .frame(height: 1)
                                .foregroundStyle(.gray.opacity(0.2))
                            
                            Rectangle()
                                .frame(height: 20)
                                .foregroundStyle(.gray.opacity(0.2))
                        }
                        .padding(.bottom, 8)
                        
                        VStack {
                            HStack {
                                Text("전체 81")
                                    .padding(.leading, 16)
                                
                                Spacer()
                                
                                Button(action: {
                                    isShowingFilterSheet.toggle()
                                }, label: {
                                    HStack(spacing: 3) {
                                        Text("\(sortString)")
                                        
                                        Image(systemName: "chevron.down")
                                            .frame(width: 15, height: 15)
                                    }
                                    
                                })
                                .padding(.trailing, 16)
                                .foregroundColor(.mainorange)
                            }
                            
                            AssemblyCategoryBar(progressCount : $progressCount)
                        }
                        .padding(.bottom, 16)
                        
                        ProductList(progressCount: $progressCount)
                    } header: {
                        AssemblyProgressView(progressCount: $progressCount)
                            .frame(height: 4)
                            .padding(.vertical, 16)
                            .background()
                    } footer: {
                        HStack {
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
                        }
                        .padding()
                        .background()
                    }
                }
                .navigationTitle("\(categoryMockData[progressCount-1])")
                .navigationBarTitleDisplayMode(.inline)
                .sheet(isPresented: $isShowingCartSheet, content: {
                    AssemblyCartView(isShowingCartSheet : $isShowingCartSheet, progressCount : $progressCount)
                })
                
                .sheet(isPresented: $isShowingFilterSheet, content: {
                    ProductFilter(isShowingFilterSheet : $isShowingFilterSheet, sortString: $sortString)
                })
            }
        }.foregroundColor(.mainorange)
    }
}

#Preview {
    TabView{
        AssemblyTotalView()
    }
}
