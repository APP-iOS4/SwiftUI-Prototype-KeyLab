//
//  CheckBoxToggle.swift
//  KeyLab
//
//  Created by 유지호 on 2/21/24.
//

import SwiftUI

struct CheckBoxToggle: View {
    @State private var isSelected: Bool = false
    
    var body: some View {
        
        Button {
            isSelected.toggle()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .stroke()
                    .background()
                
                if isSelected {
                    Image(systemName: "checkmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                }
            }
        }
        .frame(width: 30, height: 30)
        .tint(Color(red: 255/255, green: 154/255, blue: 105/255))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    CheckBoxToggle()
}
