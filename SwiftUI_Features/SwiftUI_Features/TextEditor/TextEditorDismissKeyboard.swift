//
//  TextEditorDismissKeyboard.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.12.2024.
//

import SwiftUI

//#if canImport(UIKit)
//extension View {
//    func hideKeyboard() {
//        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil,
//                                        from: nil, for: nil)
//    }
//}
//#endif

struct TextEditorDismissKeyboard: View {
    @State private var text = ""
    var body: some View {
        VStack(spacing: 20) {
            //    You may wonder how to dismiss the keyboard. There is no way to do it in SwiftUI but here is a solution I learned from Paul Hudson

            VStack {
                HStack {
                    Text("Enter comments here")
                    Spacer()
                    Button(action: {
                        self.hideKeyboard()
                    }) {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                }
                TextEditor(text: $text)
                    .font(.title2)
                    .border(Color.secondary.opacity(0.5), width: 1)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextEditorDismissKeyboard()
}
