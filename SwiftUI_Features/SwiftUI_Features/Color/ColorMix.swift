//
//  ColorMix.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 15.12.2024.
//

import SwiftUI

struct ColorMix: View {
    var body: some View {
        VStack(spacing: 0) {
            if #available(iOS 18.0, *) {
                Rectangle()
                    .fill(Color.green.mix(with: .blue, by: 0))
                Rectangle()
                    .fill(Color.green.mix(with: .blue, by: 0.25))
                Rectangle()
                    .fill(Color.green.mix(with: .blue, by: 0.5))
                Rectangle()
                    .fill(Color.green.mix(with: .blue, by: 0.75))
                Rectangle()
                    .fill(Color.green.mix(with: .blue, by: 1))
            }
        }
            .font(.title)
            .ignoresSafeArea()
    }
}

#Preview {
    ColorMix()
}
