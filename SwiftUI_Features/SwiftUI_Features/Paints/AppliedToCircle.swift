//
//  AppliedToCircle.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 27.12.2024.
//

import SwiftUI

struct AppliedToCircle: View {
    var body: some View {
        let gradient = Gradient(colors: [.pink, .purple, .pink])
        let angularGradient = AngularGradient(gradient: gradient,
                                              center: .center, angle: .degrees(0))
        return VStack(spacing: 20) {
            Text("Angular Gradient").font(.largeTitle)
            Text("With Circles").font(.title).foregroundStyle(.gray)
            Text("You can fill circular shapes with gradients")
            HStack {
                Circle().fill(angularGradient)
                Ellipse().fill(angularGradient)
                Capsule().fill(angularGradient)
            }.padding(.horizontal)
            Text("You can also apply gradients to strokes")
            HStack {
                Circle().stroke(angularGradient, lineWidth: 10)
                Ellipse().strokeBorder(angularGradient, lineWidth: 10)
                Capsule()
                    .trim(from: 0.25, to: 1)
                    .stroke(angularGradient, style: StrokeStyle(lineWidth: 10,
                                                                lineCap: CGLineCap.round))
            }.padding(.horizontal)
        }
    }
}

#Preview {
    AppliedToCircle()
}
