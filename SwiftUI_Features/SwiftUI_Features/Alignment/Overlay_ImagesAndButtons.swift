//
//  Overlay_ImagesAndButtons.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.01.2025.
//

import SwiftUI

struct Overlay_ImagesAndButtons: View {
    var body: some View {
        Image(.coffee)
            .overlay(alignment: .topTrailing) {
                Button {
                } label: {
                    Image(systemName: "x.circle.fill")
                        .background(.white, in: .circle)
                        .font(.title)
                }
                .offset(x: 15, y: -15)
            }
    }
}

#Preview {
    Overlay_ImagesAndButtons()
}
