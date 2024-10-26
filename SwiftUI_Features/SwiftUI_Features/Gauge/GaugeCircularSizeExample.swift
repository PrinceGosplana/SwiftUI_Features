//
//  GaugeCircularSizeExample.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 26.10.2024.
//

import SwiftUI

struct GaugeCircularSizeExample: View {
    
    @State private var progress = 0.25
    
    var body: some View {
        VStack(spacing: 50.0) {
            Gauge(value: progress) {
                Text("Level")
            }
            .gaugeStyle(.accessoryCircular)
            .tint(.orange)
            .scaleEffect(4)
            .frame(width: 250, height: 200)
            //        You can use the scale
            //        effect to increase the size
            //        of the gauge but the text
            //        becomes blurred.
            Gauge(value: progress, label: {})
                .gaugeStyle(.accessoryCircular)
                .tint(.orange)
                .scaleEffect(4)
                .frame(width: 250, height: 200)
                .overlay(alignment: .bottom) {
                    Text("Level")
                    //        For sharper text, you can
                    //        overlay it and align a Text
                    //        view to the bottom of the
                    //        gauge.
                        .font(.largeTitle)
                }
        }
    }
}

#Preview {
    GaugeCircularSizeExample()
}
