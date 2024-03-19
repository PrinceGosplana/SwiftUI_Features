//
//  GlassBackgroundView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 19.03.2024.
//

import SwiftUI

struct GlassBackgroundView: View {
    var body: some View {
        HomeGlassView()
            .preferredColorScheme(.dark)
    }
}

#Preview {
    GlassBackgroundView()
}
