//
//  PurchaseSheetView.swift
//  KeyLab
//
//  Created by woong on 2/21/24.
//

import SwiftUI

struct PurchaseSheetView: View {
    
    @State private var isShowingCartAlert: Bool = false
    @State private var isShowingCartSheet: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("별의 커비 키캡")
                Spacer()
            }
            
            HStack {
                Text("7%")//할인
                    .font(.title3)
                    .padding(.top, 1)
                    .foregroundStyle(.red)
                
                Text("35,000원")//할인
                    .font(.title3)
                    .padding(.top, 1)
                    .foregroundStyle(.gray)
                    .opacity(0.7)
                    .strikethrough(true)
                Spacer()
            }
            
            Divider()
            
            HStack {
                Text("내일 보착 도장")//할인
                    .foregroundStyle(.green)
                Spacer()
                
                RoundRectangle()
                    .frame(width: 100, height: 30)
                
                    .border(Color.black, width: 1)
            }
            HStack {
                Button{
                    isShowingCartAlert.toggle()
                } label: {
                    Text("장바구니")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                        .padding([.top, .bottom], 10)
                }
                .buttonStyle(.bordered)
                .clipShape(Capsule())
                .tint(.mainorange)
                
                Button{
                    
                } label: {
                    Text("구매하기")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                        .padding([.top, .bottom], 10)
                        .foregroundColor(.white)
                }
                .buttonStyle(.borderedProminent)
                .clipShape(Capsule())
                .tint(.mainorange)
            }
            
            
        }
        .padding()
        .sheet(isPresented: $isShowingCartSheet) {
            TotalCartView()
        }
        
        // sheet
        // 옵션
        // 갯수
        // 배송비
        .alert("장바구니로 이동하시겠습니까?", isPresented: $isShowingCartAlert) {
            
            Button("OK", action: {
                isShowingCartAlert.toggle()
                isShowingCartSheet.toggle()
                //초기화하고 총 장바구니로 넘어가기
            })
            Button("Cancel", action: {
                isShowingCartAlert.toggle()
                //초기화하고 총 장바구니로 넘어가기
            })
        }
    }
        
}


struct RoundRectangle: View {
    @State private var num: Int = 1
    var body: some View {
        HStack {
            Button {
                if num > 0 {
                    num -= 1
                } else {
                    
                }
            } label: {
                Image(systemName: "minus")
            }
            .tint(.black)
            
            Spacer()
            
            Text("\(num)")
            
            Spacer()
            
            Button {
                num += 1
            } label: {
                Image(systemName: "plus")
            }
            .tint(.black)
        }
    }
}

#Preview {
    PurchaseSheetView()
}
