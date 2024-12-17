//
//  ImageClipShape.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.12.2024.
//

import SwiftUI

struct ImageClipShape: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("Use the clipShape modifier to pass in a shape to mask your image.")
            Text("Circle")
            Image(.coffee)
                .clipShape(Circle())
            Text("Rounded Rectangle")
            Image(.coffee)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10, x: 1, y: 1)
            Text("Capsule with Offset")
            Image(.coffee)
                .clipShape(Capsule().offset(x: -80, y: 0))
        }
        .font(.title)
        .minimumScaleFactor(0.5)
    }
}

#Preview {
    ImageClipShape()
}
