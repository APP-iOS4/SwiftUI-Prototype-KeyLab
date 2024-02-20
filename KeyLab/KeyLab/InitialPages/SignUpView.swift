//
//  SignUpView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var idLabel: String = ""
    @State private var pwLabel: String = ""
    @FocusState private var isFocusedID: Bool
    @FocusState private var isFocusedPW: Bool
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("ID")
                TextField("  id입력", text: $idLabel)
                    .font(.title)
                    .padding()
                    .focused($isFocusedID)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(isFocusedID ? Color.mainorange : Color.gray)
                    }
            }
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
            
            VStack(alignment: .leading) {
                Text("Password")
                TextField("  비밀번호 입력", text: $pwLabel)
                    .font(.title)
                    .padding()
                    .focused($isFocusedPW)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(isFocusedPW ? Color.mainorange : Color.gray)
                    }
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
            
            
            VStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("완료")
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                }
                .buttonStyle(.borderedProminent)
                .tint(.mainorange)
                .clipShape(Capsule())
                .foregroundStyle(.white)
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
                
                Divider()
                    .padding()
                
                Button {} label: {
                    HStack {
                        Image(systemName: "sun.max")
                        Spacer()
                        Text("카카오로 시작하기")
                            .font(.title3)
                            .foregroundStyle(.black)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        Spacer()
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.yellow)
                .clipShape(Capsule())
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                
                Button {} label: {
                    HStack {
                        Image(systemName: "sun.max")
                        Spacer()
                        Text("Apple로 계속하기")
                            .font(.title3)
                            .foregroundStyle(.white)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        Spacer()
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .clipShape(Capsule())
                .padding(EdgeInsets(top: 15, leading: 30, bottom: 0, trailing: 30))
                
                Spacer()
            }
            
        }
        .navigationTitle("회원가입")
    }
}

#Preview {
    NavigationStack {
        SignUpView()
    }
}
