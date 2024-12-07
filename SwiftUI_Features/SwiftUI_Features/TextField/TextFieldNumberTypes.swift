//
//  TextFieldNumberTypes.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.12.2024.
//

import SwiftUI

struct TextFieldNumberTypes: View {
    
    @State private var number = 34
    var body: some View {
        VStack(spacing: 10) {
            //    Use the value and format initializer to bind a TextField with a numeric type.",
            TextField("Age", value: $number, format: .number)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding(.horizontal)
            TextField("Percent", value: $number, format: .percent)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding(.horizontal)
            TextField("Amount", value: $number, format: .currency(code: "USD"))
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextFieldNumberTypes()
}
