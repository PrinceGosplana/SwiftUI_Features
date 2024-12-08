//
//  CircularShapesColors.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.12.2024.
//

import SwiftUI

struct CircularShapesColors: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("Circular Shapes").font(.largeTitle)
            Text("Colors").foregroundStyle(.gray)
            Text("Circular shapes (and other shapes) can have shape styles applied to them. Color is considered a shape style along with different gradient patterns. You 'fill' a shape with color.")
            
            Text("Using .fill(Color.purple)")
            Circle()
                .fill(Color.purple)
                .frame(height: 100)
                .padding()
            Text("Using .foregroundStyle(.purple)")
            Circle()
                .foregroundStyle(.purple)
                .frame(height: 100)
                .padding()
            Text("(Note: The fill modifier applies specifically to shapes. It cannot be used on a view.)")
        }
        
        .font(.title)
    }
}

#Preview {
    CircularShapesColors()
}
