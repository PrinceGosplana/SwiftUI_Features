//
//  ImageSymbolEffect.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 20.12.2024.
//

import SwiftUI

struct ImageSymbolEffect: View {
    @State private var start = false
    var body: some View {
        List {
            Label {
                Text("Variable Color")
            } icon: {
                Image(systemName: "previewSample1")
                    .foregroundStyle(.teal)
                    .symbolEffect(.variableColor)
            }
            
            Label {
                Text("Pulse on Exclamation")
            } icon: {
                Image(systemName: "airplayaudio.badge.exclamationmark")
                    .foregroundStyle(.red, .teal)
                    .symbolEffect(.pulse)
            }
            Label { Text("Pulse")
            } icon: {
                Image(systemName: "lightbulb.max.fill")
                    .foregroundStyle(.teal)
                    .symbolEffect(.bounce,
                                  options: .repeating.repeat(2),
                                  value: start)
            }
            Button("Start") {
                start.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        .listStyle(.plain)
        .listRowSpacing(60)
        .font(.title)
        
    }
}

#Preview {
    ImageSymbolEffect()
}
