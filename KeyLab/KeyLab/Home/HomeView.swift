//
//  HomeView.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import SwiftUI

struct HomeView: View {
    @State private var tipPageIndex: Int = 1
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 36, pinnedViews: .sectionHeaders) {
                Section {
                    HStack {
                        Button {
                            // TODO: TabBar Paging
                        } label: {
                            VStack {
                                Image(systemName: "cpu")
                                Text("조립")
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 180)
                        .tint(Color(red: 1, green: 1, blue: 0))
                        .background(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        Button {
                            // TODO: TabBar Paging
                        } label: {
                            VStack {
                                Image(systemName: "cpu")
                                Text("부품")
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 180)
                        .background(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
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
                } header: {
                    VStack(spacing: 8) {
                        HStack {
                            Text("KeyLab")
                                .font(.largeTitle)
                            
                            Spacer()
                            
                            Button("", systemImage: "cart") {
                                
                            }
                            .tint(.accentColor)
                        }
                        .padding(.horizontal, 16)
                        
                        Rectangle()
                            .frame(height: 0.3)
                    }
                    .background()
                }
            }
        }
        .clipped()
    }
}

#Preview {
    HomeView()
}

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

struct ProductDoubleLineGridView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(), GridItem()], spacing: 16) {
                ForEach(1...10, id: \.self) { index in
                    VStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.blue)
                            .frame(height: 80)
                        Text("조합 \(index)")
                        Text("트렌디한 감성의 어쩌구")
                    }
                    .frame(maxWidth: 200)
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
