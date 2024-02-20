//
//  PageControl.swift
//  KeyLab
//
//  Created by woong on 2/20/24.
//

import SwiftUI

struct PageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View {
        HStack {
            ForEach(0..<numberOfPages) { index in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundStyle(index == self.currentPage ? .mainorange : .gray)
                    .onTapGesture {
                        self.currentPage = index
                    }
                
            }
        }
    }
}
//
//#Preview {
//    PageControl()
//}
