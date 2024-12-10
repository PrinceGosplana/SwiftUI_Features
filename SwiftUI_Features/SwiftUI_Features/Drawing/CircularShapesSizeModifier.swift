//
//  CircularShapesSizeModifier.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.12.2024.
//

import SwiftUI

struct CircularShapesSizeModifier: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Circular Shapes")
                .font(.largeTitle)
            Text("Size Modifier")
                .foregroundStyle(.gray)
            Text("You can also use the shape's size modifier to define a height and width. Take warning, though, using size no longer aligns shapes to the center.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundStyle(Color.white)
            Group {
                Text(".size(width: 80, height: 80)")
                Circle()
                    .size(width: 80, height: 80)
                    .background(Color.purple)
            }
            .padding()
        }
        .font(.title)
    }
}

#Preview {
    CircularShapesSizeModifier()
}
