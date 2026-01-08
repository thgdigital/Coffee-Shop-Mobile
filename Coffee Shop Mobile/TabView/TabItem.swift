//
//  TabItem.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 07/01/26.
//

import Foundation

enum TabItem: Int, CaseIterable {
    case home
    case favorites
    case bag
    case notifications
    
    var assetName: String {
        switch self {
        case .home: return "home"
        case .favorites: return "heart"
        case .bag: return "shopping"
        case .notifications: return "notifications"
        }
    }
    
    var filled: String {
        switch self {
        case .home: return "home_filled"
        case .favorites: return "heart_filled"
        case .bag: return "shopping_filled"
        case .notifications: return "notifications_filled"
        }
    }
}
