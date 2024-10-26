//
//  GaugeCircularExample.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 26.10.2024.
//

import SwiftUI

struct GaugeCircularExample: View {
    
    @State private var progress = 0.25
    
    var body: some View {
        VStack(spacing: 50.0) {
            Gauge(value: progress, label: {})
                .gaugeStyle(.accessoryCircular)
            Gauge(value: progress) {
                Text("Level")
            }
            .gaugeStyle(.accessoryCircular)
            .tint(.orange)
//            Circular gauges use the
//            primary color but you can
//            use tint to apply a
//            different color.
            Gauge(value: progress) {
                Text("Level")
                    .padding(5)
            }
            .gaugeStyle(.accessoryCircularCapacity)
            .tint(.red)
        }
    }
}

#Preview {
    GaugeCircularExample()
}
