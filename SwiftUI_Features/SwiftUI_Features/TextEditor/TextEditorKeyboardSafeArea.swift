//
//  TextEditorKeyboardSafeArea.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.12.2024.
//

import SwiftUI

struct TextEditorKeyboardSafeArea: View {
    @State private var text = ""
    var body: some View {
        VStack(spacing: 20) {
            //    TextEditors will automatically move into view when the keyboard appears. The keyboard adjusts the safe area so it will not cover views
            
            Spacer()
            Button(action: {
                self.hideKeyboard()
            }) {
                Image(systemName: "keyboard.chevron.compact.down")
            }
            TextEditor(text: $text)
                .frame(height: 200)
                .padding(4)
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color.pink))
                .padding(.horizontal)
            Spacer()
        }
        .font(.title)
        .tint(.pink)
    }
}

#Preview {
    TextEditorKeyboardSafeArea()
}
