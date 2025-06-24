//
//  InternsProjectApp.swift
//  InternsProject
//
//  Created by Ivan on 22.06.25.
//

import SwiftUI

@main
struct InternsProjectApp: App {
    @StateObject var counter = CountHelper()
    @StateObject var gameState = GameState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(counter)
                .environmentObject(gameState)
        }
    }
}
