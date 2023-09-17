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
                NavigationLink("iJustine") {
                    VStack {
                        
                    }
                    .navigationTitle("iJustine")
                    .onAppear(perform: {
                        FavouriteTip.numberofTimesVisited.donate()
                    })
                    .toolbar(content: {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button {
                                //print(favouriteTip.status, FavouriteTip.showTip)
                                print(favouriteTip.status)
                                //FavouriteTip.showTip = true
                            } label: {
                                Image(systemName: "star")
                            }
                            .popoverTip(favouriteTip,arrowEdge: .top)

                        }
                    })
                }
            }
            .navigationTitle ("Messages")
        }
    }
}

struct FavouriteTip: Tip {
    @Parameter
    static var showTip: Bool = false
    static var numberofTimesVisited: Event = Event(id: "dev. yetsdmr.tip.event.numberoftimesvisited")
    
    var title: Text {
        Text("Move Contact to Favourites")
    }
    
    var message: Text? {
        Text("Frequently opened Chats can be moved to favourites for ease of access!")
    }
    
    var asset: Image? {
        Image(systemName: "star")
    }
    
    var options: [TipOption] {
        return [
            Tips.MaxDisplayCount(3)
        ]
    }
    
    var rules: [Rule] {
        return [
            //#Rule(Self.$showTip) { $0 == true }
            #Rule(Self.numberofTimesVisited) { $0.donations.count > 3 }
        ]
    }
}

#Preview {
    ContentView()
}
