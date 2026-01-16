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
            .frame(height: DS.Sizes.headerHeight)
            
            VStack(alignment: .leading, spacing: DS.Spacing.xl) {
                
                LocationHeaderView()
                
                HomeSearchView(text: $searchText)
                
                PromoCardView()
                    .frame(height: DS.Sizes.promoCardHeight)
                    .cornerRadius(DS.Radius.lg)
                    .shadow(radius: DS.Radius.md)
            }
            .padding(.top, DS.Padding.xxxl)
            .padding(.horizontal, DS.Padding.xl)
        }
    }
}

#Preview {
    HomeSectionHeaderView()
}
