//
//  MyPageView.swift
//  KeyLab
//
//  Created by sswv on 2/20/24.
//

import SwiftUI

struct MyPageView: View {
    var userName:String = "하세기"
    var userTier = Image(systemName:"b.circle")
    let recentData = Array(1...20).map { "\($0)"}
    let recentColumns = [
        GridItem(.flexible(maximum: 155)),
        GridItem(.flexible(maximum: 160))
    ]
    
    var body: some View {
        
        TabView{
            NavigationStack {
                
                VStack {
                    Text("마이페이지")
                        .navigationBarTitle("")
                    
                        .font(.system(size: 25, weight: .semibold))
                        .tracking(3)
                        .padding(.top, -30)
                        .toolbar {
                            ToolbarItemGroup() {
                                NavigationLink {
                                    SettingView()
                                        .navigationTitle("환경설정")
                                    
                                } label: {
                                    Image(systemName: "gearshape")
                                        .font(.title3)
                                        .padding(.top, 10)
                                }
                            }
                        }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray)
                            .frame(width: 350, height: 180)
                        HStack{
                            Image(systemName:"person.circle.fill")
                                .font(.system(size: 90, weight: .bold, design: .default))
                                .clipShape(Circle())
                                .overlay {
                                    Circle().stroke(.white, lineWidth: 4)
                                }
                                .shadow(radius: 5)
                                .padding(5)
                            VStack(alignment:.leading,spacing: 5){
                                Text("\(userName)")
                                    .font(.system(size: 35, weight: .bold))
                                    .tracking(5)
                                Text("회원등급: \(userTier)")
                                    .font(.system(size: 19))
                                
                                HStack{
                                    VStack {
                                        Button(action: {}, label: {
                                            Image(systemName: "heart")
                                        })
                                        .font(.system(size: 28))
                                        
                                        Text("찜")
                                    }
                                    VStack {
                                        Button(action: {}, label: {
                                            Image(systemName: "ticket")
                                        })
                                        .font(.system(size: 28))
                                        .padding(.vertical, 0.1)
                                        Text("쿠폰")
                                    }
                                    .padding(.horizontal, 4)
                                    VStack {
                                        Button(action: {}, label: {
                                            Image(systemName: "text.bubble")
                                        })
                                        .font(.system(size: 28))
                                        Text("후기")
                                    }
                                }
                                .font(.system(size: 19))
                                
                                
                            }
                            
                            .padding(25)
                            
                        }
                        
                    }
                    HStack(alignment:.center) {
                        VStack {
                            Button(action: {}, label: {
                                Image(systemName: "creditcard")
                            })
                            .font(.system(size: 28))
                            Text("구매내역")
                        }
                        .padding(.leading, 40)
                        Spacer()
                        
                        VStack {
                            Button(action: {}, label: {
                                Image(systemName: "box.truck")
                            })
                            .font(.system(size: 28))
                            Text("배송조회")
                        }
                        .padding(.vertical, 10)
                        Spacer()
                        
                        VStack {
                            Button(action: {}, label: {
                                Image(systemName: "cart")
                            })
                            .font(.system(size: 28))
                            Text("장바구니")
                        }
                        .padding(.trailing, 40)
                    }
                    Spacer()
                    Text("최근 본 상품")
                        .font(.system(size: 20, weight: .semibold))
                    
                    ScrollView {
                        LazyVGrid(columns: recentColumns,  spacing: 15) {
                            ForEach(recentData, id: \.self) {i in
                                //VStack으로 도형추가
                                VStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.white)
                                        .frame(width: 150, height: 150)
                                        .shadow(radius: 5)
                                        .padding(.horizontal, 30)
                                    
                                    
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                }
            }
        }
    }
}
#Preview {
    MyPageView()
}
