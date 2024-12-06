//
//  TextFieldAutocorrection.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.12.2024.
//

import SwiftUI

struct TextFieldAutocorrection: View {
    @State private var lastName = ""
    @State private var code = ""
    
    //    You may have noticed that space above some of the
    //    keyboard types that offer autocorrection. You can
    //    turn this off with the autocorrectDisabled modifier.
    var body: some View {
        VStack(spacing: 10) {
            TextField("last name", text: $lastName)
                .autocorrectionDisabled(false) // Default: Offer suggestions (redundant)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            
            TextField("one time unique code", text: $code)
                .autocorrectionDisabled() // Don't offer suggestions
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextFieldAutocorrection()
}
