//
//  ProductDoubleLineGridView.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import SwiftUI

struct ProductDoubleLineGridView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem()], spacing: 16) {
                ForEach(1...10, id: \.self) { index in
                    VStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.mainorange)
                            .frame(height: 80)
                        Text("조합 \(index)")
                        Text("트렌디한 감성의 어쩌구")
                    }
                    .frame(maxWidth: 200)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 0.3)
                    }
                }
            }
            .padding(.horizontal, 16)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ProductDoubleLineGridView()
}
