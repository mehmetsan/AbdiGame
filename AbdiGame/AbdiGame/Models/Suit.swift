//
//  Suit.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 01/11/24.
//
import SwiftUI


enum Suit: String, CaseIterable {
    case hearts = "hearts"
    case diamonds = "diamonds"
    case clubs = "clubs"
    case spades = "spades"
    
    // Generate all 13 cards for the suit
    var cards: [PlayingCard] {
        Card.allCases.map { card in
            PlayingCard(card: card, suit: self)
        }
    }
}
