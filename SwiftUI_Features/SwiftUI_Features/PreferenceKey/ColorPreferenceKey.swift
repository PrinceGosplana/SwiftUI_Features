//
//  ColorPreferenceKey.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 12.10.2024.
//

import SwiftUI

struct ColorPreferenceKey: PreferenceKey {
    static var defaultValue: Color { .clear }
    
    static func reduce(value: inout Color, nextValue: () -> Color) {
        value = nextValue()
    }
}

struct ColorChildView: View {
    let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .teal, .indigo, .mint]
    @State private var colorValue: Color = .cyan
    let columns = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(colors, id:\.self) { color in
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .frame( height: 100)
                        .foregroundStyle(color)
                        .preference(key: ColorPreferenceKey.self, value: colorValue)
                        .onTapGesture {
                            colorValue = color
                        }
                }
            }
            .padding()
        }
    }
}

struct ColorPreferenceKeyView: View {
    
    @State private var color: Color = .cyan
    
    var body: some View {
        VStack(spacing: 20) {
            ColorChildView()
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .frame(width: 250, height: 60)
                .foregroundStyle(color)
        }
        .onPreferenceChange(ColorPreferenceKey.self) { value in
            color = value
        }
    }
}

#Preview {
    ColorPreferenceKeyView()
}
