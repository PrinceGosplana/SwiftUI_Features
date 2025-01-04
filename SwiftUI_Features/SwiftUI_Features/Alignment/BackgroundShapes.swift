//
//  BackgroundShapes.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.01.2025.
//

import SwiftUI

struct BackgroundShapes: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Color")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange, in: .rect(cornerRadius: 20))
            Text("Gradient")
                .frame(maxWidth: .infinity)
                .padding()
                .background(LinearGradient(colors: [.orange, .pink],
                                           startPoint: .leading, endPoint: .trailing), in: .capsule)
            //        Use background to combine the style with a shape.
            Text("Material")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.regularMaterial, in: .ellipse)
            Text("Hierarchal")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.tertiary, in: .circle)
            Text("Semantic")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.selection, in: .buttonBorder)
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    BackgroundShapes()
}
