//
//  ContentView.swift
//  TipKit
//
//  Created by Yunus Emre Taşdemir on 15.09.2023.
//

import SwiftUI
import TipKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct FavouriteTip: Tip {
    
}

#Preview {
    ContentView()
}
