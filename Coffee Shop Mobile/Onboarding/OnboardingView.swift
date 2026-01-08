//
//  OnboardingView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 03/01/26.
//

import SwiftUI

struct OnboardingView: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false

    
    var body: some View {
        VStack {
            OnboardingHeader()
            OnboardingTexts()
            Divider()
            HStack {
                PrimaryButton(title: "Get Started") {
                    viewModel.markAsSeen()
                    hasSeenOnboarding = true
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 50)
        }.background(.black)
        Divider()
    }
}
