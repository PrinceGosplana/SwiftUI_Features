//
//  RoundedCornersonImages.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.01.2025.
//

import SwiftUI

struct RoundedCornersonImages: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Rounded Borders on Images")
                .font(.title).foregroundStyle(.gray)
            
            Text("Images act differently when you try to add a RoundedRectangle with a border to their background.")
            Image(.coffee)
                .background(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.purple, lineWidth: 8))
            Text("The border is behind the image. Let's use an overlay instead.")
            Image(.coffee)
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.purple, lineWidth: 5))
            Text("You can see the corners of the image still. You need to mask the image.")
            Image(.coffee)
                .mask(RoundedRectangle(cornerRadius: 21))
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.purple, lineWidth: 5))
        }
        .font(.title)
    }
}

#Preview {
    RoundedCornersonImages()
}
