//
//  AssemblyCartView.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct AssemblyCartView: View {
    @Binding var isShowingCartSheet: Bool
    @Binding var progressCount: Int
    
    @State private var isShowingCartAlert: Bool = false
    @State private var isShowingCartOKAlert: Bool = false
    

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
                    ForEach((1...10),id: \.self){ index in
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
                    isShowingCartAlert.toggle()
                    isShowingCartOKAlert.toggle()
                    //초기화하고 총 장바구니로 넘어가기
                })
                Button("Cancel", action: {
                    isShowingCartAlert.toggle()
                    //초기화하고 총 장바구니로 넘어가기
                })
            }
            .alert("추가되었습니다", isPresented: $isShowingCartOKAlert) {
                
                Button("OK", action: {
                    //초기화하고 총 장바구니로 넘어가기
                    isShowingCartSheet.toggle()
                    isShowingCartOKAlert.toggle()
                    progressCount = 1
                
                    
                })
            }
    }
}

#Preview {
    AssemblyCartView(isShowingCartSheet: .constant(true),
                     progressCount : .constant(4))
}
