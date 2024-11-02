//
//  PageHowToPlay.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 02/11/24.
//

import SwiftUI

struct PageHowToPlay: View {
    @Binding var displayPage: String
    
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    // Title
                    Text("How to Play")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.monospaced)
                        .foregroundStyle(.white)
                        .padding(.top, 20)
                    
                    // Explanations
                    VStack(alignment: .leading){
                        Text("-You can play up to any number of players. Nobody is left out.")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .padding([.vertical,.leading],10)
                        Text("-Draw a card once it is your turn.")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .padding([.vertical,.leading],10)
                        Text("-Read the card rules and follow them.")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .padding([.vertical,.leading],10)
                        Text("-After the round is over pass the phone to next person.")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .padding([.vertical,.leading],10)
                        Text("-The game is over once there are no cards left.")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .padding([.vertical,.leading],10)
                    }
                    .padding()
                }
                .background(.darkRed.opacity(0.8))
                .cornerRadius(20)
                
                OptionButton(width: 200, height: 100, optionText: "Back")
                    .onTapGesture {
                        displayPage = "HomePage"
                    }
                
                
            }
            
            

            
            

        }
    }
}

#Preview {
    PageHowToPlay(displayPage: .constant("HowToPlayPage"))
}
