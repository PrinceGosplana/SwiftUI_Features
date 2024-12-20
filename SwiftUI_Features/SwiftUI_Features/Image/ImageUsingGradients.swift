//
//  ImageUsingGradients.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.12.2024.
//

import SwiftUI

struct ImageUsingGradients: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Text("The foregroundStyle supports more than just colors. You can also apply gradients to symbols too.")
            Image(systemName: "bookmark.circle.fill")
                .font(.system(size: 100))
                .foregroundStyle(
                    LinearGradient(colors: [.blue, .indigo],
                                   startPoint: .top, endPoint: .bottom))
            Image(systemName: "bookmark.circle.fill")
                .font(.system(size: 100))
                .foregroundStyle(
                    LinearGradient(colors: [.blue, .green],
                                   startPoint: .top, endPoint: .bottom),
                    RadialGradient(colors: [.yellow.opacity(0.75), .white],
                                   center: .bottomTrailing,
                                   startRadius: 40, endRadius: 120))
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    ImageUsingGradients()
}
