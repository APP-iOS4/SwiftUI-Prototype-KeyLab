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
        NavigationView {
            ScrollView {
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 255/255, green: 154/255, blue: 105/255))
                        
                        Image("keyboard_example")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
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
                            CategoryBadgeListView(categoryList: categoryMockData)
                        }
                    }
                    .padding(.top, 16)
                }
                .padding(.top, 16)
            }
            .clipped()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("부품")
                        .font(.largeTitle)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        TotalCartView()
                    } label: {
                        Image(systemName: "cart")
                    }
                    .tint(Color(red: 255/255, green: 154/255, blue: 105/255))
                }
            }
        }
    }
}

#Preview {
    ComponentView()
}
