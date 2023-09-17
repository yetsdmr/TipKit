//
//  ContentView.swift
//  TipKit
//
//  Created by Yunus Emre Taşdemir on 15.09.2023.
//

import SwiftUI
import TipKit

struct ContentView: View {
    private var favouriteTip = FavouriteTip()
    var body: some View {
        NavigationStack {
            List {
                
            }
            .navigationTitle ("Messages")
            .toolbar (content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "star")
                    }
                    .popoverTip(favouriteTip,arrowEdge: .top)

                }
            })
        }
    }
}

struct FavouriteTip: Tip {
    
    var title: Text {
        Text("Move Contact to Favourites")
    }
    
    var message: Text? {
        Text("Frequently opened Chats can be moved to favourites for ease of access!")
    }
    
    var asset: Image? {
        Image(systemName: "star")
    }
}

#Preview {
    ContentView()
}
