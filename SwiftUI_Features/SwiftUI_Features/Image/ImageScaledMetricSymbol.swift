//
//  ImageScaledMetricSymbol.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.12.2024.
//

import SwiftUI

struct ImageScaledMetricSymbol: View {
    @ScaledMetric var size: CGFloat = 32
    var body: some View {
        VStack(spacing: 20) {
            Text("Use the ScaledMetric property wrapper to adjust the size of a symbol in relation to the dynamic text size.")
            HStack {
                Image(systemName: "thermometer.sun")
                    .font(.system(size: size))
                Text("Grows with Text")
            }
        }
        .font(.title)
    }
}

#Preview {
    ImageScaledMetricSymbol()
}
