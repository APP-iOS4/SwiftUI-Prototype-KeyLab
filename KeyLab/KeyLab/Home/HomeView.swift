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
                LazyVStack(spacing: 36) {
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
                        .frame(maxWidth: .infinity, minHeight: 180)
                        .tint(Color(red: 255/255, green: 154/255, blue: 105/255))
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(red: 255/255, green: 154/255, blue: 105/255))
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
                        .frame(height: 180)
                        .tint(Color(red: 255/255, green: 154/255, blue: 105/255))
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(red: 255/255, green: 154/255, blue: 105/255))
                        }
                    }
                    .padding(.horizontal, 16)
                    
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
                        .frame(height: 140)
                        
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
                    
                    VStack(alignment: .leading) {
                        Text("후기 Top 10")
                            .font(.title)
                            .padding(.horizontal, 16)
                        
                        ReviewHorizontalScrollView()
                    }
                    
                    VStack(alignment: .leading) {
                        Text("인기 조합")
                            .font(.title)
                            .padding(.horizontal, 16)
                        
                        ProductDoubleLineGridView()
                    }
                    
                }
                .padding(.top, 8)
            }
            .clipped()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("KeyLab")
                        .font(.largeTitle)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("", systemImage: "cart") {
                        
                    }
                    .tint(Color(red: 255/255, green: 154/255, blue: 105/255))
                }
            }
        }
    }
}


#Preview {
    HomeView(tabViewIndex: .constant(1))
}
