//
//  EllipticalGradientRadiusFraction.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.12.2024.
//

import SwiftUI

struct EllipticalGradientRadiusFraction: View {
    let gradient = Gradient(colors: [.green, .blue])
    var body: some View {
        VStack(spacing: 20) {
            Text("Use the radius fraction parameters to control the range of color spread in your gradient.")
                .layoutPriority(1)
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient,
                                                     center: .center,
                                                     startRadiusFraction: 0.1,
                                                     endRadiusFraction: 0.9))
                .overlay(Text("Radius Fractions"), alignment: .top)
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient, center: .center))
                .overlay(Text("Default"), alignment: .top)
        }
        .font(.title)
    }
}

#Preview {
    EllipticalGradientRadiusFraction()
}
