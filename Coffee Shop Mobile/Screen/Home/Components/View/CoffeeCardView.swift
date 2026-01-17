//
//  CoffeeCardView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 16/01/26.
//

import SwiftUI

struct CoffeeCardView: View {
    let image: String
    let title: String
    let subtitle: String
    let price: Double
    let isFavorite: Bool
    let onTap: () -> Void
    let onFavorite: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: DS.Spacing.md) {
            
            ZStack(alignment: .topTrailing) {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 140)
                    .clipped()
                    .cornerRadius(DS.Radius.lg)
                
                HStack(spacing: DS.Spacing.xs) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 12))

                    Text(String(format: "%.1f", 0.5))
                        .foregroundColor(.white)
                        .font(.brand(.rating))
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.black.opacity(0.4))
                .cornerRadius(DS.Radius.sm)
                .padding(.top, DS.Spacing.sm)
                .padding(.trailing, DS.Spacing.sm)
            }
            
            VStack(alignment: .leading, spacing: DS.Spacing.xs) {
                Text(title)
                    .font(.brand(.button))
                    .foregroundColor(.greyNormalActive)
                
                Text(subtitle)
                    .font(.brand(.caption))
                    .foregroundColor(.greyLighter)
            }
            
            HStack {
                Text(String(format: "$ %.2f", price))
                    .font(.brand(.subheading))
                    .foregroundColor(.greyDarkActive)
                
                Spacer()
                
                Button(action: onTap) {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .frame(width: 32, height: 32)
                        .background(Color.brown)
                        .clipShape(Circle())
                }
            }
        }
        .padding(DS.Spacing.lg)
        .background(.white)
    }
}

#Preview {
    CoffeeCardView(
        image: "cappuccino",
        title: "Cappuccino",
        subtitle: "With oat milk",
        price: 4.99,
        isFavorite: false,
        onTap: {},
        onFavorite: {}
    )
}
