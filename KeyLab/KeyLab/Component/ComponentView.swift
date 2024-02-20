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
                            VStack(alignment: .leading, spacing: 0) {
                                Image(systemName: "photo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundStyle(.blue)
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
                            }
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 0.1)
                            }
                        }
                        
                    } header: {
                        ScrollView(.horizontal) {
                            LazyHStack {
                                ForEach(1...10, id: \.self) { count in
                                    Button {
                                        
                                    } label: {
                                        Text("부품 \(count)")
                                            .font(.headline)
                                            .foregroundStyle(.white)
                                            .padding(8)
                                    }
                                    .background(.blue)
                                    .clipShape(RoundedRectangle(cornerRadius: 40))
                                }
                            }
                            .padding(.horizontal, 16)
                        }
                        .padding(.vertical, 4)
                        .background()
                        .scrollIndicators(.hidden)
                    }
                }
            }
        }
    }
}

#Preview {
    ComponentView()
}


struct Product: Identifiable {
    var id: UUID = UUID()
    var name: String
    var explain: String
    var price: Int
    var likeCount: Int
    
    static let mockData: [Product] = [
        Product(
            name: "멋진 아이템",
            explain: "너무 멋있어요너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        ),
        Product(
            name: "멋진 아이템",
            explain: "너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        ),
        Product(
            name: "멋진 아이템",
            explain: "너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        ),
        Product(
            name: "멋진 아이템멋진 아이템멋진 아이템멋진 아이템멋진 아이템멋진 아이템멋진 아이템멋진 아이템",
            explain: "너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        ),
        Product(
            name: "멋진 아이템",
            explain: "너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        ),
        Product(
            name: "멋진 아이템",
            explain: "너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        ),
        Product(
            name: "멋진 아이템",
            explain: "너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        ),
        Product(
            name: "멋진 아이템",
            explain: "너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        ),
        Product(
            name: "멋진 아이템",
            explain: "너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        ),
        Product(
            name: "멋진 아이템",
            explain: "너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~너무 멋있어요~",
            price: 30000,
            likeCount: 4827
        )
    ]
}
