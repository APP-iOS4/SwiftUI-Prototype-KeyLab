//
//  ProductCell.swift
//  KeyLab
//
//  Created by 김예지 on 2/20/24.
//

import SwiftUI

struct ProductCell: View {
    //나중엔 모델에서 받아오기
    var productName = " [부품] 제품명 / 부품번호 "
    
    @Binding var isclickwidth: Bool
    
    //선택시에 바인딩값으로 true면 border 주황색 || width를 진하게 하던가
    var body: some View {
        VStack{
            ZStack{
                if isclickwidth{
                    Image("assemblyProductCell").resizable().aspectRatio(contentMode: .fit).frame(width: 150, height: 200).border(Color(red: 255 / 255, green: 154 / 255, blue: 105 / 255), width: 5)
                }else{
                    Image("assemblyProductCell").resizable().aspectRatio(contentMode: .fit).frame(width: 150, height: 200).border(Color(red: 255 / 255, green: 154 / 255, blue: 105 / 255), width: 1)
                }
                
                //찜표시..
                Text("\n\n\n\n\n\n\n                         🧡")
            }
            Text("\(productName)")
        }
    }
}

#Preview {
    ProductCell( isclickwidth: .constant(false))
}
