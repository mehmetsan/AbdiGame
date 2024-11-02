//
//  ContentView.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 31/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var showInfoPage: Bool = false
    @State var gameDeck: Deck = Deck()
    
    @State var showHomeScreen: Bool = true
    @State var showGameScreen: Bool = false
    @State var showHowToPlayScreen: Bool = false
    
    @State var displayPage : String = "HomePage"
    
    
    
    var body: some View {
        ZStack{
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            switch displayPage {
            case "HomePage":
                PageHome(displayPage: $displayPage, gameDeck: $gameDeck)
            case "GamePage":
                PageGame(displayPage: $displayPage, gameDeck: $gameDeck)
            case "HowToPlayPage":
                PageHowToPlay(displayPage: $displayPage)
            default:
                PageHome(displayPage: $displayPage, gameDeck: $gameDeck)
            }
            
            
            
        }
    }
    // Actions
    func resetGame() {
        gameDeck = Deck()
    }
}

#Preview {
    ContentView()
}
