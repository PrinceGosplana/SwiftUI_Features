//
//  ImageSymbolRenderingMode.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.12.2024.
//

import SwiftUI

struct ImageSymbolRenderingMode: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("The symbolRenderingMode modifier gives you more control over how SF Symbols will be drawn.")
            Label("Monochrome", systemImage: "gauge.badge.plus")
                .symbolRenderingMode(.monochrome)
            Label("Multicolor", systemImage: "gauge.badge.plus")
                .symbolRenderingMode(.multicolor)
            Label("Hierarchical", systemImage: "gauge.badge.plus")
                .symbolRenderingMode(.hierarchical)
            Label("Palette", systemImage: "gauge.badge.plus")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.red, .purple.opacity(0.8))
        }
        .font(.title)
    }
}

#Preview {
    ImageSymbolRenderingMode()
}
