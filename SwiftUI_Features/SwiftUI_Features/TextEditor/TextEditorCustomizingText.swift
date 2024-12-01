//
//  TextEditorCustomizingText.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.12.2024.
//

import SwiftUI

struct TextEditorCustomizingText: View {
    @State private var text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    var body: some View {
        VStack(spacing: 40) {
            //    You can apply other modifiers that you usually use for the text view to the TextEditor to customize the text
            VStack {
                Text("Enter comments here")
                TextEditor(text: $text)
                    .font(Font.system(size: 20, weight: .thin, design: .serif))
                    .foregroundStyle(.cyan)
                    .background(Color.red)
                    .border(Color.secondary.opacity(0.5), width: 1)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextEditorCustomizingText()
}
