//
//  TextFieldIntro.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 01.12.2024.
//

import SwiftUI

struct TextFieldIntro: View {
    @State private var textFieldData = ""
    var body: some View {
        VStack(spacing: 10) {
            //    It is required to bind text fields to a variable when using them so you can get/set the text. \nBy default, TextFields have a plain
            //    TextFieldStyle that has no visual content to be seen.”,
            
            Image(systemName: "arrow.down.circle")
            TextField("This is a text field", text: $textFieldData)
                .padding(.horizontal)
            Image(systemName: "arrow.up.circle")
            Text("Use .textFieldStyle (.roundedBorder) to show a border.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange)
            TextField(""
                      , text: $textFieldData)
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextFieldIntro()
}
