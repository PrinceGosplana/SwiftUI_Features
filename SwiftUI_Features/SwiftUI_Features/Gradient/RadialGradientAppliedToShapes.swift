//
//  RadialGradientAppliedToShapes.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.12.2024.
//

import SwiftUI

struct RadialGradientAppliedToShapes: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.white, .purple]),
                           center: .center, startRadius: 10, endRadius: 420)
            .ignoresSafeArea()
            VStack(spacing: 40) {
                Rectangle()
                    .fill(RadialGradient(gradient: Gradient(colors: [.white,
                                                                     .cyan]),
                                         center: .bottomTrailing, startRadius: 0,
                                         endRadius: 15))
                    .frame(width: 80, height: 80)
                    .rotationEffect(.degrees(45))
                    .shadow(color: .gray, radius: 20, x: 0, y: 20)
                    .padding(30)
                Text("RadialGradient").font(.largeTitle)
                Text("Applied to Shapes").foregroundStyle(.gray)
                Text("Like all gradients, radial gradients implement the ShapeStyle protocol. This means it can be applied to shapes using the fill modifier. A new radial gradient is applied to the rectangle above.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.purple)
                    .foregroundStyle(.white)
                Spacer()
            }
            .foregroundStyle(Color("Theme5DarkShadeColor"))
            .font(.title)
        }
    }
}

#Preview {
    RadialGradientAppliedToShapes()
}
