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
                .frame(height: 160)
                .clipped()
                .cornerRadius(26)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Promo")
                    .font(.system(size: 13, weight: .bold))
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                
                Text("Buy one get\none FREE")
                    .font(.brand(.title))
                    .foregroundColor(.white)
                    .shadow(radius: 4)
            }
            .padding(20)
        }
        .frame(height: 160)
        .shadow(color: .black.opacity(0.15), radius: 8, y: 4)
    }
}

#Preview {
    PromoCardView()
}
