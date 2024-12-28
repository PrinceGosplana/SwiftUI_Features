//
//  CustomGradientDirection.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.12.2024.
//

import SwiftUI

struct CustomGradientDirection: View {
    let gradientColors = Gradient(colors: [Color.indigo, Color.cyan])

    var body: some View {
        HStack(spacing: 20) {
            Rectangle()
                .fill(LinearGradient(gradient: gradientColors,
                                     startPoint: UnitPoint(x: 0, y: 0.25),
                                     endPoint: UnitPoint(x: 1, y: 0.75)))
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(LinearGradient(gradient: gradientColors,
                                     startPoint: UnitPoint(x: 0.65, y: 0.65),
                                     endPoint: UnitPoint(x: 0.8, y: 0.75)))
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(LinearGradient(gradient: gradientColors,
                                     startPoint: UnitPoint(x: 0.9, y: 0.8),
                                     endPoint: UnitPoint(x: 0.25, y: 0.15)))
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    CustomGradientDirection()
}
