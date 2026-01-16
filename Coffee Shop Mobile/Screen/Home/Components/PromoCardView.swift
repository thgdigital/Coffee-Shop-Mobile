//
//  PromoCardView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 09/01/26.
//

import SwiftUI

struct PromoCardView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            
            Image("promoBackground")
                .resizable()
                .scaledToFill()
                .frame(height: DS.Sizes.promoCardHeight)
                .clipped()
                .cornerRadius(DS.Radius.lg)
            
            VStack(alignment: .leading, spacing: DS.Spacing.sm) {
                
                Text("Promo")
                    .font(.brand(.button))
                    .padding(.horizontal, DS.Padding.md)
                    .padding(.vertical, DS.Padding.sm)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(DS.Radius.md)
                
                Text("Buy one get\none FREE")
                    .font(.brand(.title))
                    .foregroundColor(.white)
                    .shadow(radius: DS.Radius.xs)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(DS.Padding.xl)
        }
        .frame(height: DS.Sizes.promoCardHeight)
        .shadow(color: .black.opacity(DS.Opacity.sm), radius: DS.Radius.sm, y: DS.Spacing.xs)
    }
}

#Preview {
    PromoCardView()
}
