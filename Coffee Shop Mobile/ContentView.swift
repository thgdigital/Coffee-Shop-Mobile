//
//  ContentView.swift
//  Coffee Shop Mobile
//
//  Created by Thiago Santos on 06/12/25.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!").font(.brand(.subheading))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

