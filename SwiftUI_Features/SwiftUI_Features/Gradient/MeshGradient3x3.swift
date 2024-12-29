//
//  MeshGradient3x3.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.12.2024.
//

import SwiftUI

struct MeshGradient3x3: View {
    var body: some View {
        if #available(iOS 18.0, *) {
            MeshGradient(width: 3, height: 3, points: [[0,0], [0.5, 0], [1, 0],
                                                       [0,0.5], [0.5, 0.5], [1, 0.5], [0, 1], [0.5, 1], [1, 1]], colors: [.red, .blue, .green, .yellow, .clear, .brown, .pink, .purple, .black], background: .cyan)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    MeshGradient3x3()
}
