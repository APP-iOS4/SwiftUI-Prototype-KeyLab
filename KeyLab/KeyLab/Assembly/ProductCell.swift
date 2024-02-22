//
//  ProductCell.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct ProductCell: View {
    @Binding var progressCount: Int
    @Binding var isSelected: Bool
    @State private var isDetailSheet = false
    
    var buttonAction: (() -> ())?
    
    var body: some View {
        
            VStack {
                ZStack {
                    VStack(alignment: .leading) {
                        Image(systemName: "photo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.gray)
                            .padding(8)
                        
                        HStack {
                            Spacer()
                            
                            Image(systemName: "heart")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                                .foregroundStyle(.red)
                            
                            Text("1,234")
                                .font(.subheadline)
                        }
                        .padding([.horizontal, .bottom], 6)
                        
                        
                        
                    }
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.mainorange), lineWidth: 0.4)
                    }
                    .onTapGesture {
                        buttonAction?()
                    }
                    .contextMenu(menuItems: {
                        Button(action: { isDetailSheet.toggle()}, label: {
                            Text("상세보기")
                        })
                        Text("찜하기(미구현)")
                    })
                    
                    if isSelected{
                        Image(systemName: "checkmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
                Text("[\(categoryMockData[progressCount-1])] 제품명")
                    .font(.headline)
                    .fontWeight(.medium)
                
                Text("39,800원")
                    .padding([.horizontal, .bottom], 8)
                    .font(.subheadline)
            }
            .sheet(isPresented: $isDetailSheet, content: {
                ProductDetailView()
            })
        .foregroundColor(.mainorange)
            .frame(width: 150, height: 200)
    }
}

#Preview {
    ProductCell( progressCount: .constant(3), isSelected: .constant(false))
}
