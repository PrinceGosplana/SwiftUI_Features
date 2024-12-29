//
//  RadialGradientEndRadius.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.12.2024.
//

import SwiftUI

struct RadialGradientEndRadius: View {
    @State private var endRadius: CGFloat = 200.0
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.white, .mint]),
                           center: UnitPoint.center,
                           startRadius: 10,
                           endRadius: endRadius)
            .ignoresSafeArea()
            VStack(spacing: 20) {
                Text("RadialGradient").font(.largeTitle)
                Text("End Radius").foregroundStyle(.gray)
                Text("The end radius determines the distance of the gradient from the start radius.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.pink)
                    .foregroundStyle(.white)
                Spacer()
                Text("End Radius: \(Int(endRadius))")
                HStack {
                    Text("50")
                    Slider(value: $endRadius, in: 50...400)
                    Text("400")
                }.padding()
            }
            .foregroundStyle(.black)
            .font(.title)
        }
    }
}

#Preview {
    RadialGradientEndRadius()
}
