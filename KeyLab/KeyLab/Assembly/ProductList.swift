//
//  ProductList.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct ProductList: View {
    @State var boolArray = [Bool](repeating: false, count: 10)
    @Binding var progressCount: Int
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem()], spacing: 5){
                ForEach(0...9, id: \.self) { index in
                    ProductCell(progressCount: $progressCount,isSelected: $boolArray[index]){
                        boolArray[index].toggle()
                        for i in boolArray.indices where i != index {
                            boolArray[i] = false
                        }
                    }
                    .onTapGesture {
                        boolArray[index].toggle()
                    }
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ProductList(progressCount: .constant(4))
}
