//
//  ProgressViewIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 08.11.2024.
//

import SwiftUI

struct ProgressViewIntro: View {
    var body: some View {
        VStack(spacing: 20.0) {
            ProgressView()
            Text("Or can be customize...")
            ProgressView("Loading...")
                .font(Font.system(.title2, design: .monospaced).weight(.bold))
        }
        .font(.title)
    }
}

#Preview {
    ProgressViewIntro()
}
