//
//  Coffee_Shop_MobileApp.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 06/12/25.
//

import SwiftUI

@main
struct Coffee_Shop_MobileApp: App {
    
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    @StateObject var viewModel = OnboardingViewModel()
    
    var body: some Scene {
        WindowGroup {
            if hasSeenOnboarding {
                MainTabView()
            } else {
                OnboardingView(viewModel: viewModel)
            }
        }
    }
}
