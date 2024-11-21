//
//  FontFormatting.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 21.11.2024.
//

import SwiftUI

struct FontFormatting: View {
    @State private var modifierActive = true
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Image("Bold")
                Text("Bold").bold()
            }
            HStack {
                Image("Italic")
                Text("Italic").italic()
            }
            HStack {
                Image("Strikethrough")
                Text("Strikethrough").strikethrough()
            }
            HStack {
                Image("Strikethrough")
                Text("Green Strikethrough")
                    .strikethrough(modifierActive, color: .green)
            }
            HStack {
            }
            HStack {
            }
            HStack {
                Image("ForegroundStyle")
                Text("Text Color (ForegroundStyle)").foregroundStyle(.green)
                Image("Underline")
                Text("Underline").underline()
                Image("Underline")
                Text("Green Underline").underline(modifierActive, color: .green)
            }
            Toggle("Modifiers Active", isOn: $modifierActive)
        }
    }
}

#Preview {
    FontFormatting()
}
