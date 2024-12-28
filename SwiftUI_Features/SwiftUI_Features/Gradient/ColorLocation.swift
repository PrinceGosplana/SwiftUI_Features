//
//  ColorLocation.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 28.12.2024.
//

import SwiftUI

struct ColorLocation: View {
    var body: some View {
        let gradientColors = Gradient(stops: [
            .init(color: .indigo, location: 0),
            .init(color: .mint, location: 0.75),
            .init(color: .cyan, location: 1)])
        let linearGradient = LinearGradient(gradient: gradientColors,
                                            startPoint: .top,
                                            endPoint: .bottom)
        return VStack(spacing: 20) {
            Text("Linear Gradient").font(.largeTitle)
            Text("Color Location").font(.title).foregroundStyle(.gray)
            Text("By default, colors in a gradient are evenly spaced. But you can customize the color stops or locations when you setup the Gradient object.")
            HStack {
                VStack {
                    Text("0")
                    Spacer()
                    Text("0.75")
                        .padding(.bottom, 50)
                    Text("1")
                }
                Rectangle()
                    .fill(linearGradient)
            }
            .frame(height: 300)
            .padding()
        }
    }
}

#Preview {
    ColorLocation()
}
