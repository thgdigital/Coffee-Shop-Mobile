//
//  OnboardingTextsView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 07/01/26.
//

import SwiftUI

struct OnboardingTextsView: View {
    var body: some View {
        VStack {
            Text("Fall in Love with Coffee in Blissful Delight!").font(.brand(.title)).foregroundStyle(.white)
                .padding([.leading, .trailing], DS.Padding.lg)
                .multilineTextAlignment(.center)
                .frame(
                    maxWidth: .infinity,
                    alignment: .center
                )
            Divider()
            
            Text("Welcome to our cozy coffee corner, where every cup is a delightful for you.").font(.brand(.caption)).foregroundStyle(.greyLighter)
                .padding([.leading, .trailing], DS.Padding.sm)
                .multilineTextAlignment(.center)
                .frame(
                    maxWidth: .infinity,
                    alignment: .center
            )
        }
    }
}

#Preview {
    OnboardingTextsView()
}
