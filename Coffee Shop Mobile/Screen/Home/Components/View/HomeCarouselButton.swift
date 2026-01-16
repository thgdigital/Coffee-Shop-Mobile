//
//  HomeCarouselButton.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 16/01/26.
//

import SwiftUI

struct HomeCarouselButton: View {
    let title: String
        let isSelected: Bool
        let action: () -> Void

        var body: some View {
            Button(action: action) {
                Text(title)
                    .font(.brand(isSelected ? .carouselButton : .body))
                    .foregroundColor(isSelected ? .white : .grayNormal)
                    .padding(.horizontal, DS.Spacing.lg)
                    .padding(.vertical, DS.Spacing.sm)
                    .background(
                        isSelected ?
                        Color.brownNormal.cornerRadius(DS.Radius.md) :
                        Color.white.opacity(0.1).cornerRadius(DS.Radius.md)
                    )
            }
            .animation(.easeInOut(duration: 0.25), value: isSelected)
        }
}

