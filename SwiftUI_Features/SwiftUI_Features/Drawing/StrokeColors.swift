//
//  StrokeColors.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.12.2024.
//

import SwiftUI

struct StrokeColors: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Circular Shapes").font(.largeTitle)
            Text("Stroke (Outline)").foregroundStyle(.gray)
            Text("Use strokes to create outlines around shapes. Using .stroke(Color.purple):")
            
            Circle()
                .stroke(Color.purple)
                .padding()
            Text(".stroke(Color.purple, lineWidth: 20)")
            Capsule()
                .stroke(Color.purple, lineWidth: 20)
                .padding()
            Text(".stroke(Color.blue, style: StrokeStyle(lineWidth: 10, dash: [15, 10]))")
            
            Ellipse()
            /* dash parameter
             The 15 represents the length of the dash
             The 10 represents the length in between dashes
             */
                .stroke(Color.purple, style: StrokeStyle(lineWidth: 10, dash: [15, 10]))
                .padding()
        }
        .font(.title)
    }
}

#Preview {
    StrokeColors()
}
