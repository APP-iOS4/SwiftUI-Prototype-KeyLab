//
//  AssemblyProgressView.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct AssemblyProgressView: View {
    @Binding var progressCount: Int
    
    var body: some View {
        ZStack(alignment: .leading){
            Color(red: 255 / 255, green: 154 / 255, blue: 105 / 255).opacity(0.2)
            HStack{
                ForEach((1...progressCount),id: \.self){_ in
                    Rectangle().foregroundColor(Color.mainorange)
                }
                if progressCount <= 9{
                    ForEach((progressCount ... 9),id: \.self){_ in
                        Rectangle().foregroundColor(Color.mainorange.opacity(0.2))
                    }
                }
            }
        }
    }
}

#Preview {
    AssemblyProgressView(progressCount: .constant(4))
}
