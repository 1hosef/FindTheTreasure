//
//  WinScreenView.swift
//  InternsProject
//
//  Created by Ivan on 23.06.25.
//

import SwiftUI

struct LoseScreenView: View {
    @State var isLoseScreenShown = true
    var body: some View {
        if(isLoseScreenShown == true){
            VStack{
                Text("Sadly you have lost!")
                    .foregroundColor(.red)
                    .font(.system(size: 30,weight: .bold))
                    .padding(.bottom, 15)
                Text("Do you wan't to retry?")
                    .font(.system(size: 20))
                    .padding(.bottom, 15)
                Button(action: {
                    isLoseScreenShown = false
                }) { Text("Retry")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .font(.system(size: 20))
                }
            }
        } else if(isLoseScreenShown == false){
            PlayMapView()
        }
    }
}

#Preview {
    LoseScreenView()
}
