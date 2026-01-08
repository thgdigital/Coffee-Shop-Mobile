//
//  OnboardingView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 03/01/26.
//

import SwiftUI

struct OnboardingView: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    @AppStorage(UserDefaultsKeys.onboarding.hasSeen) var hasSeenOnboarding: Bool = false

    
    var body: some View {
        VStack {
            OnboardingHeaderView()
            OnboardingTextsView()
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
