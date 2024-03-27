//
//  MulticolorSymbolsView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 27.03.2024.
//

import SwiftUI

struct MulticolorSymbolsView: View {
    var body: some View {
        Image(systemName: "rainbow")
            .symbolRenderingMode(.multicolor)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 250)
        /// animate symbol
            .symbolEffect(
                .variableColor
                    .iterative // animate only once
                    .reversing
            )
    }
}

#Preview {
    MulticolorSymbolsView()
}
