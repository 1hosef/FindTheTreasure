//
//  GameState.swift
//  InternsProject
//
//  Created by josef on 24.06.25.
//

import SwiftUI

class GameState: ObservableObject {
    @Published var isMapOneCompleted: Bool = false
    @Published var isMapTwoCompleted: Bool = false
    @Published var isMapThreeCompleted: Bool = false
}
