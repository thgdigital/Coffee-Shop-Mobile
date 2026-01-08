//
//  CustomTabBar.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 07/01/26.
//

import SwiftUI

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selected: TabItem
    @Namespace private var animation
    
    var body: some View {
        HStack {
            ForEach(TabItem.allCases, id: \.self) { tab in
                Button {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                        selected = tab
                    }
                } label: {
                    
                    let imageName: String = selected == tab ? tab.filled : tab.assetName
                    
                    VStack(spacing: 6) {
                        
                        ZStack {
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 22, height: 22)
                        }
                        
                        ZStack {
                            if selected == tab {
                                RoundedRectangle(cornerRadius: 3)
                                    .fill(.brownNormal)
                                    .matchedGeometryEffect(id: "tabIndicator", in: animation)
                                    .frame(width: 22, height: 4)
                            } else {
                                Color.clear
                                    .frame(width: 22, height: 4)
                            }
                        }
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
    CustomTabBar(selected: .constant(.home))
}
