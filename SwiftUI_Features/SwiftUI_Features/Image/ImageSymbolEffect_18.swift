//
//  ImageSymbolEffect_18.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.12.2024.
//

import SwiftUI

@available(iOS 18.0, *)
struct ImageSymbolEffect_18: View {
    var body: some View {
        List {
            Label { Text("Breathe")
            } icon: {
                Image(systemName: "heart.fill")
                    .foregroundStyle(.red)
                    .symbolEffect(.breathe)
//                iOS 18
//                Here are more symbol
//                effects you can use.
            }
            Label {
                Text("Rotate")
            } icon: {
                Image(systemName: "arrow.circlepath")
                    .foregroundStyle(.green)
                    .symbolEffect(.rotate)
            }
            Label { Text("Wiggle")
            } icon: {
                Image(systemName: "eraser.fill")
                    .foregroundStyle(.pink.opacity(0.5))
                    .symbolEffect(.wiggle)
            }
        }
        .listStyle(.plain)
        .listRowSpacing(60)
        .font(.title)
    }
}

#Preview {
    if #available(iOS 18.0, *) {
        ImageSymbolEffect_18()
    } else {
        // Fallback on earlier versions
    }
}
