//
//  FontLineSpacing.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.11.2024.
//

import SwiftUI

struct FontLineSpacing: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Text")
                .font(.largeTitle)
            Text("Line Spacing").font(.title).foregroundStyle(.gray)
            
            Text("You can use line spacing to add more space between lines of text. This text has no line spacing applied:")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundStyle(Color.white)
            Text("SwiftUI offers a Line Spacing modifier for situations where you want to increase the space between the lines of text on the screen.")
                .font(.title)
            Text("With Line Spacing of 16:")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundStyle(Color.white)
            Text("SwiftUI offers a Line Spacing modifier for situations where you want to increase the space between the lines of text on the screen.")
                .lineSpacing(16.0) // Add spacing between lines
                .font(.title)
        }
    }
}

#Preview {
    FontLineSpacing()
}
