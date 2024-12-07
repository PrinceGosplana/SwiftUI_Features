//
//  TextFieldPersonNameComponents.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.12.2024.
//

import SwiftUI

struct TextFieldPersonNameComponents: View {
    @State private var name = PersonNameComponents(givenName: "Matthew",
                                                   middleName: "Robert",
                                                   familyName: "Moeykens")
    var body: some View {
        VStack(spacing: 10) {
            //    Use the value and format initializer to use a TextField with
            //    nonstring types.
            TextField("Short Name", value: $name, format: .name(style: .short))
                .textFieldStyle(.roundedBorder)
            TextField("Medium Name", value: $name, format: .name(style: .medium))
                .textFieldStyle(.roundedBorder)
            TextField("Long Name", value: $name, format: .name(style: .long))
                .textFieldStyle(.roundedBorder)
        }
        .padding(.horizontal)
        .font(.title)
    }
}

#Preview {
    TextFieldPersonNameComponents()
}
