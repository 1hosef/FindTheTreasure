//
//  MainGameView.swift
//  InternsProject
//
//  Created by Ivan on 23.06.25.
//

import SwiftUI

struct MainGameView: View {
    @EnvironmentObject var gameState : GameState
    @State var IsGameStarted = false
    func gameStatusSwitcher(){
        IsGameStarted.toggle()
    }
    var body: some View {
        VStack{
            NavigationView{
                List{
                    NavigationLink(destination: PlayMapView()){
                        Text("Go to first Map")
                    }
                    if gameState.isMapOneCompleted == true {
                        NavigationLink(destination: SecondMapView()){
                            Text("Go to second Map")
                        }
                    }
                    if gameState.isMapTwoCompleted == true {
                        NavigationLink(destination: ThirdMapView()){
                            Text("Go to third Map")
                        }
                    }
                }
            }
        }
//        if(!IsGameStarted){
//            Text("Start the game")
//                .foregroundColor(.green)
//                .onTapGesture {
//                    gameStatusSwitcher()
//                }
//        } else if(IsGameStarted){
//            PlayMapView()
//        }
        
    }
}

#Preview {
    MainGameView()
}
