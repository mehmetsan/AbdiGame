//
//  PageFinishedGame.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 02/11/24.
//

import SwiftUI

struct PageFinishedGame: View {
    @Binding var displayPage: String
    @Binding var gameDeck: Deck
    var body: some View {
        ZStack {
            VStack {
                VStack{
                    Text("GAME OVER")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.top, 70)
                    
                    Spacer()
                    
                    Text("How about another one?")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .padding(.top, 1)
                        .padding(.bottom, 50)
                    
                }
                .frame(width: 350, height: 220)
                .background(.darkRed.opacity(0.9))
                .cornerRadius(20)
                
                // Play Again Button
                Text("Play Again")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 70)
                    .background(.darkRed)
                    .clipShape(.rect(cornerRadius: 20))
                    .padding(.top, 20)
                    .onTapGesture(){
                        gameDeck = Deck()
                        gameDeck.started = true
                    }
                
                // Return to Home Page
                Text("Return to Home Page")
                    .font(.headline)
                    .italic()
                    .foregroundStyle(.white)
                    .frame(width: 190, height: 60)
                    .background(.darkRed)
                    .clipShape(.rect(cornerRadius: 20))
                    .padding(.bottom, 20)
                    .onTapGesture(){
                        gameDeck = Deck()
                        displayPage = "HomePage"
                    }
                
            }
        
        }
    }
}

#Preview {
    PageFinishedGame(displayPage:.constant("GamePage"), gameDeck: .constant(Deck()))
}
