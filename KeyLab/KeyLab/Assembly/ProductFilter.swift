//
//  ProductFilter.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct ProductFilter: View {
    @Binding var isShowingFilterSheet: Bool
    @Binding var sortString: String
    var body: some View {
        NavigationStack{
            HStack{
                Spacer()
                Button(action: {
                    isShowingFilterSheet.toggle()
                }, label: {
                    Label("close    ", systemImage: "xmark")
                })
            }
            
            Button(action: {
                sortString = "최신순"
                isShowingFilterSheet.toggle()
            }, label: {
                Text("최신순")
            })
            Divider()
            Button(action: {
                sortString = "인기순"
                isShowingFilterSheet.toggle()
            }, label: {
                Text("인기순")
            })
            Divider()
            Button(action: {
                sortString = "낮은가격순"
                isShowingFilterSheet.toggle()
            }, label: {
                Text("낮은가격순")
            })
            Divider()
            Button(action: {
                sortString = "높은가격순"
                isShowingFilterSheet.toggle()
            }, label: {
                Text("높은가격순")
            })
            
            
            
        }.padding()
            .presentationDetents([.height(200)])
    }
}

#Preview {
    ProductFilter(isShowingFilterSheet: .constant(true), sortString: .constant("d아ㅏㅏ아"))
}
