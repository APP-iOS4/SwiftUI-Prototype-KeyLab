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
                    VStack(alignment: .leading) {
                        Image("keyboard1")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        Text("조합 \(index)")
                            .font(.headline)
                            .fontWeight(.medium)
                            .lineLimit(2)
                        
                        Text("트렌디한 감성의 어쩌구")
                            .font(.footnote)
                            .lineLimit(2)
                        
                        HStack {
                            Image(systemName: "heart")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                                .foregroundStyle(.red)
                            
                            Text("1,234")
                                .font(.subheadline)
                        }
                    }
                    .padding()
                    .frame(width: 280, height: 210)
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
