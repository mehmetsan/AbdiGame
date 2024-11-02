//
//  HomeScreen.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 02/11/24.
//

import SwiftUI

struct PageHome: View {
    @Binding var displayPage: String
    @Binding var gameDeck: Deck
    
    var body: some View {
        ZStack{
            VStack{
                Image(.logoTransparent)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                
                // Options
                VStack{
                    if(gameDeck.started){
                        OptionButton(width: 150, height: 70, optionText: "Continue")
                            .onTapGesture{
                                displayPage = "GamePage"
                            }
                    }
                    
                    OptionButton(width: 150, height: 70, optionText: "New Game")
                        .onTapGesture{
                            gameDeck = Deck()
                            gameDeck.started = true
                            
                            displayPage = "GamePage"
                        }
                    
                    
                    
                    OptionButton(width: 180, height: 80, optionText: "How to Play")
                        .onTapGesture {
                            displayPage = "HowToPlayPage"
                        }
                }
                

            }
        }
        .frame(height: 700)
        .padding(.top, 100)
    }
}

#Preview {
    PageHome(displayPage: .constant("PageHome"), gameDeck: .constant(Deck()))
}
