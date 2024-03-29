//
//  AssemblyCartView.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct AssemblyCartView: View {
    @Binding var isShowingCartSheet: Bool
    @State private var isShowingCartAlert: Bool = false

    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        isShowingCartSheet.toggle()
                    }, label: {
                        Label("close", systemImage: "xmark")
                    })
                }.padding()
                ScrollView{
                    ForEach((1...12),id: \.self){ _ in
                        CartCell()
                        Divider()
                    }
                }
                Button(action: {
                    isShowingCartAlert.toggle()
                }, label: {
                    Text("Add Cart")
                       
                }) .tint(Color(red: 255 / 255, green: 154 / 255, blue: 105 / 255)).padding(5)
            }
        }.navigationTitle("장바구니")
            .alert("장바구니에 추가하시겠습니까?", isPresented: $isShowingCartAlert) {
                
                Button("OK", action: {
                    print("추가되었습니다~")
                    //초기화하고 총 장바구니로 넘어가기
                })
                Button("Cancel", action: {
                    isShowingCartAlert.toggle()
                    //초기화하고 총 장바구니로 넘어가기
                })
            }
    }
}

#Preview {
    AssemblyCartView(isShowingCartSheet: .constant(true))
}
