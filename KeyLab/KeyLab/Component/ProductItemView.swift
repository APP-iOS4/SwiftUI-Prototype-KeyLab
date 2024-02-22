//
//  ProductItemView.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import SwiftUI

struct ProductItemView: View {
    var product: Product
    var flag: String
    @State private var isDetailSheet = false
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.gray.opacity(0.7))
                .padding(8)
            
            Text(product.name)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.horizontal, 8)
                .padding(.bottom, 6)
                .lineLimit(2)
            
            Text(product.explain)
                .font(.footnote)
                .padding(.horizontal, 8)
                .padding(.bottom, 6)
                .lineLimit(2)
            
            Text("\(product.price.formatted())원")
                .padding([.horizontal, .bottom], 8)
            
            HStack {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.red)
                
                Text(product.likeCount.formatted())
                    .font(.subheadline)
            }
            .padding([.horizontal, .bottom], 6)
            
            Spacer()
        }.onTapGesture {
            isDetailSheet.toggle()
        }
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 0.1)
        }
        
        .sheet(isPresented: $isDetailSheet, content: {
            if flag == "component" {
                ProductDetailView()
            } else {
                ReviewSubView()
            }
        }).presentationDragIndicator(.visible)
    }
}

#Preview {
    ProductItemView(product: Product.mockData[0], flag: "component")
}
