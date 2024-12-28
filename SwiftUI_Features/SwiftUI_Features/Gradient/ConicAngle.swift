//
//  ConicAngle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.12.2024.
//

import SwiftUI

struct ConicAngle: View {
    let gradient = Gradient(colors: [.green, .blue])
    var body: some View {
        VStack(spacing: 20) {
            Text("Use the angle parameter to set where the first color starts.")
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.conicGradient(gradient, center: .center,
                                                    angle: .degrees(45)))
                    .overlay(Text("45°"), alignment: .top)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.conicGradient(gradient, center: .center,
                                                    angle: .degrees(90)))
                    .overlay(Text("90°"), alignment: .top)
            }
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.conicGradient(gradient, center: .center,
                                                    angle: .degrees(180)))
                    .overlay(Text("180°"), alignment: .top)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.conicGradient(gradient, center: .center,
                                                    angle: .degrees(270)))
                    .overlay(Text("270°"), alignment: .top)
            }
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    ConicAngle()
}
