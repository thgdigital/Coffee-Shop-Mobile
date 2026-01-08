//
//  RootView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 08/01/26.
//

import SwiftUI

struct RootView: View {
    
    @ObservedObject var onboardingViewModel: OnboardingViewModel

       var body: some View {
           if onboardingViewModel.shouldShowOnboarding() {
               OnboardingView(viewModel: onboardingViewModel)
           } else {
               MainTabView()
           }
       }
}

