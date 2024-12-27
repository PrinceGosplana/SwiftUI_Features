//
//  AngularOnOtherControls.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 27.12.2024.
//

import SwiftUI

struct AngularOnOtherControls: View {
    var body: some View {
        let gradient = Gradient(colors: [.pink, .purple, .pink])
        let angularGradient = AngularGradient(gradient: gradient, center: .center,
                                              angle: .degrees(0))
        return VStack(spacing: 20) {
            Text("Angular Gradient").font(.largeTitle)
            Text("On Other Views") .foregroundStyle(.gray)
            Text("Apply angular gradients to control views.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundStyle(Color.white)
            Button(action: {}) {
                Text("Gradient on Background")
                    .foregroundStyle(Color.white)
                    .padding()
            }
            .padding(.horizontal)
            .background(Capsule().fill(angularGradient))
            Button(action: {}) {
                Text("Gradient on Border")
                    .padding()
                    .background(
                        Capsule()
                            .stroke(angularGradient, lineWidth: 3))
            }
        }.font(.title)
    }
}

#Preview {
    AngularOnOtherControls()
}
