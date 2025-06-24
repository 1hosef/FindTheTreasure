//
//  CounterHelper.swift
//  InternsProject
//
//  Created by Ivan on 23.06.25.
//

import SwiftUI

class CountHelper: ObservableObject {
    @Published var wins: Int = 0
    @Published var loses: Int = 0
    @Published var games: Int = 0
    @Published var oneStar: Int = 0
    @Published var twoStar: Int = 0
    @Published var threeStar: Int = 0
}

