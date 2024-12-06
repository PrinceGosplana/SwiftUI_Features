//
//  TextFieldAutocapitalization.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.12.2024.
//

import SwiftUI

struct TextFieldAutocapitalization: View {
    @State private var textFieldData1 = ""
    @State private var textFieldData2 = ""
    @State private var textFieldData3 = ""
    @State private var textFieldData4 = ""
    var body: some View {
        VStack(spacing: 50) {
            Text("Words")
            TextField("First & Last Name", text: $textFieldData1)
                .textInputAutocapitalization(.words)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            Text("Sentences (default)")
            TextField("Bio", text: $textFieldData2)
                .textInputAutocapitalization(.sentences)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            Text("Never")
            TextField("Web Address", text: $textFieldData3)
                .textInputAutocapitalization(.never)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            Text("Characters")
            TextField("Country Code", text: $textFieldData4)
                .textInputAutocapitalization(.characters)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            //        When a user starts typing into a TextField, the
            //    first word in each sentence is always
            //    capitalized. You can change this behavior with
            //    the textInputAutocapitalization modifier.
        }
    }
}

#Preview {
    TextFieldAutocapitalization()
}
