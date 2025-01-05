//
//  ImageFixedSizes.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 05.01.2025.
//

import SwiftUI

struct ImageFixedSizes: View {
    var body: some View {
        Text("You can use the frame modifier to set fixed sizes.")
        Text("Original Size")
        Image("FemaleProfile")
        Text("Setting the width and height")
        HStack {
            Image(.girlWithKatana).resizable()
                .frame(width: 100, height: 100)
            Image(.girlWithKatana).resizable()
                .frame(width: 75, height: 75)
            Image(.girlWithKatana).resizable()
                .frame(width: 50, height: 50)
        }
        Text("You can combine aspect ratio with frame")
        Image(.girlWithKatana).resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(height: 100)
        Text("Images will stretch to fit the frame you specify")
        Image(.girlWithKatana).resizable()
            .frame(width: 75, height: 50)
        Text("(Photo by: Renato Abati)")
            .font(.caption)
    }
}

#Preview {
    ImageFixedSizes()
}
