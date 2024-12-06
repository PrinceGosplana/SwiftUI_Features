//
//  TextFieldKeyboardSafeArea.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.12.2024.
//

import SwiftUI

struct TextFieldKeyboardSafeArea: View {
    @State private var userName = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image("Logo")
            Spacer()
            //    The keyboard adjusts the safe area so it will not cover views.",
            
            TextField("user name", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            SecureField("password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextFieldKeyboardSafeArea()
}
