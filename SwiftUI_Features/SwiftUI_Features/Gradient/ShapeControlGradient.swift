//
//  ShapeControlGradient.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.12.2024.
//

import SwiftUI

struct ShapeControlGradient: View {
    let gradientColors = Gradient(colors: [Color.pink, Color.purple])
    var body: some View {
        let linearGradient = LinearGradient(gradient: gradientColors,
                                            startPoint: .top,
                                            endPoint: .bottom)
        return VStack(spacing: 20) {
            Text("You can apply gradients to shapes and controls using the fill and background modifiers respectively.")
            Capsule()
                .fill(linearGradient)
                .frame(height: 100)
                .padding()
            Button(action: {}) {
                Text("Button")
                    .foregroundStyle(.white)
                    .padding()
                    .background(linearGradient,
                                in: RoundedRectangle(cornerRadius: 15))
            }
            Text("Use strokeBorder to apply a gradient to the borders of shapes.")
                .padding(.horizontal)
            Circle()
                .strokeBorder(linearGradient, lineWidth: 20)
                .frame(height: 200)
        }
    }
}

#Preview {
    ShapeControlGradient()
}
