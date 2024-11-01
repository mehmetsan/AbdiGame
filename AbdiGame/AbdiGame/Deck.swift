//
//  Deck.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 01/11/24.
//

struct Deck {
    let hearts: [PlayingCard] = Suit.hearts.cards
    let diamonds: [PlayingCard] = Suit.diamonds.cards
    let clubs: [PlayingCard] = Suit.clubs.cards
    let spades: [PlayingCard] = Suit.spades.cards
    
    var cards: [PlayingCard] = []
    
    
    mutating func getDeck() -> [PlayingCard]{
        cards.append(contentsOf: hearts)
        cards.append(contentsOf: diamonds)
        cards.append(contentsOf: clubs)
        cards.append(contentsOf: spades)
        
        // Shuffle the cards
        cards.shuffle()
        
        return cards
    }
    
}
