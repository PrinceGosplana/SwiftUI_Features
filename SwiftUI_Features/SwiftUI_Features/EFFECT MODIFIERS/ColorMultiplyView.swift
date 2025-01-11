//
//  ColorMultiplyView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.01.2025.
//

import SwiftUI

struct ColorMultiplyView: View {
    var body: some View {
        Text("Color multiply doesn't really blend colors together. It puts a color filter over another view. So it doesn't create new colors, it creates a view with a color filter on top of it.")
        HStack(spacing: 10) {
            Color.blue.frame(width: 100, height: 100)
            Image(systemName: "plus")
            Color.yellow.frame(width: 100, height: 100)
            Image(systemName: "equal")
            // Apply a yellow filter on top of the blue view
            Color.blue.colorMultiply(Color.yellow)
                .frame(width: 100, height: 100)
        }
        HStack(spacing: 10) {
            Image("profile")
            Image(systemName: "plus")
            Color.pink.frame(width: 100, height: 100)
            Image(systemName: "equal")
            Image("profile")
            // Apply a yellow filter on top of the image view
                .colorMultiply(.pink)
        }
        HStack(spacing: 10) {
            Image("cute")
            Image(systemName: "plus")
            Color.yellow.frame(width: 100, height: 100)
            Image(systemName: "equal")
            Image("cute")
                .colorMultiply(.yellow)
        }
    }
}

#Preview {
    ColorMultiplyView()
}
