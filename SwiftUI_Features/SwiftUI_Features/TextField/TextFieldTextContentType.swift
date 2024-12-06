//
//  TextFieldTextContentType.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.12.2024.
//

import SwiftUI

struct TextFieldTextContentType: View {
    @State private var text = ""
    
    var body: some View {
        Form {
            TextField("name", text: $text)
                .textContentType(.name)
            TextField("city", text: $text)
                .textContentType(.addressCity)
            TextField("state", text: $text)
                .textContentType(.addressState)
            TextField("email address", text: $text)
                .textContentType(.emailAddress)
            TextField("credit card number", text: $text)
                .textContentType(.creditCardNumber)
            TextField("URL", text: $text)
                .textContentType(.URL)
            TextField("telephone number", text: $text)
                .textContentType(.telephoneNumber)
            TextField("code from text message", text: $text)
                .textContentType(.oneTimeCode)
        }
        .font(.title)
        
    }
}

#Preview {
    TextFieldTextContentType()
}
