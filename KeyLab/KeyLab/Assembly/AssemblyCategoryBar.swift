//
//  AssemblyCategoryBar.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI
var exCategory : [String] = ["적축", "갈축", "청축", "흑축", "크림축", "퍼플축", "비올라축", "옐로우축"]
struct AssemblyCategoryBar: View {
    var body: some View {
        ScrollView(.horizontal){
            //enum으로 배치하고....?ㅠ
            LazyHGrid(rows: [GridItem(.adaptive(minimum: .infinity, maximum: .infinity))]){
                ForEach( exCategory , id: \.self){ index in
                    Button(action: {
                        print("\(index)")
                    }, label: {
                        Text("\(index)").foregroundColor(.accentColor).padding(10)
                    }).border(Color.accentColor , width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }
            }
        }.scrollIndicators(.hidden)
    }
}

#Preview {
    AssemblyCategoryBar()
}
