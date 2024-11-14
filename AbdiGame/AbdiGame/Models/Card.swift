//
//  Card.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 01/11/24.
//

enum Card: String, CaseIterable, Identifiable, RawRepresentable {
    case ace = "ace"
    case king = "king"
    case queen = "queen"
    case jack = "jack"
    case ten = "ten"
    case nine = "nine"
    case eight = "eight"
    case seven = "seven"
    case six = "six"
    case five = "five"
    case four = "four"
    case three = "three"
    case two = "two"
    
    var id: Card {self}
    
    var title: String {
        switch self {
        case .ace:
            return "Sentence Forming"
        case .king:
            return "Pass"
        case .queen:
            return "Answering your question"
        case .jack:
            return "Grouping"
        case .ten:
            return "Set a Rule"
        case .nine:
            return "True / False"
        case .eight:
            return "Fingers on the table"
        case .seven:
            return "Never Have I Ever"
        case .six:
            return "Girls Take a Turn"
        case .five:
            return "Boys Take a Turn"
        case .four:
            return "EVERYBODY JOINS IN"
        case .three:
            return "Choose someone"
        case .two:
            return "It's your turn!"
        }
    }
    
    var description: String {
        switch self {
        case .ace:
            return "Players form a sentence, with each player adding one word at a time. The one who pauses or repeats a word faces a fun consequence."
        case .king:
            return "You're off the hook this round! Lucky you..."
        case .queen:
            return "From now on, everyone must begin answering any question with 'Answering your question ...', the first one to fail faces the consequence."
        case .jack:
            return "You pick a category for everyone to name an example of. The first one who can't think of one faces the consequence."
        case .ten:
            return "Create any rule you like that every player (you included) must follow. The game is on until someone slips up!"
        case .nine:
            return "Say something about yourself that is either True or False. Those who guess wrong face the consequence."
        case .eight:
            return "All players place a finger on the table; the last one to do so faces a fun consequence."
        case .seven:
            return "Play 'Never Have I Ever.' Anyone who has done it takes their turn."
        case .six:
            return "All female players take their turn."
        case .five:
            return "All male players take their turn."
        case .four:
            return "Everyone in the game takes a turn."
        case .three:
            return "Choose a player to take a turn."
        case .two:
            return "This one’s for you!"
        }
    }

    
}
