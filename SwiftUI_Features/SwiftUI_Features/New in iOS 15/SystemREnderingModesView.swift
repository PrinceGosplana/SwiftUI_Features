//
//  SystemREnderingModesView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 30.08.2024.
//

import SwiftUI

struct SystemREnderingModesView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "brain.head.profile")
                .font(.largeTitle)
            // for system rendering mode
                .symbolRenderingMode(.palette)
                .foregroundStyle(.orange, .purple, .red)

            Image(systemName: "person")
                .font(.system(size: 55))
                .symbolVariant(.fill)
        }
    }
}

#Preview {
    SystemREnderingModesView()
}
