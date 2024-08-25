//
//  DEllipseButton.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 25.08.2024.
//

import SwiftUI

struct DEllipseButton: View {
    let image: String

    var body: some View {
        Button {

        } label: {
            Image(systemName: image)
                .resizable()
                .frame(width: 30, height: 30)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.white)
        }
        .buttonStyle(DepthButtonStyle(foregroundColor: .greenPrimary ?? .green, backgroundColor: .greenSecondary ?? .green))
        .frame(width: 80, height: 70)
        .padding()
    }
}

#Preview {
    DEllipseButton(image: DoulingoModel.mock[0].icon)
}
