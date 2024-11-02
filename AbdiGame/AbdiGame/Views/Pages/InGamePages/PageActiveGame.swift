//
//  PageActiveGame.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 02/11/24.
//

import SwiftUI

struct PageActiveGame: View {
    @Binding var displayPage: String
    @Binding var gameDeck: Deck
    
    var body: some View {
        ZStack {
            VStack {
                OptionButton(width: 100, height: 50, optionText: "\(gameDeck.cardsLeft)/52")
                    .padding(.top, 10)
                
                // Cards Display
                gameDeck.topCard?.cardImage
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .onTapGesture {
                        gameDeck.takeCard()
                    }
                    .padding(.vertical, 5)
                
                // Title and Description
                VStack {
                    Text(gameDeck.topCard?.card.title ?? "No card left")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.horizontal,10)
                        .padding(.top, 10)
                    
                    Text(gameDeck.topCard?.card.description ?? "Reset the deck")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.vertical, 20)
                        .padding(.horizontal,30)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)

                }
                .background(.darkRed.opacity(0.7))
                .clipShape(.rect(cornerRadius: 20))
                .padding(.horizontal, 10)


                Spacer()
                
                
                Text("Reset the deck")
                    .font(.headline)
                    .italic()
                    .foregroundStyle(.white)
                    .frame(width: 170, height: 50)
                    .background(.darkRed)
                    .clipShape(.rect(cornerRadius: 20))
                    .onTapGesture(){
                        gameDeck = Deck()
                        gameDeck.started = true
                    }
                Text("Return to Home Page")
                    .font(.headline)
                    .italic()
                    .foregroundStyle(.white)
                    .frame(width: 190, height: 60)
                    .background(.darkRed)
                    .clipShape(.rect(cornerRadius: 20))
                    .padding(.bottom, 10)
                    .onTapGesture(){
                        displayPage = "HomePage"
                    }
                
            }
        
        }
    }
}

#Preview {
    PageActiveGame(displayPage: .constant("GamePage"), gameDeck: .constant(Deck()))
}
