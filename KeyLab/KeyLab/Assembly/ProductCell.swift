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
    var buttonAction: (() -> ())?
    
    var body: some View {
        VStack{
            ZStack{
                
                Text("\(categoryMockData[progressCount-1])\n이미지").frame(width: 150, height: 200).border(Color.mainorange, width: 1)
                Text("\n\n\n\n\n\n\n                         🧡")
                if isSelected{
                    Image(systemName: "checkmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    
                }
            }.onTapGesture {
                buttonAction?()
            }
            .contextMenu(menuItems: {
                Text("상세보기_sheet")
                Text("찜하기")
            })
            
            Text("[\(categoryMockData[progressCount-1])]제품명")

        }.foregroundColor(.mainorange)
    }
}

#Preview {
    ProductCell( progressCount: .constant(3), isSelected: .constant(false))
}
