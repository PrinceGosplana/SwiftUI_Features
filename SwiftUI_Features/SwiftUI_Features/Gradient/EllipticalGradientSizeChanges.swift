//
//  EllipticalGradientSizeChanges.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.12.2024.
//

import SwiftUI

struct EllipticalGradientSizeChanges: View {
    let gradient = Gradient(colors: [.green, .blue])
    var body: some View {
        VStack(spacing: 20) {
            Text("Without setting any other properties the elliptical gradient stretches to fill the available area.")
                .layoutPriority(1)
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient, center: .center))
                .frame(height: 150)
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.ellipticalGradient(gradient, center: .center))
                .frame(width: 150)
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    EllipticalGradientSizeChanges()
}
