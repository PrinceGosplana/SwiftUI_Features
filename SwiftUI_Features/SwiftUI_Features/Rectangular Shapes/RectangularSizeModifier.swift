//
//  RectangularSizeModifier.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.12.2024.
//

import SwiftUI

struct RectangularSizeModifier: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Rectangular Shapes")
                .font(.largeTitle)
            Text("Size Modifier")
                .foregroundStyle(.gray)
            Text("You can also use the shape's size modifier to define a height and width. Take warning, though, using size no longer aligns shapes to the center.")
                .frame(height: 230)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.indigo)
            Group {
                Text("Rectangle using .size(width: 40, height: 40)")
                Rectangle()
                    .size(width: 40, height: 40)
                    .background(Color.blue)
                Text("RoundedRectangle using .size(width: 200, height: 100)")
                RoundedRectangle(cornerRadius: 20)
                    .size(width: 200, height: 100)
                    .background(Color.indigo)
            }
            .padding(.horizontal)
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    RectangularSizeModifier()
}
