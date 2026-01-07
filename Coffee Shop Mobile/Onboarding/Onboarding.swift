//
//  Onboarding.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 03/01/26.
//

import SwiftUI

struct Onboarding: View {
    
    var body: some View {
        VStack {
            OnboardingHeader()
            OnboardingTexts()
            Divider()
            HStack {
                PrimaryButton(title: "Get Started") {
                    
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 50)
        }.background(.black)
        Divider()
    }
}

#Preview {
    Onboarding()
}
