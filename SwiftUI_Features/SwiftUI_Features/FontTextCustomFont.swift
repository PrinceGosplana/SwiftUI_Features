//
//  FontTextCustomFont.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.11.2024.
//

import SwiftUI

struct FontTextCustomFont: View {
    var body: some View {
        VStack(spacing: 10) {
            
            Text("This font doesn't exist")
                .font(Font.custom("No Such Font", size: 26))
            
            Text("Avenir Next")
                .font(Font.custom("Avenir Next", size: 26))
            Text("Gill Sans")
                .font(Font.custom("Gill Sans", size: 26))
            Text("Helvetica Neue")
                .font(Font.custom("Helvetica Neue", size: 26))
            
            Text("Avenir Next Regular")
                .font(Font.custom("Avenir Next Bold", size: 26))
            Text("Or change with the weight modifier:")
                .foregroundStyle(.red)
            Text("Avenir Next Bold Weight")
                .font(Font.custom("Avenir Next", size: 26).weight(.bold))
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    FontTextCustomFont()
}
