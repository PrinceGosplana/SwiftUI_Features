//
//  GaugeView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct GaugeView: View {

    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])
    var body: some View {
        VStack(spacing: 10) {
            Gauge(value: 0.4) {

            }

            Gauge(value: 0.4) {

            }
            .gaugeStyle(.accessoryCircular)

            Gauge(value: 0.4) {

            }
            .tint(gradient)
            .gaugeStyle(.accessoryCircular)

            Gauge(value: 0.4, label: {
            }, currentValueLabel: {
                Text("40%")
                    .font(.callout)
            })
            .tint(gradient)
            .gaugeStyle(.accessoryCircular)


            Gauge(value: 0.4) {

            }
            .gaugeStyle(.accessoryLinear)
        }
        .padding()
    }
}

#Preview {
    GaugeView()
}
