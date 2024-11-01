//
//  CardExplanation.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 01/11/24.
//

import SwiftUI

struct CardExplanation: View {
    let cardImage: Image
    let explanation: String
    
    
    
    var body: some View {
        HStack{
            cardImage
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            Text(explanation)
                .padding(.leading, 20)
        }
    }
}

#Preview {
    //CardExplanation(cardImage: .aceClubs,  explanation: "You have to drink")
}
