//
//  TextFieldPlaceholder.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.12.2024.
//

import SwiftUI

struct TextFieldPlaceholder: View {
    @State private var textFieldData = ""
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("TextField")
                .font(.largeTitle)
            Text("Title Text (Placeholder or Hint)")
                .foregroundStyle(.gray)
            Text("You can supply title text (placeholder/hint text) through the first parameter to let the user know the purpose of the text field.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange)
            Group {
                TextField("Here is title text", text: $textFieldData)
                    .textFieldStyle(.roundedBorder)
                TextField("User name", text: $username)
                    .textFieldStyle(.roundedBorder)
                TextField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
            }
            .padding(.horizontal)
        }.font(.title)
    }
}

#Preview {
    TextFieldPlaceholder()
}
