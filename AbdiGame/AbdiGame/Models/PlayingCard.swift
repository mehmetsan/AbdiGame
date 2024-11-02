//
//  PlayingCard.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 01/11/24.
//

import SwiftUI

struct PlayingCard: Identifiable {
    let card: Card
    let suit: Suit
    
    // Unique identifier
    var id: String {
        "\(card.rawValue)_\(suit.rawValue)"
    }
    
    // Card image name (assuming you use "ace_hearts", "king_spades", etc. for image names)
    var imageName: String {
        "\(card.rawValue)_\(suit.rawValue)"
    }
    
    var cardImage: Image {
        Image(imageName)
    }
    
}
