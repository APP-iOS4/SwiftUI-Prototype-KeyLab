//
//  ProductList.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

var exCount = 10
struct ProductList: View {
    @State private var isclickwidth = false
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: [GridItem(.adaptive(minimum: 150, maximum: 150))], spacing: 1){
                ForEach( (0...exCount) , id: \.self ) { index in
                    Button{
                        isclickwidth.toggle()
                    } label: {
                        ProductCell(isclickwidth : $isclickwidth)
                    }
                }
            }
        }
    }
}

#Preview {
    ProductList()
}
