//
//  LoginView.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct LoginView: View {
    @State private var idLabel: String = ""
    @State private var pwLabel: String = ""
    @State private var isOnID: Bool = false
    @State private var isOnAutoLogin: Bool = false
    @FocusState private var isFocusedID: Bool
    @FocusState private var isFocusedPW: Bool
    
    
    var body: some View {

        ScrollView {
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
            HStack {
                Toggle(isOn: $isOnID) {}
                    .toggleStyle(CheckboxToggleStyle())
                    .frame(maxWidth: 24)
                Text("아이디 저장")
                
                Spacer()
                
                Toggle(isOn: $isOnAutoLogin) {}
                    .toggleStyle(CheckboxToggleStyle())
                    .frame(maxWidth: 24)
                Text("자동 로그인")
            }
            .padding(EdgeInsets(top: 5, leading: 30, bottom: 0, trailing: 100))
            
            VStack {
                NavigationLink {
                    KeyLabTabView()
                } label: {
                    Text("로그인")
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
                
                HStack {
                    Text("ID / PW 찾기")
                        .foregroundStyle(.gray)
                    Text("|")
                        .foregroundStyle(.gray)
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("회원가입")
                    }
                    .foregroundStyle(.gray)
                    
                }
                
            }
            .navigationTitle("로그인")
        }
        .onTapGesture {
            isFocusedID = false
            isFocusedPW = false
        }
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            
            Spacer()
            
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .green : .gray)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}
 
extension UIApplication: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return false
    }
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
