//
//  ReviewHorizontalScrollView.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import SwiftUI

struct ReviewHorizontalScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(1...5, id: \.self) { index in
                    VStack(alignment: .leading) {
                        Text("후기 \(index)")
                        Text("gooooooooooooooooooood")
                    }
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
    ReviewHorizontalScrollView()
}
