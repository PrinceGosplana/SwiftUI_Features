//
//  ForegroundStyleView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.01.2025.
//

import SwiftUI

struct ForegroundStyleView: View {
    @State private var slider = 0.5

    var body: some View {
        VStack(spacing: 30) {
            Text("AccentColor").font(.largeTitle)
            Text("Compared to ForegroundStyle").foregroundStyle(.gray)
            Text("Why can't you use foreground color modifier instead? Foreground color will apply to every view that supports it.")
                .frame(maxWidth: .infinity)
                .padding().background(Color.purple)
                .foregroundStyle(.white)
            Button("Button with Purple Accent Color", action: {})
            Button(action: {}) {
                HStack {
                    Image(systemName: "bag.fill.badge.plus")
                    Text("Add to Cart")
                }
            }
            Text("Slider with Purple Accent Color")
            Slider(value: $slider)
            Image(systemName: "gauge")
            Text("Now, all the text and the image views were affected but not the slider.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
        }
        .font(.title)
        .foregroundStyle(.purple)
    }
}

#Preview {
    ForegroundStyleView()
}
