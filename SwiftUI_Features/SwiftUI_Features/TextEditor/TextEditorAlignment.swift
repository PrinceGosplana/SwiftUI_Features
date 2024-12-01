//
//  TextEditorAlignment.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.12.2024.
//

import SwiftUI

struct TextEditorAlignment: View {
    
    @State private var text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    var body: some View {
        VStack(spacing: 20) {
            //    By default the alignment is leading. You can change this just as you can change it for the Text view
            VStack {
                TextEditor(text: $text)
                    .multilineTextAlignment(.leading)
                    .font(.title2)
                    .frame(height: 130)
                    .border(Color.secondary.opacity(0.5), width: 1)
                TextEditor(text: $text)
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .frame(height: 130)
                    .border(Color.secondary.opacity(0.5), width: 1)
                TextEditor(text: $text)
                    .multilineTextAlignment(.trailing)
            }
        }
    }
}

#Preview {
    TextEditorAlignment()
}
