//
//  RadialGradientStartRadius.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.12.2024.
//

import SwiftUI

struct RadialGradientStartRadius: View {
    @State private var startRadius: CGFloat = 10.0
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.white, .indigo]),
                           center: UnitPoint.center, startRadius: startRadius, endRadius: 320)
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("RadialGradient").font(.largeTitle)
                Text("Start Radius").foregroundStyle(.gray)
                Text("Radius measures the distance from the center of a circle on outward. You set a startRadius to determine how far the first color should expand out from the center.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.cyan)
                    .foregroundStyle(.white)
                Spacer()
                Text("Start Radius: \(Int(startRadius))")
                HStack {
                    Text("0")
                    Slider(value: $startRadius, in: 0...250)
                    Text("250")
                }.padding()
            }
            .foregroundStyle(.white)
            .font(.title)
        }
    }
}

#Preview {
    RadialGradientStartRadius()
}
