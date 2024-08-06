//
//  Rotation3DEffectView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 03.08.2024.
//

import SwiftUI

struct Rotation3DEffectView: View {

    @State private var rotation: CGFloat = .zero

    var body: some View {
        VStack(spacing: 80) {
            RoundedRectangle(cornerRadius: 24)
                .fill(.mint)
                .frame(height: 240)
                .overlay {
                    Text("rotation3DEffect")
                        .font(.title)
                        .foregroundStyle(.white)
                }
                .visualEffect { content, geometryProxy in
                    content
                        .rotation3DEffect(.init(degrees: rotation), axis: (x: 0, y: 1, z: 0))
                }

            Slider(value: $rotation, in: -90...90)
        }
        .padding()
    }
}

#Preview {
    Rotation3DEffectView()
}
