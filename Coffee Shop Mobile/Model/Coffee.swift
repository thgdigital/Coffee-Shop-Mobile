//
//  Coffee.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 16/01/26.
//


import Foundation

struct Coffee: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let subtitle: String
    let price: Double
    var isFavorite: Bool = false
}