//
//  TextEditorBackground.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.12.2024.
//

import SwiftUI

struct TextEditorBackground: View {
    @State private var text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    
    var body: some View {
        VStack(spacing: 16.0) {
            TextEditor(text: $text)
                .scrollContentBackground(.hidden)
            //    Here are 2 different ways to apply a background to a TextEditor. Both solutions rely on the scrollContentBackground modifier.
                .padding()
                .background(.indigo.opacity(0.2), in: .rect(cornerRadius: 8))
            GroupBox {
                TextEditor(text: $text)
                    .scrollContentBackground(.hidden)
            }
            .backgroundStyle(.teal.opacity(0.2))
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    TextEditorBackground()
}
