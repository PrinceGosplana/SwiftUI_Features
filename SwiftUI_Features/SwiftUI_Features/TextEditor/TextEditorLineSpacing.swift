//
//  TextEditorLineSpacing.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.12.2024.
//

import SwiftUI

struct TextEditorLineSpacing: View {
    @State private var text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    
    var body: some View {
        VStack(spacing: 40) {
            //    Use the lineSpacing modifier to increase or decrease the amount of space between the lines of text
            VStack {
                Text("Line spacing: 20")
                TextEditor(text: $text)
                    .lineSpacing(20)
                    .font(.title2)
                    .frame(height: 200)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 8).stroke())
                Text("Line spacing: -8")
                TextEditor(text: $text)
                    .lineSpacing(-8)
                    .font(.title2)
                    .frame(height: 100)
                    .padding(4)
                    .background(RoundedRectangle(cornerRadius: 8).stroke())
            }
            .padding(.horizontal)
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    TextEditorLineSpacing()
}
