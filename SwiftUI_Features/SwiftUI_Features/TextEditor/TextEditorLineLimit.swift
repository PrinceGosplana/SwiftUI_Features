//
//  TextEditorLineLimit.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.12.2024.
//

import SwiftUI

struct TextEditorLineLimit: View {
    @State private var text = ""
    var body: some View {
        VStack(spacing: 40) {
            //    Use the lineLimit modifier to restrict how much text to allow the user to enter
            
            VStack {
                Text("Enter 2 lines of comments here")
                TextEditor(text: $text)
                    .lineLimit(2)
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
    TextEditorLineLimit()
}
