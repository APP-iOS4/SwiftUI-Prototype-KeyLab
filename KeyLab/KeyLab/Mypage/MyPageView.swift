//
//  MyPageView.swift
//  KeyLab
//
//  Created by sswv on 2/20/24.
//

import SwiftUI

struct MyPageView: View {
    
    @State private var pushAlarmToggle: Bool = false
    @State private var SMSAlarmToggle: Bool = false
    @State private var emailAlarmToggle: Bool = false
    @State private var logOutAlert = false
    @State private var cacheClearAlert = false
    @State var navigateLogin = false


    
    var userName:String = "하세기"
    var userTier = Image(systemName:"b.circle")
    
    var body: some View {
        NavigationView {
            
            ScrollView{
                VStack {
                    HStack {
                        Image(systemName:"person.circle.fill")
                            .font(.system(size: 90, weight: .bold, design: .default))
                            .clipShape(Circle())
                            .overlay {
                                Circle()
                                    .stroke(Color(.mainorange), lineWidth: 3)
                            }
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
                    .frame(width: 350, height: 180)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.mainorange), lineWidth: 0.5)
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
                    
                    VStack(alignment: .leading) {
                        NavigationLink(destination: secondView(index: 1)) {
                            Text("공지사항")
                        }
                        .padding()
                        
                        NavigationLink(destination: secondView(index: 2)) {
                            Text("계정 관리")
                        }
                        .padding()
                        
                        Toggle(isOn: $pushAlarmToggle, label: {
                            Text("앱 푸시 알림")
                        })
                        .padding()
                        
                        Toggle(isOn: $SMSAlarmToggle, label: {
                            Text("SMS 알림")
                        })
                        .padding()
                        .padding(.vertical, -30)
                        
                        Toggle(isOn: $emailAlarmToggle, label: {
                            Text("이메일 알림")
                        })
                        .padding()
                        
                        Button(action: {}, label: {
                            Text("개인정보 처리 방침")
                        })
                        .padding()
                        
                        Button(action: {self.cacheClearAlert = true}, label: {
                            Text("캐시 삭제")
                                .foregroundStyle(.red)
                        })
                        .alert("", isPresented: $cacheClearAlert) {
                            Button("Ok", role: .destructive) {}
                        }
                        
                        
                    message: {
                            Text("임시로 저장된 데이터를 삭제하여 저장공간을 확보하시겠습니까?")
                        }
                    .padding()
                        
                        
                        
                        Button(action: {self.logOutAlert = true}, label: {
                            Text("로그아웃")
                                .foregroundStyle(.red)
                        })
                        .alert("", isPresented: $logOutAlert) {
                            Button("Ok", role: .destructive) {}
                        }
                        
                    message: {
                            Text("로그아웃 하시겠습니까?")
                        }
                        
                        .padding()
                    
                    }
                    .padding()
                    
                   
                    
                    
                }
                .padding(.top, 16)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Text("마이페이지")
                            .font(.largeTitle)
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink {
                            SettingView()
                                .navigationTitle("환경설정")
                            
                        } label: {
                            Image(systemName: "gearshape")
                            //                                .font(.title3)
                                .padding(.top, 10)
                        }
                        .tint(Color(.mainorange))
                    }
                }
            }
        }
    }
}
func secondView(index: Int) -> some View {
    var body: some View {
        Text("\(index)")
    }
    
    return body
}

#Preview {
    NavigationStack {
        MyPageView()
    }
}
