//
//  Product.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import Foundation

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
