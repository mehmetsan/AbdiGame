//
//  OptionButton.swift
//  AbdiGame
//
//  Created by Mehmet Sanisoglu on 02/11/24.
//

import SwiftUI

struct OptionButton: View {
    let width: CGFloat;
    let height: CGFloat;
    var optionText: String;
    var selectedFont: Font = .title2
    
    var body: some View {
        ZStack {
            // Rounded Background with Opacity
            RoundedRectangle(cornerRadius: 20)
                .fill(.darkRed.opacity(0.8)) // Brown color with 50% opacity
                .frame(width: width, height: height) // Set width and height as needed
            
            // Text on top
            Text(optionText)
                .font(selectedFont)
                .fontWeight(.heavy)
                .foregroundColor(.white) // Text color
                .multilineTextAlignment(.center)
                .padding() // Padding for space within the text area
        }
        .padding()
    }
}

#Preview {
    OptionButton(width: 150.0, height: 80.0, optionText: "Play", selectedFont: .title)
}
