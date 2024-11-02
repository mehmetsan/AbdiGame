//
//  PageGame.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 02/11/24.
//

import SwiftUI

struct PageGame: View {
    @Binding var displayPage: String
    @Binding var gameDeck: Deck
    
    
    var body: some View {
        if gameDeck.cardsLeft > 0 {
            PageActiveGame(displayPage: $displayPage, gameDeck: $gameDeck)
        }
        else{
            PageFinishedGame(displayPage: $displayPage, gameDeck: $gameDeck)
        }
        
    }
}

#Preview {
    PageGame(displayPage: .constant("GamePage"), gameDeck: .constant(Deck()))
}
