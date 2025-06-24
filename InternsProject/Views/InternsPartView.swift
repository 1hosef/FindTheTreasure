//
//  InternsPart.swift
//  InternsProject
//
//  Created by Ivan on 22.06.25.
//

import SwiftUI

struct InternsPartView: View {
    @EnvironmentObject var counter : CountHelper
    var totalStars : Int {
        return counter.oneStar * 1 + counter.twoStar * 2 + counter.threeStar * 3
    }
    var winsLoseRatio : Float {
        if counter.wins > 0 && counter.loses > 0 {
            return Float(counter.wins) / Float(counter.loses)
        } else {
            return 0.0
        }
    }
    var averageStars : Float {
        if (counter.games >= 1) {
            return Float(totalStars) / Float(counter.games)
        } else {
            return 0.0
        }
    }
    
    var body: some View {
        VStack {
            Text("Here you can see your statistics!\n")
            Text("Total Games: \(counter.games)")
            Text("Total Wins: \(counter.wins)")
            Text("Total losses: \(counter.loses)")
            Text("Total stars: \(totalStars)\n")
            Text("Ammount of 3 stars: \(counter.threeStar)")
            Text("Ammount of 2 stars: \(counter.twoStar)")
            Text("Ammount of 1 stars: \(counter.oneStar)\n")
            Text("Average ammount of stars \(String(format: "%.2f",averageStars))")
            Text("Wins / Loses ratio: \(String(format: "%.2f",winsLoseRatio))")
        }
    }
}

#Preview {
    InternsPartView()
}
