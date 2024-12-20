//
//  TextFieldFontSize.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 03.12.2024.
//

import SwiftUI

struct TextFieldFontSize: View {
    @State private var textFieldData = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("TextField").font(.largeTitle)
            Text("With Text Modifiers").foregroundStyle(.gray)
            Image("Font")
            Text("To change the size of the font used within the TextField, you just need to use the font modifier.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
            Group {
                TextField("first name", text: $textFieldData)
                    .textFieldStyle(.roundedBorder)
                TextField("first name", text: $textFieldData)
                    .font(Font.system(size: 36, design: .monospaced))
                    .textFieldStyle(.roundedBorder)
                TextField("first name", text: $textFieldData)
                    .font(Font.system(size: 20, design: Font.Design.serif))
                    .textFieldStyle(.roundedBorder)
            }
            .padding(.horizontal)
            Text("Notice this also changes the placeholder or hint text in the text field.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
        }.font(.title)
    }
}

#Preview {
    TextFieldFontSize()
}
