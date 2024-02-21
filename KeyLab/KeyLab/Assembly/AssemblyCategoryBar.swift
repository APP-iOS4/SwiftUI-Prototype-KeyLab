//
//  AssemblyCategoryBar.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI
var storageCount = 0
struct AssemblyCategoryBar: View {
    @Binding var progressCount: Int
    @State private var isFlag = false
    
    var body: some View {
        ScrollView(.horizontal){
            //enum으로 배치하고....?ㅠ
            LazyHGrid(rows: [
                GridItem(.adaptive(minimum: .infinity, maximum: .infinity))
            ]){
                ForEach(0...6, id: \.self){ index in
                    Button {
                        
                    } label: {
                        Text("\(categoryMockData[progressCount-1]) 종류 \(index)")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(10)
                    }
                    .background(.mainorange)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                }
            }
            .padding(.horizontal, 16)
        }
        .scrollIndicators(.hidden)
        .frame(height: 50)
    }
}

#Preview {
    AssemblyCategoryBar(progressCount : .constant(3))
}
