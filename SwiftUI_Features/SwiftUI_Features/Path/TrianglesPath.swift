//
//  TrianglesPath.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.12.2024.
//

import SwiftUI

struct TrianglesPath: View {
    var body: some View {
        VStack {
            Text("You can already create circular and rectangular shapes, so I'm not going to cover those. Let's make triangles instead.")
            // Outline Triangle
            GeometryReader { gr in
                Path { path in
                    let middle = gr.frame(in: .local).midX
                    let width: CGFloat = 200
                    // Start in the center
                    path.move(to: CGPoint(x: middle, y: 10))
                    path.addLine(to: CGPoint(x: middle + (width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle-(width / 2), y: 170))
                    path.closeSubpath() // Connects last point to first point
                }
                //            Notice that a path can be
                //            drawn right inside of a
                //            SwiftUI view.
                .strokedPath(StrokeStyle(lineWidth: 4))
                .foregroundStyle(Color.purple)
            }
            // Solid Triangle
            GeometryReader { gr in
                Path { path in
                    let middle = gr.frame(in: .local).midX
                    let width: CGFloat = 200
                    // Start in the center
                    path.move(to: CGPoint(x: middle, y: 10))
                    path.addLine(to: CGPoint(x: middle + (width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle-(width / 2), y: 170))
                    path.closeSubpath() // Connects last point to first point
                }
                .fill(Color.purple)
                .rotationEffect(Angle.degrees(90))
            }
        }
    }
}

#Preview {
    TrianglesPath()
}
