//
//  PatternShapeStylesView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 23.10.2024.
//

import SwiftUI

struct HLine: View {
    var body: some View {
        Rectangle()
            .frame(height: 1)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct DiagonalPattern: View {
    var body: some View {
        HLine()
            .frame(width: 30, height: 30)
            .rotationEffect(.degrees(-45))
            .frame(width: 20, height: 20)
            .border(.green)
    }
}

struct DiagonalStripes: ShapeStyle {
    var size: CGFloat = 30
    
    @MainActor func resolve(in environment: EnvironmentValues) -> some ShapeStyle {
        .image(Image.striped(size: size, scale: environment.displayScale))
    }
}

struct PatternShapeStylesView: View {
    var body: some View {
        DiagonalPattern()
    }
}

#Preview {
    PatternShapeStylesView()
}


extension Image {
    @MainActor static func striped(size: CGFloat, scale: CGFloat) -> Image {
        let content = DiagonalPattern()
            .foregroundColor(.primary)
            .frame(width: size, height: size)
        let renderer =  ImageRenderer(content: content
        )
        renderer.scale = scale
        return Image(renderer.cgImage!, scale: scale, label: Text(""))
    }
}
