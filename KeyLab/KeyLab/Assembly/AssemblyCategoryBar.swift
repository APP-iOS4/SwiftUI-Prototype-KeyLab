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
            LazyHGrid(rows: [GridItem(.adaptive(minimum: .infinity, maximum: .infinity))]){
                ForEach( (0...6) , id: \.self){ index in
                    Button(action: {
//                        
//                        print("\(index)")
//                        if isFlag{
//                            self.id(index).
//                        }else{
//                            storageCount = index
//                        }
//                        
                    }, label: {
                        Text("\(categoryMockData[progressCount-1]) 종류 \(index)").foregroundColor(.white).padding(10)
                        
                    }).border(Color.mainorange , width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }
            }.background(.mainorange.opacity(0.5))
        }.scrollIndicators(.hidden)
    }
}

#Preview {
    AssemblyCategoryBar(progressCount : .constant(3))
}
