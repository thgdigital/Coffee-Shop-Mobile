//
//  PrimaryButton.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 07/01/26.
//

import SwiftUI

struct PrimaryButton: View {
    var title: String
    var action: (() -> Void?)? = nil

    var body: some View {
        
        Button(title) {
            action?()
        }
        .frame(maxWidth: .infinity, minHeight: 56)
        .tint(.white)
        .font(.brand(.button))
        .background(.brownNormal)
        .cornerRadius(16)
    }
}


#Preview {
    PrimaryButton(title: "Teste")
}
