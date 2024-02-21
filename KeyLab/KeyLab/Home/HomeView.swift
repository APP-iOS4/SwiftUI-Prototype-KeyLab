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
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 0.1)
                                    .padding(.horizontal, 16)
                                    .overlay {
                                        Text("꿀팁\(index)")
                                            .font(.title)
                                    }
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
                            // TODO: TabBar Paging
                            tabViewIndex = 2
                        } label: {
                            VStack {
                                Image(systemName: "cpu")
                                Text("조립")
                            }
                        }
                        .frame(maxWidth: .infinity, minHeight: 70)
                        .tint(Color(.mainorange))
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.mainorange))
                        }
                        
                        Button {
                            // TODO: TabBar Paging
                            tabViewIndex = 3
                        } label: {
                            VStack {
                                Image(systemName: "cpu")
                                Text("부품")
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .tint(Color(.mainorange))
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.mainorange))
                        }
                    }
                    .padding(.horizontal, 16)
                    
                    VStack(alignment: .leading) {
                        Text("인기 조합")
                            .font(.title)
                            .padding(.horizontal, 16)
                        
                        ProductDoubleLineGridView()
                    }
                    
                    VStack(alignment: .leading) {
                        Text("후기 Top 10")
                            .font(.title)
                            .padding(.horizontal, 16)
                        
                        ReviewHorizontalScrollView()
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
