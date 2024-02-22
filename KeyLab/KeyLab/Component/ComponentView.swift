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
    @FocusState private var isTextFieldFocused: Bool
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack(alignment: .center) {
                        TextField("검색하기", text: $searchText)
                            .focused($isTextFieldFocused)
                        
                        Button("", systemImage: "magnifyingglass") {
                            isTextFieldFocused = false
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
                    
                    Image("keyboard_example")
                        .resizable()
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(lineWidth: 0.1)
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
                                ProductItemView(product: product, flag: "component")
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
            .scrollDismissesKeyboard(.immediately)
        }
    }
}

#Preview {
    ComponentView()
}
