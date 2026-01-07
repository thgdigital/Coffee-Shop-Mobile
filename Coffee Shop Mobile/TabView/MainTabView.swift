//
//  MainTabView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 06/12/25.
//

import SwiftUI
import UIKit

struct MainTabView: View {
    @Binding var selected: TabItem
        
        var body: some View {
            HStack {
                ForEach(TabItem.allCases, id: \.self) { tab in
                    Button {
                        withAnimation(.spring()) {
                            selected = tab
                        }
                    } label: {
                        VStack(spacing: 6) {
                            
                            Image(systemName: tab.icon)
                                .font(.system(size: 24))
                                .foregroundColor(selected == tab ? .brown : .gray)
                            
                            RoundedRectangle(cornerRadius: 3)
                                .fill(selected == tab ? Color.brown : Color.clear)
                                .frame(width: 20, height: 4)
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
            }
            .padding(.vertical, 12)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .black.opacity(0.05), radius: 10, x: 0, y: -5)
        }
}

#Preview {
    MainTabView(selected: .constant(.home))
}
