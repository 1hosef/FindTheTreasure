//
//  WinScreenView.swift
//  InternsProject
//
//  Created by Ivan on 23.06.25.
//

import SwiftUI

struct WinScreenView: View {
    @EnvironmentObject var counter : CountHelper
    @EnvironmentObject var gameState : GameState
    @State var isWinScreenShown = 1
    @State var attemptsUsed : Int

    
    var body: some View {
        if(isWinScreenShown == 1){
            VStack{
                HStack{
                    if attemptsUsed == 1 {
                        Image(systemName: "star.fill")
                            .font(.system(size: 30))
                        Image(systemName: "star")
                            .font(.system(size: 30))
                        Image(systemName: "star")
                            .font(.system(size: 30))
                    } else if attemptsUsed == 2 {
                        Image(systemName: "star.fill")
                            .font(.system(size: 30))
                        Image(systemName: "star.fill")
                            .font(.system(size: 30))
                        Image(systemName: "star")
                            .font(.system(size: 30))
                    } else if attemptsUsed == 3 {
                        Image(systemName: "star.fill")
                            .font(.system(size: 30))
                        Image(systemName: "star.fill")
                            .font(.system(size: 30))
                        Image(systemName: "star.fill")
                            .font(.system(size: 30))
                    }
                    
                }
                .padding(.bottom, 10)
                
                Text("You have won!")
                    .foregroundColor(.green)
                    .font(.system(size: 30,weight: .bold))
                    .padding(.bottom, 15)
                Text("Do you wan't to play again?")
                    .font(.system(size: 20))
                    .padding(.bottom, 15)
                Button(action: {
                    isWinScreenShown = 2
                }) { Text("Level 1")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .font(.system(size: 20))
                }
                Button(action: {
                        isWinScreenShown = 3
                    }) { Text("Level 2")}
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .font(.system(size: 20))
                if gameState.isMapTwoCompleted {
                    Button(action: {
                            isWinScreenShown = 4
                        }) { Text("Level 3")}
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .font(.system(size: 20))
                }
            }
        } else if(isWinScreenShown == 2){
            PlayMapView()
        } else if(isWinScreenShown == 3) {
            SecondMapView()
        } else if(isWinScreenShown == 4) {
            ThirdMapView()
        }
    }
}

#Preview {
    WinScreenView(attemptsUsed: 3)
}
