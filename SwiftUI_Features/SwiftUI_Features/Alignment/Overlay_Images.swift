//
//  Overlay_Images.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.01.2025.
//

import SwiftUI

struct Overlay_Images: View {
    var body: some View {
        Image(.previewSample3)
            .resizable()
            .overlay(alignment: .bottom) {
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.5)
            }
            .overlay(alignment: .bottom) {
                Text("Canyonlands")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding(.bottom)
            }
    }
}

#Preview {
    Overlay_Images()
}
