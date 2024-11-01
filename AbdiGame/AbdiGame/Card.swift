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
            return "Girls Drink"
        case .five:
            return "Boys Drink"
        case .four:
            return "EVERYBODY DRINKS"
        case .three:
            return "Make someone drink up"
        case .two:
            return "Drink yourself"
        }
    }
    
    var description: String {
        switch self {
        case .ace:
            return "Players form a sentence, with each player adding one word at a time."
        case .king:
            return "You are skipped!"
        case .queen:
            return "From now on everybody has to begin answring any question with 'Answering your question ...'"
        case .jack:
            return "You select a category for everyone to give an example of. The first one to not give an example is drinks up"
        case .ten:
            return "Create any rule you can imagine that every player (you included) must follow. The game is on until someone fails to obey the rule. The loser drinks up."
        case .nine:
            return "Say something about yourself that is either True / False. The ones who guess it incorrectly drink"
        case .eight:
            return "All players place their fingers on the table, with the last to do so drinking."
        case .seven:
            return "Play Never Have I Ever, the ones who did the thing drink"
        case .six:
            return "All female players take a drink."
        case .five:
            return "All male players take a drink."
        case .four:
            return "Everyone playing has to take a drink."
        case .three:
            return "Choose a player to take a drink."
        case .two:
            return "You must drink up yourself."
        }
    }
    
}
