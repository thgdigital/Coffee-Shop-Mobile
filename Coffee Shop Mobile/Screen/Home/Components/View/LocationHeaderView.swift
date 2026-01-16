//
//  LocationHeaderView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 08/01/26.
//

import SwiftUI

struct LocationHeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: DS.Spacing.sm) {
            Text("Location")
                .font(.caption)
                .foregroundColor(.gray)
            
            HStack {
                Text("Bilzen, Tanjungbalai")
                    .font(.headline)
                    .bold()
                Image(systemName: "chevron.down")
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    LocationHeaderView()
}
