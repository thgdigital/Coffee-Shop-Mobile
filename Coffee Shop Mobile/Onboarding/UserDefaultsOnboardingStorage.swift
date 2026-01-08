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

    private let key = "hasSeenOnboarding"

    func setSeen(_ value: Bool) {
        UserDefaults.standard.set(value, forKey: key)
    }

    func hasSeen() -> Bool {
        UserDefaults.standard.bool(forKey: key)
    }
}
