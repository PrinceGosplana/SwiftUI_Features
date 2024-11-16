//
//  SliderTint.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.11.2024.
//

import SwiftUI

struct SliderTint: View {
    @State private var sliderValue = 0.5
    var body: some View {
        VStack(spacing: 20) {
            
            Slider(value: $sliderValue,
                   minimumValueLabel: Image(systemName: "tortoise"),
                   maximumValueLabel: Image(systemName: "hare"), label: {})
            .foregroundStyle(.green)
            .tint(.orange)
            .padding()
        }
        .font(.title)
    }
}

#Preview {
    SliderTint()
}
