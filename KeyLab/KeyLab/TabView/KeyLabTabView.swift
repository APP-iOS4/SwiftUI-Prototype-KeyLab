//
//  KeyLabTabView.swift
//  KeyLab
//
//  Created by 유지호 on 2/20/24.
//

import SwiftUI

struct KeyLabTabView: View {
    @State private var navigationPath: NavigationPath = .init()
    @State private var tabViewIndex: Int = 1
    
    var body: some View {
            TabView(selection: $tabViewIndex) {
                HomeView(tabViewIndex: $tabViewIndex)
                    .tag(1)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                AssemblyTotalView()
                    .tag(2)
                    .tabItem {
                        Label("Assembly", systemImage: "wrench.and.screwdriver.fill")
                    }
                
                ComponentView()
                    .tag(3)
                    .tabItem {
                        Label("Component", systemImage: "gearshape.2.fill")
                    }
                
                Review()
                    .tag(4)
                    .tabItem {
                        Label("Review", systemImage: "text.bubble.fill")
                    }
                
                MyPageView()
                    .tag(5)
                    .tabItem {
                        Label("Mypage", systemImage: "person.fill")
                    }
            }
            .tint(.mainorange)
            .toolbar(.hidden)
    }
}

#Preview {
    KeyLabTabView()
}
