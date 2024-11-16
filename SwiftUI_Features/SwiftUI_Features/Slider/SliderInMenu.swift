//
//  SliderInMenu.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 16.11.2024.
//

import SwiftUI

struct SliderInMenu: View {
    @State private var count = 1.0
    @State private var speed = 5.0
    
    var body: some View {
        Menu("Slider in Menu") {
            Slider(value: $count, in: 1...10, step: 1) {
                Text("Count: \(count, format: .number)")
                    .font(.title)
            }
            Slider(value: $speed, in: 1...10, step: 1,
                   minimumValueLabel: Image(systemName: "tortoise"),
                   maximumValueLabel: Image(systemName: "hare")) {
                Text("Speed: \(speed, format: .number)")
            }
                   .foregroundStyle(.green)
                   .padding()
        }
        .font(.title)
        .menuOrder(.fixed)
        .buttonStyle(.borderedProminent)
        
    }
}

#Preview {
    SliderInMenu()
}
