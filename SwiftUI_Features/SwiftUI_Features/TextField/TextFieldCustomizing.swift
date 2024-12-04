//
//  TextFieldCustomizing.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 04.12.2024.
//

import SwiftUI

struct TextFieldCustomizing: View {
    @State private var textFieldWithText = "With Text"
    @State private var textFieldNoText = ""
    @State private var withOutline = "With Outline"
    var body: some View {
        VStack(spacing: 20) {
            Text("TextField").font(.largeTitle)
            Text("Customizing").foregroundStyle(.gray)
            Text("One way to customize TextFields is to add a shape behind one that has no TextFieldStyle set.")
                .frame(maxWidth: .infinity).padding().background(Color.orange)
            TextField("Placeholder Text", text: $textFieldNoText)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(hue: 0.126, saturation: 0.47, brightness: 0.993)))
                .padding()
            TextField("Placeholder Text", text: $withOutline)
                .padding(10)
                .overlay(
                    // Add the outline
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.orange, lineWidth: 2)
                )
                .padding()
            Text("Change text color using the foregroundStyle property.")
                .frame(maxWidth: .infinity).padding().background(Color.orange)
            TextField("first name", text: $textFieldWithText)
                .textFieldStyle(.roundedBorder)
                .foregroundStyle(.orange)
                .padding(.horizontal)
        }.font(.title)
    }
}

#Preview {
    TextFieldCustomizing()
}
