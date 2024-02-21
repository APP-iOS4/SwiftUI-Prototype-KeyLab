//
//  Review.swift
//  KeyLab
//
//  Created by 강 태훈 on 2/20/24.
//

import SwiftUI

struct Review: View {
    @State private var productList: [Product] = Product.mockData
    @State private var pressed = false
    
    let gridItems = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: gridItems,
                spacing: 16,
                pinnedViews: .sectionHeaders
            ) {
                Section {
                    ForEach(productList) { product in
                        NavigationLink {
                            DetailView(item: reviewItems[0])
                        } label: {
                            ProductItemView(product: product)
                        }
                        .buttonStyle(.plain)
                    }
                } header: {
                    VStack(alignment: .trailing) {
                        CategoryBadgeListView(categoryList: texts)
                        
                        Button(action: {
                            self.pressed.toggle()
                        }) {
                            HStack {
                                Text("인기순")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Image(systemName: pressed ? "chevron.up" : "chevron.down")
                                    .font(.headline)
                                    .foregroundColor(.black)
                            }
                            .padding(.bottom, 4)
                        }
                        
                        Rectangle()
                            .frame(height: 0.1)
                    }
                    .background()
                }
                
            }
            .toolbar(.hidden)
        }
        .clipped()
    }
}


struct Review_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TabView {
                Review()
            }
        }
    }
}
