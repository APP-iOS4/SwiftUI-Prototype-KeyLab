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
    
    @State private var isShowingToast: Bool = false
    
    

    var body: some View {
        NavigationStack{
            ZStack(alignment: .top) {
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
                        isShowingToast.toggle()
                    }, label: {
                        Text("카트에 담기")
                    }) .tint(.mainorange).padding(5)
                }
                
                if isShowingToast {
                    ZStack {
                        Rectangle()
                            .frame(height: 150)
                            .opacity(0.7)
                        VStack {
                            Text("장바구니에 담겼습니다.")
                                .font(.title)
                                .foregroundStyle(.white)
                            Text("3초 뒤에 창이 종료됩니다.")
                                .foregroundStyle(.white)
                        }
                        
                    }
                    .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    isShowingToast.toggle()
                                    isShowingCartSheet.toggle()
                                }
                              }
                }
            }
        }
    }
}

#Preview {
    AssemblyCartView(isShowingCartSheet: .constant(true),
                     progressCount : .constant(4))
}
