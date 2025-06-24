//
//  ContentView.swift
//  InternsProject
//
//  Created by Ivan on 22.06.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                MainGameView()
                    .tabItem {
                        Image(systemName: "map")
                        Text("Game")
                    }
                InternsPartView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Statistics")
                    }
            }
            .accentColor(.red)
        }
    }
}

#Preview {
    ContentView()
}
