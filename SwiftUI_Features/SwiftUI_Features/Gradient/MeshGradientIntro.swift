//
//  MeshGradientIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.12.2024.
//

import SwiftUI

struct MeshGradientIntro: View {
    var body: some View {
        if #available(iOS 18.0, *) {
            MeshGradient(width: 2, height: 2, points: [[0,0], [1, 0], [0,1], [1,1]], colors: [.red, .blue, .yellow, .purple])
                .ignoresSafeArea()
        }
    }
}

#Preview {
    MeshGradientIntro()
}
