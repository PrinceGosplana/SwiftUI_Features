//
//  BlendMode_Setup.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.01.2025.
//

import SwiftUI

struct BlendMode_Setup: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Blend Mode").font(.largeTitle)
            Text("Setup Code")
                .font(.title).foregroundStyle(.gray)
            Text("To demonstrate how the Blend Mode modifier works, we will be working with these two reusable subviews.")
            BlueRectangle()
            YellowRectangle()
        }
        .padding()
    }
}

struct BlueRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundStyle(.blue)
            .frame(width: 100, height: 100)
            .shadow(radius: 5)
            .overlay(Text("Back Layer").foregroundStyle(.white))
    }
}

struct YellowRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundStyle(.yellow)
            .frame(width: 100, height: 100)
            .shadow(radius: 5)
    }
}

#Preview {
    BlendMode_Setup()
}
