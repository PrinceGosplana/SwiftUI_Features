//
//  BorderGradientView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 10.01.2025.
//

import SwiftUI

struct BorderGradientView: View {
    var body: some View {
        let gradient = Gradient(colors: [.pink, .purple])
        let angularGradient = AngularGradient(gradient: gradient,
                                              center: .center,
                                              angle: .degrees(0))
        let linearGradient = LinearGradient(gradient: gradient,
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing)
        let smallRadial = RadialGradient(gradient: gradient,
                                         center: .center,
                                         startRadius: 0,
                                         endRadius: 100)
        return VStack(spacing: 40) {
            Text("Border").font(.largeTitle)
            Text("With Gradients").foregroundStyle(.gray)
            Text("The first parameter to the border modifier takes a shape style type. Shape styles include gradients.")
            Button(action: {}) {
                Text("Border around a Button")
                    .padding()
            }.border(angularGradient, width: 10)
            Text("Border around Text")
                .padding()
                .border(linearGradient, width: 10)
            Image(.coffee)
                .border(smallRadial, width: 10)
        }.font(.title)
    }
}

#Preview {
    BorderGradientView()
}
