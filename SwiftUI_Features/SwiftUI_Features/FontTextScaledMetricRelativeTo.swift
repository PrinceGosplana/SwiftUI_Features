//
//  FontTextScaledMetricRelativeTo.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 24.11.2024.
//

import SwiftUI

struct FontTextScaledMetricRelativeTo: View {
    
    @ScaledMetric(wrappedValue: 44, relativeTo: .largeTitle) private var scaleSmall: CGFloat
    @ScaledMetric(wrappedValue: 44, relativeTo: .caption2) private var scaleLarge: CGFloat
    
    var body: some View {
        VStack(spacing: 20) {
            //  Set the relativeTo parameter to control how much the value increases or decreases.
            //  Hint: Smaller sizes scale more and smaller sizes scale more.",
            Text("Scale This Text Less")
                .font(.system(size: scaleSmall))
            Text("Scale This Text More")
                .font(.system(size: scaleLarge))
        }
        .font(.title)
    }
}

#Preview {
    FontTextScaledMetricRelativeTo()
}
