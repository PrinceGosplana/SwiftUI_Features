//
//  MeshGradientBackground.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.12.2024.
//

import SwiftUI

struct MeshGradientBackground: View {
    var body: some View {
        if #available(iOS 18.0, *) {
            MeshGradient(width: 2, height: 2, points: [[0,0], [1, 0], [0.5, 0], [1,1]], colors: [.red, .blue, .yellow, .purple], background: .cyan)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    MeshGradientBackground()
}
