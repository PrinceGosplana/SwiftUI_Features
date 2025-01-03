//
//  TextFieldCustomPlaceholder.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.12.2024.
//

import SwiftUI

struct TextFieldCustomPlaceholder: View {
    @State private var textFieldData = ""
    var body: some View {
        VStack(spacing: 40) {
            Text("TextField").font(.largeTitle)
            Text("Custom Placeholder/Hint Text").foregroundStyle(.gray)
            Text("There currently is not a way to customize the placeholder text. You can create your own placeholder text behind the text field.")
            
            Group {
                // First TextField
                ZStack(alignment: .leading) {
                    // Only show custom hint text if there is no text entered
                    if textFieldData.isEmpty {
                        Text("Enter name here").bold()
                            .foregroundStyle(Color(.systemGray4))
                    }
                    TextField("", text: $textFieldData)
                }
                .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
                .overlay(
                    // Add the outline
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.orange, lineWidth: 2))
                // Second TextField
                ZStack(alignment: .leading) {
                    if textFieldData.isEmpty {
                        Text("Email Address").italic()
                            .foregroundStyle(.orange)
                            .opacity(0.4)
                    }
                    TextField("", text: $textFieldData)
                }
                .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1))
            }.padding(.horizontal)
        }.font(.title)
    }
}

#Preview {
    TextFieldCustomPlaceholder()
}
