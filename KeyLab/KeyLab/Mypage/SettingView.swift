//
//  SettingView.swift
//  KeyLab
//
//  Created by sswv on 2/20/24.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
        Text("Hello, World!")
    }
}
struct SettingView: View {
    @State private var toggle: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("로그인")) {
                    NavigationLink(destination: secondView(index: 1)) {
                        Text("계정 관리")
                    }
                        Toggle(isOn: $toggle, label: {
                                                       Text("자동 로그인")
                                                   })
                    
                    Button(action: {}, label: {
                        Text("개인정보 처리 방침")
                    })
                }
                
                Section(header: Text("부가기능")) {
                    NavigationLink(destination: secondView(index: 2)) {
                        Text("2")
                    }
                    NavigationLink(destination: secondView(index: 3)) {
                        Text("3")
                    }
                    NavigationLink(destination: secondView(index: 4)) {
                        Text("4")
                    }
                    NavigationLink(destination: secondView(index: 5)) {
                        Text("5")
                    }
                    NavigationLink(destination: secondView(index: 6)) {
                        Text("6")
                    }
                }
                
                Section(header: Text("알림")) {
                    NavigationLink(destination: secondView(index: 9)) {
                        Text("알림 설정")
                    }
                }
                Section(header: Text("")) {
                    Button(action: {}, label: {
                        Text("회원 탈퇴")
                            .foregroundStyle(.black)
                    })
                }
                Section(header: Text("")) {

                    Button(action: {}, label: {
                        Text("로그아웃")
                            .foregroundStyle(.red)
                    })

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
}


#Preview {
    SettingView()
}
