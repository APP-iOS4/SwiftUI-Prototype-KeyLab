//
//  OrderView.swift
//  KeyLab
//
//  Created by woong on 2/22/24.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        ScrollView {
            Image("orderlist")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    OrderView()
}
