//
//  TotalCartView.swift
//  KeyLab
//
//  Created by 유지호 on 2/21/24.
//

import SwiftUI

struct TotalCartView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(pinnedViews: .sectionFooters) {
                    Section {
                        ForEach(1...10, id: \.self) { count in
                            ZStack(alignment: .topLeading) {
                                CartCell()
                                
                                CheckBoxToggle()
                            }
                        }
                    } footer: {
                        VStack(alignment: .trailing) {
                            Text("Total: ₩1,284,000")
                                .font(.headline)
                                .foregroundStyle(Color(red: 255/255, green: 154/255, blue: 105/255))
                                .padding(.trailing, 16)
                            
                            Button {
                                
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundStyle(Color(red: 255/255, green: 154/255, blue: 105/255))
                                    
                                    Text("결제하기")
                                        .foregroundStyle(.white)
                                }
                                
                                
                            }
                            .padding(.horizontal, 16)
                            .frame(height: 56)
                        }
                        .padding(.vertical)
                        .background()
                    }
                }
            }
            .clipped()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("장바구니")
                        .font(.largeTitle)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("전체 선택") {
                        
                    }
                    .tint(Color(red: 255/255, green: 154/255, blue: 105/255))
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("전체 해제") {
                        
                    }
                    .tint(Color(red: 255/255, green: 154/255, blue: 105/255))
                }
            }
        }
    }
}

#Preview {
    TotalCartView()
}
