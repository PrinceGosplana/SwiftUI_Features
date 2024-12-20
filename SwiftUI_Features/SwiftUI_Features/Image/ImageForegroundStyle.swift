//
//  ImageForegroundStyle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.12.2024.
//

import SwiftUI

struct ImageForegroundStyle: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("Use the foregroundStyle modifier to specify different colors for a multi-color symbol.")
                .layoutPriority(1)
            List {
                Label("Green", systemImage: "gauge.badge.plus")
                    .foregroundStyle(.indigo)
                Label("Green, Red", systemImage: "gauge.badge.plus")
                    .foregroundStyle(.indigo, .red)
                Label("Green, Red, Yellow", systemImage: "arrow.uturn.backward")
                    .foregroundStyle(.indigo, .red, .yellow)
                Label("Green, Red, Yellow", systemImage: "arrow.uturn.backward.circle")
                    .foregroundStyle(.indigo, .red, .yellow)
                Label("Green, Red, Yellow", systemImage: "arrow.uturn.backward.circle.fill")
                    .foregroundStyle(.indigo, .red, .yellow)
            }
            Text("Hint: Most symbols just use two colors. The second color could be Secondary or Tertiary.")
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    ImageForegroundStyle()
}
