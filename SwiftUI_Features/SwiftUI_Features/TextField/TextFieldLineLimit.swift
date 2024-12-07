//
//  TextFieldLineLimit.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.12.2024.
//

import SwiftUI

struct TextFieldLineLimit: View {
    @State private var text = "This is some longer text that will cause the text fields to scroll text."
    var body: some View {
        VStack(spacing: 24) {
            TextField("Enter Name", text: $text, axis: .vertical)
                .lineLimit(0)
            //    Surprisingly, you can set lineLimit to zero!
            TextField("Enter Name", text: $text, axis: .vertical)
                .lineLimit(2)
            TextField("Enter Name", text: $text)
                .lineLimit(2)
            //    The text field will not expand without the vertical axis set
            TextField("Enter Name", text: $text, axis: .vertical)
                .lineLimit(3)
            TextField("Enter Name", text: $text, axis: .vertical)
                .lineLimit(4)
            //    Notice that a higher number will not expand the text field unless it is needed.
            TextField("Enter Name", text: $text, axis: .vertical)
                .lineLimit(4...8)
        }
        .textFieldStyle(.roundedBorder)
        .font(.title)
        .padding()
    }
}

#Preview {
    TextFieldLineLimit()
}
