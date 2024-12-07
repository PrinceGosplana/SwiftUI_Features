//
//  TextFieldAxis.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.12.2024.
//

import SwiftUI

struct TextFieldAxis: View {
    @State private var text = "This is some longer text that will cause the text fields to scroll text."
    var body: some View {
        VStack(spacing: 50.0) {
            Text("Scroll text horizontally")
                .bold()
            TextField("Enter text", text: $text, axis: .horizontal)
                .textFieldStyle(.roundedBorder)
            //    Specify the preferred axis for scrolling when the text goes beyond
            //    the limit of the text field.
            TextField("Enter text", text: $text, axis: .horizontal)
                .textFieldStyle(.plain)
            Text("Scroll text vertically")
                .bold()
            TextField("Enter text", text: $text, axis: .vertical)
                .lineLimit(2)
                .textFieldStyle(.roundedBorder)
            TextField("Enter text", text: $text, axis: .vertical)
                .textFieldStyle(.plain)
                .lineLimit(2)
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    TextFieldAxis()
}
