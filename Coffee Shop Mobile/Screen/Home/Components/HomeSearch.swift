//
//  HomeSearch.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 16/01/26.
//

import SwiftUI

struct HomeSearch: View {
    @Binding var text: String
    
    var body: some View {
        HStack(spacing: DS.Spacing.md) {
            HStack(spacing: DS.Spacing.md) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Search coffee", text: $text)
                    .foregroundColor(.white)
                    .textInputAutocapitalization(.never)
            }
            .padding(.horizontal, DS.Spacing.lg)
            .padding(.vertical, DS.Spacing.md)
            .background(Color.white.opacity(DS.Opacity.xs))
            .cornerRadius(DS.Radius.md)
            
            Button {
                print("filter tapped")
            } label: {
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(.white)
                    .frame(width: DS.Sizes.searchHeight, height: DS.Sizes.searchHeight)
                    .background(Color.brown)
                    .cornerRadius(DS.Radius.md)
            }
            
        }
    }
}

#Preview {
    HomeSearch(text: .constant(""))
}
