//
//  InfoPage.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 31/10/24.
//

import SwiftUI

struct InfoPage: View {
    @Environment(\.dismiss) var dismissView
    
    let infoDeck: Deck = Deck()
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                // Title
                Text("How to Play")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .fontDesign(.monospaced)
                
                Text("To play the game, you have to follow the rules given by each of the cards.")
                    .font(.system(size: 18))
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                // Cards and Meanings
                VStack{
                    ForEach(infoDeck.hearts){ card in
                        CardExplanation(cardImage: card.cardImage, explanation: card.card.title)
                    }
                }
                
                
                
                Button("Done"){
                    dismissView()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.subheadline)
                .foregroundStyle(.white)
                
            }
            

            
            

        }
        
        
       
    }
}

#Preview {
    InfoPage()
}
