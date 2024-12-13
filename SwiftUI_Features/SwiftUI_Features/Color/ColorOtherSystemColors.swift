//
//  ColorOtherSystemColors.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 13.12.2024.
//

import SwiftUI

struct ColorOtherSystemColors: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("These colors show differently depending on Light or Dark mode.")
            Text("Light Mode").font(.title)
            Text("Primary Color")
                .foregroundStyle(Color.primary)
            Text("Secondary Color")
                .foregroundStyle(Color.secondary)
            Text("Accent Color")
                .foregroundStyle(Color.accentColor)
            Group {
                Text("Dark Mode").font(.title)
                Text("Primary Color")
                    .foregroundStyle(Color.primary)
                Text("Secondary Color")
                    .foregroundStyle(Color.secondary)
                Text("Accent Color")
                    .foregroundStyle(Color.accentColor)
            }
        }
        .font(.title)
    }
}

#Preview {
    ColorOtherSystemColors()
}
