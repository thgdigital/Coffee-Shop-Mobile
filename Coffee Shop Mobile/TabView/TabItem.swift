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
    
    var icon: String {
        switch self {
        case .home: return "house.fill"
        case .favorites: return "heart"
        case .bag: return "bag"
        case .notifications: return "bell"
        }
    }
}
