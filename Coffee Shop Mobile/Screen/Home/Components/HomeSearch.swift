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
        HStack(spacing: 12) {
            HStack(spacing: 12) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Search coffee", text: $text)
                    .foregroundColor(.white)
                    .textInputAutocapitalization(.never)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color.white.opacity(0.12))
            .cornerRadius(16)
            
            Button {
                print("filter tapped")
            } label: {
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .background(Color.brown)
                    .cornerRadius(16)
            }
            
        }
    }
}

#Preview {
    HomeSearch(text: .constant(""))
}
