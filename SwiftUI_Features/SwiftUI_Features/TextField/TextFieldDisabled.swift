//
//  TextFieldDisabled.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.12.2024.
//

import SwiftUI

struct TextFieldDisabled: View {
    @State private var lastName = "Moeykens"
    @State private var city = "Salt Lake City"
    @State private var disabled = false
    
    var body: some View {
        VStack(spacing: 10) {
            Text("TextField").font(.largeTitle)
            Text("Disabled").foregroundStyle(.gray)
            Image("Disabled")
            Text("You may need to conditionally enable/disable text fields. Just use thedisabled modifier.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
            Toggle("Keep Info Private", isOn: $disabled)
                .padding(.horizontal)
            Group {
                TextField("Enter Last Name", text: $lastName)
                TextField("Enter City", text: $city)
            }
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
            .disabled(disabled) // Don't allow to edit when disabled
            .opacity(disabled ? 0.5 : 1) // Fade out when disabled
            Spacer()
        }
    }
}

#Preview {
    TextFieldDisabled()
}
