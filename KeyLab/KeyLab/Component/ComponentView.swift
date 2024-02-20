//
//  ComponentView.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import SwiftUI

struct ComponentView: View {
    @State private var productList: [Product] = Product.mockData
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("부품")
                    .font(.largeTitle)
                
                Spacer()
                
                Button("", systemImage: "cart") {
                    // TODO: 장바구니 이동
                }
            }
            .padding(.horizontal, 16)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("키보드 구성")
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.blue)
                        
                        Text("여기에 커스텀 키보드 구성 사진")
                    }
                }
                .frame(height: 200)
                .padding(.horizontal, 16)
                
                LazyVGrid(
                    columns: [GridItem(.flexible()), GridItem(.flexible())],
                    spacing: 16,
                    pinnedViews: .sectionHeaders
                ) {
                    Section {
                        ForEach(productList) { product in
                            ProductItemView(product: product)
                        }
                        
                    } header: {
                        CategoryBadgeListView(categoryList: [])
                    }
                }
            }
        }
    }
}

#Preview {
    ComponentView()
}
