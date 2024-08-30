//
//  NewForegroundStyleView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 30.08.2024.
//

import SwiftUI

/// The only difference is just opacity for each level

struct NewForegroundStyleView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Primary")
                .font(.title)
                .foregroundStyle(.primary)
            Text("Secondary")
                .font(.title)
                .foregroundStyle(.secondary)
            Text("Tertiary")
                .font(.title)
                .foregroundStyle(.tertiary)
            Text("Quaternary")
                .font(.title)
                .foregroundStyle(.quaternary)
        }
        .foregroundStyle(.cyan)
    }
}

#Preview {
    NewForegroundStyleView()
}
