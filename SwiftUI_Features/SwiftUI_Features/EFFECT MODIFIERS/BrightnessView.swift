//
//  BrightnessView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 11.01.2025.
//

import SwiftUI

struct BrightnessView: View {
    var body: some View {
        Text("You can use the Brightness modifier to change colors, images or views so they are brighter. Valid values are from 0 (no effect) to 1 (full effect).")
            .padding()
            .background(
                RoundedCorners(cornerRadius: 15)
                    .fill(Color.cyan)
            )
        HStack {
        Color.red
        .frame(width: 50, height: 50)
        .brightness(0)
        .overlay(Text("0%"))
        Color.red
        .frame(width: 50, height: 50)
        .brightness(0.2)
        .overlay(Text("20%"))
        Color.red
        .frame(width: 50, height: 50)
        .brightness(0.4)
        .overlay(Text("40%"))
        Color.red
        .frame(width: 50, height: 50)
        .brightness(0.6)
        .overlay(Text("60%"))
        Color.red
        .frame(width: 50, height: 50)
        .brightness(0.8)
        .overlay(Text("80%"))
        Color.red
        .frame(width: 50, height: 50)
        .brightness(1)
        .overlay(Text("100%"))
        }
    }
}

#Preview {
    BrightnessView()
}
