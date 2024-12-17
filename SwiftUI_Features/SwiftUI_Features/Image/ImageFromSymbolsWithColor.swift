//
//  ImageFromSymbolsWithColor.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.12.2024.
//

import SwiftUI

struct ImageFromSymbolsWithColor: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Some SF Symbols have more than one color that you can enable by using the renderingMode modifier.")
            Image(systemName: "note.text.badge.plus")
                .renderingMode(.original)
                .font(.largeTitle)
            Text("If used in a Button, change the color with the accentColor modifier:")
                .padding(.horizontal)
            Button(action: {}, label: {
                Image(systemName: "note.text.badge.plus")
                    .renderingMode(.original)
                    .tint(.red)
                    .font(.largeTitle)
            })
            Text("Or use foregroundStyle:")
            Image(systemName: "note.text.badge.plus")
                .renderingMode(.original)
                .foregroundStyle(.purple)
                .font(.largeTitle)
            //        Note: When applying the tint color, only the main color of the image is changed.
        }
        .font(.title)
    }
}

#Preview {
    ImageFromSymbolsWithColor()
}
