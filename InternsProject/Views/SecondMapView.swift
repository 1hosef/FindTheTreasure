//
//  SecondMapView.swift
//  InternsProject
//
//  Created by Josef on 23.06.25.
//

import SwiftUI

struct SecondMapView: View {
    @EnvironmentObject var counter : CountHelper
    @EnvironmentObject var gameState : GameState
    
    let randomNum = Int.random(in: 1...5)
    @State var isWin:Bool? = nil
    @State var numberOfAttempts = 3
    @State var attemptsLeft = 3
    
    @State var isXShown1 = true
    @State var isXShown2 = true
    @State var isXShown3 = true
    @State var isXShown4 = true
    @State var isXShown5 = true
    @State var isXShown6 = true


    
    func isWinCondition(imgIndex: Int){
        if imgIndex == randomNum {
            isWin = true
            gameState.isMapTwoCompleted = true
            counter.games += 1
            counter.wins += 1
            return
        } else {
            print("Loser!")
            attemptsLeft -= 1
        }
        numberOfAttempts -= 1
        if(numberOfAttempts > 0){
            
        } else {
            isWin = false
            counter.games += 1
            counter.loses += 1
        }
    }
    
    func isShownCondition(imgIndex: Int) -> Bool{
        if imgIndex != randomNum {
            return false
        } else {
            return true
        }
    }
    
    var body: some View {
            if(isWin == nil){
                ZStack{
                    ZStack{
                        Rectangle()
                            .stroke(Color.white, lineWidth: 5)
                            .frame(width: 50, height: 50)
                            .background(.white)
                            .cornerRadius(30)
                        Text("\(attemptsLeft)")
                            .font(.system(size: 25, weight: .bold))
                    }
                    .zIndex(1)
                    .position(x: 200, y: 715)
                    .foregroundColor(.black)
                    .font(.system(size: 15, weight: .bold))
                        if(isXShown1){
                            Image(systemName: "xmark")
                                .foregroundColor(.red)
                                .font(.system(size: 40,weight: .bold))
                                .position(x: 100, y: 200)
                                .zIndex(1)
                                .onTapGesture() {
                                    isWinCondition(imgIndex:1)
                                    isXShown1 = false
                                    
                                }
                        }
                        if(isXShown2){
                            Image(systemName: "xmark")
                                .foregroundColor(.red)
                                .font(.system(size: 40,weight: .bold))
                                .position(x: 300, y: 250)
                                .zIndex(1)
                                .onTapGesture() {
                                    isWinCondition(imgIndex:2)
                                    isXShown2 = false
                                }
                        }
                        if(isXShown3){
                            Image(systemName: "xmark")
                                .foregroundColor(.red)
                                .font(.system(size: 40,weight: .bold))
                                .position(x: 200, y: 400)
                                .zIndex(1)
                                .onTapGesture() {
                                    isWinCondition(imgIndex:3)
                                    isXShown3 = false
                                }
                        }
                        if(isXShown4){
                            Image(systemName: "xmark")
                                .foregroundColor(.red)
                                .font(.system(size: 40,weight: .bold))
                                .position(x: 350, y: 500)
                                .zIndex(1)
                                .onTapGesture() {
                                    isWinCondition(imgIndex:4)
                                    isXShown4 = false
                                }
                        }
                        if(isXShown5){
                            Image(systemName: "xmark")
                                .foregroundColor(.red)
                                .font(.system(size: 40,weight: .bold))
                                .position(x: 250, y: 100)
                                .zIndex(1)
                                .onTapGesture() {
                                    isWinCondition(imgIndex:5)
                                    isXShown5 = false
                                }
                        }
                        if(isXShown6){
                        Image(systemName: "xmark")
                            .foregroundColor(.red)
                            .font(.system(size: 40,weight: .bold))
                            .position(x: 250, y: 500)
                            .zIndex(1)
                            .onTapGesture() {
                                isWinCondition(imgIndex:6)
                                isXShown6 = false
                            }
                        }
                        
                        //Background Image
                        Image("SecondMap")
                            .resizable()
                            .scaledToFit()
                            .zIndex(0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black,lineWidth: 10)
                            )
                    
                }
                .padding(.bottom,10)
            } else if(isWin == true){
                WinScreenView(attemptsUsed: attemptsLeft)
            } else if(isWin == false){
                LoseScreenView()
                
            }
    }
}

#Preview {
    SecondMapView()
}
