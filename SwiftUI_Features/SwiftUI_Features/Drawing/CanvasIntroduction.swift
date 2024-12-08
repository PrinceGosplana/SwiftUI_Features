//
//  CanvasIntroduction.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.12.2024.
//

import SwiftUI

struct CanvasIntroduction: View {
    var body: some View {
        VStack(spacing: 20.0) {
            //        Use the canvas when you want to create an area in which to draw within
            Canvas { context, size in
                context.stroke(
                    Path(ellipseIn: CGRect(origin: CGPoint(x: 4, y: 4),
                                           size: CGSize(width: size.width - 8,
                                                        height: size.height - 8))),
                    with: .color(.red),
                    lineWidth: 4)
                let image = Image(systemName: "scribble.variable")
                context.draw(image, at: CGPoint(x: size.width/2, y: size.height/2))
            }
            .padding()
            //        Use the context for drawing. Use the size to reference the size of the canvas
        }
        .font(.title)
    }
}

#Preview {
    CanvasIntroduction()
}
