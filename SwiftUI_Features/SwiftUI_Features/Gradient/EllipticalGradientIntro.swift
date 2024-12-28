//
//  EllipticalGradientIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.12.2024.
//

import SwiftUI

struct EllipticalGradientIntro: View {
    
    let gradient = Gradient(colors: [.green, .blue])
    
    var body: some View {
        VStack(spacing: 20) {
            Text("The elliptical gradient is much like the radial gradient but it automatically conforms to the size of its container.")
                .layoutPriority(1)
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient, center: .center))
                .overlay(Text("Elliptical Gradient"), alignment: .top)
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.radialGradient(gradient, center: .center,
                                                 startRadius: 10, endRadius: 200))
                .overlay(Text("Radial Gradient"), alignment: .top)
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    EllipticalGradientIntro()
}
