//
//  CircularShapesStrokeBorder.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.12.2024.
//

import SwiftUI

struct CircularShapesStrokeBorder: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Circular Shapes").font(.largeTitle)
            Text("Stroke Border (Inner Stroke)").foregroundStyle(.gray)
            Text("A stroke modifier grows outward from the center of the shape's outline and can cause overlapping issues.")
            
            ZStack {
                Capsule()
                Capsule()
                    .stroke(Color(UIColor.purple), lineWidth: 50)
                    .stroke(.black) // Black outline
            }
            Text("A strokeBorder modifier will grow inward from the shape's outline.")
            ZStack {
                Capsule()
                Capsule()
                    .strokeBorder(Color.purple, lineWidth: 50)
                    .stroke(.black) // Black outline
            }
        }.font(.title)
    }
}

#Preview {
    CircularShapesStrokeBorder()
}
