//
//  OnboardingViewModel.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 08/01/26.
//

import Combine

class OnboardingViewModel: ObservableObject {
    

    private let storage: OnboardingStorage

    init(storage: OnboardingStorage = UserDefaultsOnboardingStorage()) {
        self.storage = storage
    }

    func markAsSeen() {
        storage.setSeen(true)
    }

    func shouldShowOnboarding() -> Bool {
        !storage.hasSeen()
    }
}

