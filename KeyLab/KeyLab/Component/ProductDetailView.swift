//
//  ProductDetailView.swift
//  KeyLab
//
//  Created by woong on 2/21/24.
//

import SwiftUI

struct ProductDetailView: View {
    //    @Binding var productName: String
    @State private var isDetailFull: Bool = false
    @State private var isSheetShow: Bool = false
    
    
    
    var body: some View {
        NavigationStack {
            // 1안
            //            GeometryReader { proxy in
            //                Image("cartkeycap")
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fit)
            //                    .frame(width: proxy.size.width)
            //            }
            // 2안
            
            ScrollView {
                
                TabView {
                    
                    Image("cartkeycap")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image("cartkeycap")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image("cartkeycap")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .padding(.top)
                .tabViewStyle(PageTabViewStyle())
                .scrollIndicators(.hidden)
                .indexViewStyle(.page(backgroundDisplayMode: .always))//.interactive로 바꿔야됨
                .frame(height: 270)
                
                
                
                VStack(alignment: .leading) {
                    HStack(spacing: 0) {
                        Text("닌텐도")
                            .padding(.leading)
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        Image(systemName: "star")
                            .foregroundStyle(.yellow)
                        
                        Text("(4,237)")
                            .padding(.leading, 5)
                            .padding(.trailing)
                            
                        
                    }
                    .padding(.bottom, 1)
                    
                    Text("별의 커비 키캡")
                        .font(.title)
                        .padding(.leading)
                    HStack {
                        Text("7%")//할인
                            .font(.title3)
                            .padding(.top, 1)
                            .padding(.leading)
                            .foregroundStyle(.red)
                        
                        Text("35,000원")//할인
                            .font(.title3)
                            .padding(.top, 1)
                            .foregroundStyle(.gray)
                            .opacity(0.7)
                            .strikethrough(true)
                    }
                    
                    
                    Text("30,000원")
                        .font(.title)
                        .padding(.leading)
                    
                    Text("3000원")//할인
                        .font(.title3)
                        .padding(.leading)
                        .foregroundStyle(.gray)
                        .opacity(0.7)
                    
                    // 배송비
                    
                    Button {
                        isSheetShow.toggle()
                    } label: {
                        Text("구매하기")
                            .font(.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .clipShape(Capsule())
                    .tint(.mainorange)
                    .padding()//destination 수정 필
                    
                    Divider()
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    
                    
                    
                     
                    if !isDetailFull {
                        Image("productSample")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 300, alignment: .top)
                            .clipped()
                        Button {
                            isDetailFull.toggle()
                        } label: {
                            Text("펼쳐보기")
                                .frame(minWidth: 100, maxWidth: .infinity)
                        }
                        .foregroundStyle(.black)
                        .buttonStyle(.bordered)
                        .foregroundStyle(.blue)
                        
                        
                        
                    } else {
                        Image("productSample")
                            .resizable()
                            .scaledToFit()
                            .clipped()
                        Button {
                            isDetailFull.toggle()
                        } label: {
                            Text("접기")
                                .frame(minWidth: 100, maxWidth: .infinity)
                        }
                        .foregroundStyle(.black)
                        .buttonStyle(.bordered)
                        .foregroundStyle(.blue)
                    }
                    
                    
                    
                    

                    
                    Spacer()
                }
            }
            .sheet(isPresented: $isSheetShow) {
                PurchaseSheetView()
                    .presentationDetents([.fraction(0.3)])
                    .presentationDragIndicator(.visible)
            }
            
        }
    }
    
    public func setUpAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .mainorange
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray
    }
}
#Preview {
    NavigationStack{
        ProductDetailView()
    }
}
