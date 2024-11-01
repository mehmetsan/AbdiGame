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
    
    
    
    var body: some View {
        ZStack{
            Image(.brickWall)
                .resizable()
                .ignoresSafeArea()
            
            // Whole Content
            VStack{
                // Cards Display
                if !gameDeck.opened{
                    gameDeck.backCard
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .padding(.top, 100)
                        .onTapGesture {
                            gameDeck.open()
                        }
                }
                else {
                    gameDeck.topCard?.cardImage
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .padding(.top, 100)
                        .onTapGesture {
                            gameDeck.takeCard()
                        }
                }
                
                Spacer()
                
                // Rule Display
                if !gameDeck.opened{
                    Text("Click on the card to start")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.horizontal,30)
                }
                else {
                    Text(gameDeck.topCard?.card.title ?? "No card")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.horizontal,30)
                    
                    Text(gameDeck.topCard?.card.description ?? "No card")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .background(Color.brown)
                        .clipShape(.rect(cornerRadius: 20))
                        .padding(.top, 20)
                        .padding(.horizontal,30)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                }
               
                Spacer()
                
                // Reset Button
                Button(action: resetGame) {
                    Text("Reset")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 150)
                        .background(Color.brown)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
                
                
                // Info Button
                HStack{
                    Spacer()
                    Button{
                        showInfoPage.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing, 20)
                }
                .padding(.bottom, 20)
            }
        }
        .sheet(isPresented: $showInfoPage){
            InfoPage()
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
