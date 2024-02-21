//
//  HomeView.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var tabViewIndex: Int
    @State private var tipPageIndex: Int = 1
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 36) {
                    ZStack(alignment: .bottomTrailing) {
                        TabView(selection: $tipPageIndex) {
                            ForEach(1...3, id: \.self) { index in
                                Image("ad1")
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(lineWidth: 0.1)
                                    }
                                    .padding(.horizontal, 16)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        .frame(height: 100)
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 50, height: 26)
                            .padding(.horizontal, 16)
                            .foregroundStyle(.black.opacity(0.25))
                            .overlay {
                                Text("\(tipPageIndex) / 3")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                            }
                    }
                    
                    HStack {
                        Button {
                            tabViewIndex = 2
                        } label: {
                            VStack {
                                Image(systemName: "wrench.and.screwdriver.fill")
                                Text("조립")
                            }
                        }
                        .frame(maxWidth: .infinity, minHeight: 70)
                        .background(.mainorange)
                        .tint(Color(.white))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        Button {
                            tabViewIndex = 3
                        } label: {
                            VStack {
                                Image(systemName: "gearshape.2.fill")
                                Text("부품")
                            }
                        }
                        .frame(maxWidth: .infinity, minHeight: 70)
                        .background(.mainorange)
                        .tint(Color(.white))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    .padding(.horizontal, 16)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("조합 Top 10")
                            .font(.title)
                            .padding(.horizontal, 16)
                        
                        ProductDoubleLineGridView()
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("부품 Top 10")
                            .font(.title)
                            .padding(.horizontal, 16)
                        
                        ProductDoubleLineGridView()
                    }
                    

                    
                }
                .padding(.top, 32)
            }
            .clipped()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("KeyLab")
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
        }
    }
}


#Preview {
    HomeView(tabViewIndex: .constant(1))
}
