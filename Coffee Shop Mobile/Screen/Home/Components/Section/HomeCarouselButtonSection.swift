//
//  HomeCarouselButtonSection.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 16/01/26.
//

import SwiftUI

struct CarouselButtonSection: View {

    @State private var selectedIndex: Int = 0

    let items = ["All Coffee", "Cappuccino", "Cold Brew", "Latte", "Mocha", "Americano"]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: DS.Spacing.md) {
                ForEach(items.indices, id: \.self) { index in
                    HomeCarouselButton(
                        title: items[index],
                        isSelected: selectedIndex == index
                    ) {
                        selectedIndex = index
                    }
                }
            }
            .padding(.horizontal, DS.Spacing.lg)
        }
    }
}
