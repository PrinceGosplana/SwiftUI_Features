//
//  ColorSecondaryStacking.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 13.12.2024.
//

import SwiftUI

struct ColorSecondaryStacking: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("When you stack the Secondary color on top of each other, it gets slightly darker or lighter, depending if in light or dark mode.")
            ZStack {
                Color.secondary
                Color.secondary.padding(28)
                Color.secondary.padding(60)
                Color.secondary.padding(80)
                Color.secondary.padding(100)
            }
            .frame(height: 300)
        }
        .font(.title)
    }
}

#Preview {
    ColorSecondaryStacking()
}
