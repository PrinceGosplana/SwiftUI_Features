//
//  BackgroundHierarchical.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.01.2025.
//

import SwiftUI

struct BackgroundHierarchical: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "02.square")
                .foregroundStyle(.ultraThickMaterial)
                .padding()
                .background(.secondary)
                .padding()
                .background(.secondary)
                .padding()
                .background(.secondary)
            //        Use hierarchical styles with the background modifier to create levels of depth.
            Image(systemName: "03.square")
                .foregroundStyle(.ultraThickMaterial)
                .padding()
                .background(.tertiary)
                .padding()
                .background(.tertiary)
                .padding()
                .background(.tertiary)
            Image(systemName: "04.square")
                .foregroundStyle(.ultraThickMaterial)
                .padding()
                .background(.quaternary)
                .padding()
                .background(.quaternary)
                .padding()
                .background(.quaternary)
        }
        .font(.title)
    }
}

#Preview {
    BackgroundHierarchical()
}
