//
//  TextFieldOnChange.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 07.12.2024.
//

import SwiftUI

struct TextFieldOnChange: View {
    @State private var text = ""
    var body: some View {
        VStack(spacing: 20) {
            //    You can also use the onChange modifier to listen to changes and
            //    react to it. This is how you might use it to limit a user's text input.",
            
            Text("Limit to 10")
            TextField("10 characters", text: $text)
                .onChange(of: text) { _ , newValue in
                    text = String(newValue.prefix(10))
                }
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextFieldOnChange()
}
