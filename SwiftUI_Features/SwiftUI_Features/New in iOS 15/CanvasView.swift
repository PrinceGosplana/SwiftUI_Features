//
//  CanvasView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 25.08.2024.
//

import SwiftUI

struct CanvasView: View {
    var body: some View {
        VStack(spacing: 20) {
            // we can draw using Graphics context from Core Grpahics
            Canvas { context, size in
                context.draw(Text("Hello"), at: CGPoint(x: size.width / 2, y: size.height / 2))

                context.draw(Image(systemName: "house.fill"), at: CGPoint(x: size.width / 1.8, y: size.height / 1.5))
            }
            .frame(width: 300, height: 300)
            .background(Color.cyan, in: RoundedRectangle(cornerRadius: 15, style: .continuous))
        }
    }
}

#Preview {
    CanvasView()
}
