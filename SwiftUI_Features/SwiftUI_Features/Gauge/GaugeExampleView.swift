//
//  GaugeExampleView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 26.10.2024.
//

import SwiftUI

struct GaugeExampleView: View {
    
    @State private var progress = 0.25
    
    var body: some View {
        VStack(spacing: 50.0) {
            Gauge(value: progress) {
                Text("Default on iOS")
            }
            Gauge(value: progress) {
                Text("linearCapacity")
            }
            .gaugeStyle(.linearCapacity)
            .tint(.purple)
            Gauge(value: progress) {
                Text("accessoryLinear")
            }
            .gaugeStyle(.accessoryLinear)
            .tint(.pink)
            Gauge(value: progress) {
                Text("accessoryLinearCapacity")
            }
            .gaugeStyle(.accessoryLinearCapacity)
        }
        .padding(.horizontal)
        .font(.title)
    }
}

#Preview {
    GaugeExampleView()
}
