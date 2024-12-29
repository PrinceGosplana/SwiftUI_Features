//
//  MeshGradientAppliedToViews.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.12.2024.
//

import SwiftUI

@available(iOS 18.0, *)
struct MeshGradientAppliedToViews: View {
    let gradient = MeshGradient(width: 2, height: 2,
                                points: [
                                    [0,0], [1,0],
                                    [0,1], [1,1]
                                ],
                                
                                //    Any place that accepts a ShapeStyle, you can apply your MeshGradient.
                                colors: [
                                    .red, .blue,
                                    .yellow, .purple
                                ])
    var body: some View {
        VStack(spacing: 40) {
            Text("Hello, World!")
                .foregroundStyle(gradient)
            Image(systemName: "list.bullet.clipboard.fill")
                .font(.system(size: 120))
                .foregroundStyle(gradient)
            Text("Shapes")
                .foregroundStyle(.regularMaterial)
                .padding(40)
                .background(gradient, in: .rect(cornerRadius: 16))
        }
        .font(.largeTitle.weight(.heavy))
    }
}

#Preview {
    if #available(iOS 18.0, *) {
        MeshGradientAppliedToViews()
    }
}
