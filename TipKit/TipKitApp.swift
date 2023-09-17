//
//  TipKitApp.swift
//  TipKit
//
//  Created by Yunus Emre Taşdemir on 15.09.2023.
//

import SwiftUI
import TipKit

@main
struct TipKitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    do {
                        try await Tips.configure {
                            DisplayFrequency(.immediate)
                            DatastoreLocation(.applicationDefault)
                            //DatastoreLocation(.applicationDefault, shouldReset: true)
                        }
                    } catch {
                        print (error.localizedDescription)
                    }
                }
        }
    }
}
