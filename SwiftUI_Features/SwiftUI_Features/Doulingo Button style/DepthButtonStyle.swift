//
//  DepthButtonStyle.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 25.08.2024.
//

import SwiftUI

struct DepthButtonStyle: ButtonStyle {
    private enum Shape {
        case rectangle, ellipse
    }

    private var foregroundColor: Color
    private var backgroundColor: Color
    private var shape: Shape
    private var cornerRadius: CGFloat = 0
    private var yOffset: CGFloat {
        shape == .rectangle ? 4 : 8
    }

    init(foregroundColor: Color, backgroundColor: Color, cornerRadius: CGFloat) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.shape = .rectangle
        self.cornerRadius = cornerRadius
    }

    init(foregroundColor: Color, backgroundColor: Color) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.shape = .ellipse
    }

    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            buttonShape(color: backgroundColor)
            buttonShape(color: foregroundColor)
                .offset(y: configuration.isPressed ? 0 : -yOffset)
            configuration.label
                .foregroundStyle(backgroundColor)
                .offset(y: -yOffset)
                .offset(y: configuration.isPressed ? yOffset : 0)
        }
    }

    @ViewBuilder
    private func buttonShape(color: Color) -> some View {
        switch shape {
        case .rectangle:
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous).fill(color)
        case .ellipse:
            Ellipse().fill(color)
        }
    }
}

