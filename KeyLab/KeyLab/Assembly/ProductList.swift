//
//  ProductList.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

var exCount = 10

struct ProductList: View {
    @State var boolArray = [Bool](repeating: false, count: exCount)
    @Binding var progressCount: Int
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: [GridItem(.adaptive(minimum: 150, maximum: 150))], spacing: 5){
                ForEach( (0...exCount-1) , id: \.self ) { index in
                    ProductCell(progressCount: $progressCount,isSelected: $boolArray[index]){
                        boolArray[index].toggle()
                        for i in boolArray.indices where i != index {
                            boolArray[i] = false
                        }
                    }                }
            }
        }
    }
}

#Preview {
    ProductList(progressCount: .constant(4))
}
