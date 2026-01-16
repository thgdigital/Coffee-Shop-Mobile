//
//  HomeSectionHeaderView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 08/01/26.
//

import SwiftUI

struct HomeSectionHeaderView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(hex: "#111111"),
                    Color(hex: "#313131")
                ]),
                startPoint: .leading,
                endPoint: .trailing
            )
            .frame(height: 260)
            
            VStack(alignment: .leading, spacing: 20) {
                
                LocationHeaderView()
                
                HomeSearch(text: $searchText)
                
                PromoCardView()
                    .frame(height: 160)
                    .cornerRadius(24)
                    .shadow(radius: 10)
            }
            .padding(.top, 60)
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    HomeSectionHeaderView()
}
