//
//  Opacitylpha.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 13.12.2024.
//

import SwiftUI

struct Opacitylpha: View {
    var body: some View {
        ZStack {
            Color.purple
            VStack(spacing: 20) {
                Text("Color")
                    .font(.largeTitle)
                Text("Opacity")
                    .font(.title)
                    .colorInvert()
                Text("There are a couple ways to adjust color opacity. You can use the Inspector and create a custom color to adjust the opacity there. This black background's opacity is at 25%.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(hue: 0.79, saturation: 0.0, brightness: 0.0, opacity: 0.25))
                    .font(.title)
            }
        }
        .ignoresSafeArea(edges: .vertical)
    }
}

#Preview {
    Opacitylpha()
}
