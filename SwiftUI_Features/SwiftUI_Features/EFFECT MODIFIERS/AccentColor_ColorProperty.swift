//
//  AccentColor_ColorProperty.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.01.2025.
//

import SwiftUI

struct AccentColor_ColorProperty: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("You can also access the accent color defined in the Asset catalog through the Color's dedicated 'accentColor` property.")
            Circle()
                .fill(Color.accentColor)
                .overlay(Image(systemName: "candybarphone")
                    .font(Font.system(size: 150, weight: .thin))
                    .foregroundStyle(.white))
                .frame(width: 200)
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    AccentColor_ColorProperty()
}
