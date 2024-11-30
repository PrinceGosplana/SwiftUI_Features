//
//  TextEditorIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 30.11.2024.
//

import SwiftUI

struct TextEditorIntro: View {
    @State private var text = ""
    var body: some View {
        VStack(spacing: 20) {
            //    Use the TextEditor to allow the user to enter a body of text that is more than a single line
            VStack {
                Text("Enter comments here")
                TextEditor(text: $text)
                    .font(.title2)
                    .border(Color.secondary.opacity(0.5), width: 1)
                //    Notice you can also
                //    format the font for the
                //    text editor too.
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextEditorIntro()
}
