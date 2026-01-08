//
//  UserDefaultsOnboardingStorage.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 08/01/26.
//

import Foundation

protocol OnboardingStorage {
    func setSeen(_ value: Bool)
    func hasSeen() -> Bool
}

class UserDefaultsOnboardingStorage: OnboardingStorage {

    func setSeen(_ value: Bool) {
        UserDefaults.standard.set(value, forKey: UserDefaultsKeys.onboarding.hasSeen)
    }

    func hasSeen() -> Bool {
        UserDefaults.standard.bool(forKey: UserDefaultsKeys.onboarding.hasSeen)
    }
}
