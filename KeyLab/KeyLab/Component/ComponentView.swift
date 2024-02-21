//
//  ComponentView.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import SwiftUI

struct ComponentView: View {
    @State private var productList: [Product] = Product.mockData
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack(alignment: .center) {
                        TextField("검색하기", text: $searchText)
                        
                        Button("", systemImage: "magnifyingglass") {
                            
                        }
                        .tint(.mainorange)
                    }
                    .frame(height: 44)
                    .padding(.horizontal, 8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(.gray).opacity(0.4))
                    }
                    .padding([.horizontal, .bottom], 16)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(.mainorange))
                        
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
                    .tint(Color(.mainorange))
                }
            }
        }
    }
}

#Preview {
    ComponentView()
}
