//
//  HomeCoffeeGridSection.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 16/01/26.
//

import SwiftUI

struct HomeCoffeeGridSection: View {
    let coffees: [Coffee]
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: DS.Spacing.lg) {
            ForEach(coffees) { coffee in
                   
                    CoffeeCardView(
                        image: coffee.image,
                        title: coffee.title,
                        subtitle: coffee.subtitle,
                        price: coffee.price,
                        isFavorite: coffee.isFavorite,
                        onTap: { print("Add to cart") },
                        onFavorite: { print("Toggle favorite") }
                    )
            }
        }
        .padding(.horizontal, DS.Spacing.lg)
        .padding(.top, DS.Spacing.lg)
    }
}

#Preview {
    HomeCoffeeGridSection(coffees: [])
}
