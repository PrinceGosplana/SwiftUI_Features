//
//  TextFieldOnEditingChanged.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 06.12.2024.
//

import SwiftUI

struct TextFieldOnEditingChanged: View {
    @State private var text = ""
    @State private var isEditing = false
    var body: some View {
        VStack(spacing: 20) {
            //    The onEditingChanged even tells you when the text field has the focus or not
            
            Text("Turn border green when editing")
            TextField("10 characters", text: $text) { isEditing in
                self.isEditing = isEditing
            }
            .padding()
            .border(isEditing ? Color.green : Color.gray)
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    TextFieldOnEditingChanged()
}
