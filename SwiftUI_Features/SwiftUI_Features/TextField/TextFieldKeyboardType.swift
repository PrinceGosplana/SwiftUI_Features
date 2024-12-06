//
//  TextFieldKeyboardType.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.12.2024.
//

import SwiftUI

struct TextFieldKeyboardType: View {
    @State private var textFieldData = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("TextField")
                .font(.largeTitle)
            Text("Keyboard Types")
                .foregroundStyle(.gray)
            Image("KeyboardType")
            Text("Control which keyboard is shown with the keyboardType modifier.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
            TextField("Enter Phone Number", text: $textFieldData)
                .keyboardType(UIKeyboardType.phonePad) // Show keyboard for phone numbers
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            Spacer()
        }.font(.title)
    }
}

#Preview {
    TextFieldKeyboardType()
}
