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
    }
}

#Preview {
    DEllipseButton(image: DoulingoModel.mock[0].icon)
}
