//
//  CartCell.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct CartCell: View {
    var productName = "duckCuteKeyCap"
    var assemblyStep = "키캡"
    var body: some View {
        HStack{
            Image("cartkeycap").resizable().aspectRatio(contentMode: .fit) .frame(width : 100, height: 100)
            VStack(alignment: .leading){
                Text("부품 : \(assemblyStep)")
                Text("제품명 : \(productName)")
            }
            Spacer()
        }
    }
}

#Preview {
    CartCell()
}
