//
//  ConicGradient.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.12.2024.
//

import SwiftUI

struct ConicGradient: View {
    let gradient = Gradient(colors: [.green, .blue])
    var body: some View {
        VStack(spacing: 20) {
            Text("The conic gradient is much like the angular gradient but angle is optional.")
                .layoutPriority(1)
            //    Declare the gradient inside the modifier.
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.conicGradient(gradient, center: .center))
                .overlay(Text("Conic Gradient"), alignment: .top)
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.angularGradient(gradient, center: .center,
                                                  startAngle: .degrees(90),
                                                  endAngle: .degrees(270)))
                .overlay(Text("Angular Gradient"), alignment: .top)
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    ConicGradient()
}
