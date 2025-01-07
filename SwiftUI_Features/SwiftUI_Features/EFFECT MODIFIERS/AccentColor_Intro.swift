//
//  AccentColor_Intro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.01.2025.
//

import SwiftUI

struct AccentColor_Intro: View {
    @State private var slider = 0.5
    var body: some View {
        VStack(spacing: 30) {
            Text("AccentColor").font(.largeTitle)
            Text("Introduction").foregroundStyle(.gray)
            Text("Accent color is used to indicate to the user that a control can be interacted with. The default accent color is blue.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.purple)
                .foregroundStyle(.white)
            Button("Button with Default Accent Color", action: {})
            Button("Button with Purple Accent Color", action: {})
                .accentColor(.purple) // Change accent color
            Button(action: {}) {
                HStack {
                    Image(systemName: "bag.fill.badge.plus")
                    Text("Add to Cart")
                }
            }
            .accentColor(.purple)
            Text("Slider with Default Accent Color")
            Slider(value: $slider)
            Text("Slider with Purple Accent Color")
            Slider(value: $slider)
                .accentColor(.purple) // Change accent color
        }.font(.title)
    }
}

#Preview {
    AccentColor_Intro()
}
