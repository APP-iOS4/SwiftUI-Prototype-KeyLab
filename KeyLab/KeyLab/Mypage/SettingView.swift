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
                
                Button(action: {}, label: {
                    Text("현재 버전 V 0.0.1")
                })
            
                
                
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
