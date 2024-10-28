//
//  HideAndShowLabelComponents.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.10.2024.
//

import SwiftUI

struct HideAndShowLabelComponents: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Label("Automatic", systemImage: "camera.badge.ellipsis")
                .labelStyle(.automatic)
            Label("Icon Only", systemImage: "camera.badge.ellipsis")
                .labelStyle(.iconOnly)
            Label("Title Only", systemImage: "camera.badge.ellipsis")
                .labelStyle(.titleOnly)
            Label("Title & Icon", systemImage: "camera.badge.ellipsis")
                .labelStyle(.titleAndIcon)
        }
        .font(.title)
    }
}

#Preview {
    HideAndShowLabelComponents()
}
