//
//  ContentView.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 31/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var showInfoPage: Bool = false
    
    var body: some View {
        ZStack{
            Image(.brickWall)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                
                // Cards Display
                Image(.aceClubs).resizable()
                    .scaledToFit()
                    .frame(height: 300)
                
                // Rule Display
                Text("You have to drink")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundStyle(.orange)
                
                // Reset Button
                
                Button(action: resetGame) {
                    Text("Reset")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 150)
                        .background(Color.red)
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
                    .padding(.trailing)
                }
                .padding(.top, 200)
                
            }
            .padding(.top, 100)
        }
        .sheet(isPresented: $showInfoPage){
            InfoPage()
        }
        
        
        
    }
    // Actions
    func resetGame() {
        showInfoPage.toggle()
    }
}

#Preview {
    ContentView()
}
