//
//  CirclesTrimSolidShapes.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 12.12.2024.
//

import SwiftUI

struct CirclesTrimSolidShapes: View {
    @State private var circleProgress: CGFloat = 1.0
    private var circlePercentage: Int { Int(circleProgress * 100.0) }
    var body: some View {
        VStack(spacing: 40) {
            Text("Circular Shapes").font(.largeTitle)
            Text("Trim Solid Shapes").font(.title).foregroundStyle(.gray)
            Text("Trim your solid shape to only show a percentage of it")
            
            Circle()
                .trim(from: 0, to: circleProgress)
                .fill(Color.purple)
                .frame(height: 300)
                .rotationEffect(.degrees(-90)) // Start from top
                .overlay(
                    Text("\(circlePercentage)%")
                        .font(.largeTitle))
                .padding(40)
            VStack {
                Text("Progress")
                HStack {
                    Text("0%")
                    Slider(value: $circleProgress)
                    Text("100%")
                }
            }.padding()
        }
    }
}

#Preview {
    CirclesTrimSolidShapes()
}
