//
//  Deck.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 01/11/24.
//
import SwiftUI

struct Deck {
    let hearts: [PlayingCard] = Suit.hearts.cards
    let diamonds: [PlayingCard] = Suit.diamonds.cards
    let clubs: [PlayingCard] = Suit.clubs.cards
    let spades: [PlayingCard] = Suit.spades.cards
    
    let backCard: Image = Image(.back)
    
    var opened: Bool = false
    
    var cards: [PlayingCard] = (Suit.hearts.cards + Suit.diamonds.cards + Suit.clubs.cards + Suit.spades.cards).shuffled()
    
    
    var topCard: PlayingCard? {
        cards.last
    }
    
    mutating func takeCard() {
        cards.removeLast()
    }
    
    mutating func open() {
        opened.toggle()
    }
    

    
}
