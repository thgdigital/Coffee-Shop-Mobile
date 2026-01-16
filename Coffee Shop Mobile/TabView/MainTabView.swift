//
//  MainTabView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 06/12/25.
//

import SwiftUI
import UIKit

struct MainTabView: View {
    @State private var selectedTab: TabItem = .home
        
        var body: some View {
            VStack(spacing: 0) {
                
                Group {
                    switch selectedTab {
                    case .home:
                        HomeView()
                    case .favorites:
                        BlankView()
                    case .bag:
                        BlankView()
                    case .notifications:
                        BlankView()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                CustomTabBar(selected: $selectedTab)
            }
            .ignoresSafeArea(.keyboard)
        }
}

#Preview {
    MainTabView()
}

struct BlankView: View {
    var body: some View {
        Color.clear
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
